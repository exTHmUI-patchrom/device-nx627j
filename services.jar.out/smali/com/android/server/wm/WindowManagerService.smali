.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$LocalService;,
        Lcom/android/server/wm/WindowManagerService$MousePositionTracker;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$AppFreezeListener;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;,
        Lcom/android/server/wm/WindowManagerService$SettingsObserver;,
        Lcom/android/server/wm/WindowManagerService$RotationWatcher;,
        Lcom/android/server/wm/WindowManagerService$UpdateAnimationScaleMode;
    }
.end annotation


# static fields
.field public static final ACTION_DISPLAY_CUTOUT_CHANGED:Ljava/lang/String; = "android.app.action.DISPLAY_CUTOUT_CHANGED"

.field private static final ALWAYS_KEEP_CURRENT:Z = true

.field private static final ANIMATION_DURATION_SCALE:I = 0x2

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field private static final DENSITY_OVERRIDE:Ljava/lang/String; = "ro.config.density_override"

.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x1f4

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final LAYER_OFFSET_THUMBNAIL:I = 0x4

.field static final LAYOUT_REPEAT_THRESHOLD:I = 0x4

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field static final PROFILE_ORIENTATION:Z = false

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field static final SEAMLESS_ROTATION_TIMEOUT_DURATION:I = 0x7d0

.field private static final SIZE_OVERRIDE:Ljava/lang/String; = "ro.config.size_override"

.field public static final STATE_FREEFORM:I = 0x1

.field public static final STATE_FREEFORM_EXITING:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TRANSITION_ANIMATION_SCALE:I = 0x1

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WINDOWS_FREEZING_SCREENS_ACTIVE:I = 0x1

.field static final WINDOWS_FREEZING_SCREENS_NONE:I = 0x0

.field static final WINDOWS_FREEZING_SCREENS_TIMEOUT:I = 0x2

.field private static final WINDOW_ANIMATION_SCALE:I = 0x0

.field static final WINDOW_FREEZE_TIMEOUT_DURATION:I = 0x7d0

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final WINDOW_REPLACEMENT_TIMEOUT_DURATION:I = 0x7d0

.field static final localLOGV:Z = false

.field static mFocusingWindow:Lcom/android/server/wm/WindowState;

.field static mIsFactoryTest:Z

.field public static sFreeformState:I

.field private static sInstance:Lcom/android/server/wm/WindowManagerService;

.field static sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;


# instance fields
.field mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field final mActivityManager:Landroid/app/IActivityManager;

.field final mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field final mAllowAnimationsInLowPowerMode:Z

.field final mAllowBootMessages:Z

.field mAllowTheaterModeWakeFromLayout:Z

.field final mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mAnimationHandler:Landroid/os/Handler;

.field final mAnimationTransferMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/AnimationAdapter;",
            "Lcom/android/server/wm/SurfaceAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationsDisabled:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field private mAnimatorDurationScaleSetting:F

.field final mAppFreezeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$AppFreezeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mAppOps:Landroid/app/AppOpsManager;

.field final mAppTransition:Lcom/android/server/wm/AppTransition;

.field mAppsFreezingScreen:I

.field mBootAnimationStopped:Z

.field final mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

.field mClientFreezingScreen:Z

.field final mClosingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentProfileIds:[I

.field mCurrentUserId:I

.field mDeferredRotationPauseCount:I

.field final mDestroyPreservedSurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mDisableTransitionAnimation:Z

.field mDisplayEnabled:Z

.field mDisplayFreezeTime:J

.field mDisplayFrozen:Z

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mDisplayReady:Z

.field final mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

.field mDockedStackCreateBounds:Landroid/graphics/Rect;

.field mDockedStackCreateMode:I

.field final mDragDropController:Lcom/android/server/wm/DragDropController;

.field final mDrawLockTimeoutMillis:J

.field mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

.field private mEnterAnimId:I

.field private mEventDispatchingEnabled:Z

.field private mExitAnimId:I

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mFocusingActivity:Ljava/lang/String;

.field mForceDisplayEnabled:Z

.field final mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForceResizableTasks:Z

.field private mFrozenDisplayId:I

.field final mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

.field final mHasPermanentDpad:Z

.field private mHasWideColorGamutSupport:Z

.field final mHaveInputMethods:Z

.field private mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHoldingScreenOn:Lcom/android/server/wm/Session;

.field private mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field mInTouchMode:Z

.field final mInputManager:Lcom/android/server/input/InputManagerService;

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field mIsTouchDevice:Z

.field private final mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

.field mKeyguardGoingAway:Z

.field mKeyguardOrAodShowingOnDefaultDisplay:Z

.field mLastANRState:Ljava/lang/String;

.field mLastDispatchedSystemUiVisibility:I

.field mLastDisplayFreezeDuration:I

.field mLastFinishedFreezeSource:Ljava/lang/Object;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastStatusBarVisibility:I

.field mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

.field mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mMaxUiWidth:I

.field mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

.field final mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mOnlyCore:Z

.field final mOpeningApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field private mPerf:Landroid/util/BoostFramework;

.field final mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field private mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

.field public mRemoteCloseAni:Z

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRoot:Lcom/android/server/wm/RootWindowContainer;

.field private mRotatingSeamlessly:Z

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$RotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field private final mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field final mScreenRect:Landroid/graphics/Rect;

.field private mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

.field private mSeamlessRotationCount:I

.field final mSessions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

.field mShowAlertWindowNotifications:Z

.field mShowingBootMessages:Z

.field mSkipAppTransitionAnimation:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSupportsPictureInPicture:Z

.field final mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

.field mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

.field private mSurfaceNotifier:Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;

.field mSwitchingUser:Z

.field mSystemBooted:Z

.field mSystemDecorLayer:I

.field final mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

.field final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field private mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

.field final mTmpFloats:[F

.field final mTmpRect:Landroid/graphics/Rect;

.field final mTmpRect2:Landroid/graphics/Rect;

.field final mTmpRect3:Landroid/graphics/Rect;

.field final mTmpRectF:Landroid/graphics/RectF;

.field final mTmpTransform:Landroid/graphics/Matrix;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

.field mTransactionSequence:I

.field private mTransitionAnimationScaleSetting:F

.field final mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mVr2dDisplayId:I

.field mWaitingForConfig:Z

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForDrawnCallback:Ljava/lang/Runnable;

.field final mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

.field mWatermark:Lcom/android/server/wm/Watermark;

.field private final mWinAddedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowAnimationScaleSetting:F

.field private mWindowAnimatorHandler:Landroid/os/Handler;

.field private mWindowAnimatorHandlerThread:Landroid/os/HandlerThread;

.field final mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowMap:Lcom/android/server/wm/WindowHashMap;

.field final mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

.field final mWindowReplacementTimeouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowTracing:Lcom/android/server/wm/WindowTracing;

.field mWindowsChanged:Z

.field mWindowsFreezingScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 311
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerService;->mIsFactoryTest:Z

    .line 853
    new-instance v1, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;-><init>()V

    sput-object v1, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    .line 3153
    sput v0, Lcom/android/server/wm/WindowManagerService;->sFreeformState:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "haveInputMethods"    # Z
    .param p4, "showBootMsgs"    # Z
    .param p5, "onlyCore"    # Z
    .param p6, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 980
    invoke-direct/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 409
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    .line 419
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    .line 421
    new-instance v0, Lcom/android/server/wm/WindowManagerService$1;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    new-instance v0, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 458
    const/4 v9, 0x0

    new-array v0, v9, [I

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    .line 489
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    .line 496
    new-instance v1, Lcom/android/server/wm/WindowHashMap;

    invoke-direct {v1}, Lcom/android/server/wm/WindowHashMap;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    .line 502
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    .line 515
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 525
    const/16 v1, 0x14

    new-array v1, v1, [Lcom/android/server/wm/WindowState;

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 537
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    .line 543
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 549
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    .line 573
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 574
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .line 575
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTmpRect2:Landroid/graphics/Rect;

    .line 576
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    .line 577
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    .line 579
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    .line 583
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 584
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 585
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 586
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 587
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    .line 590
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 591
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 600
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    .line 603
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    .line 604
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    .line 606
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    .line 624
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 626
    new-instance v1, Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-direct {v1}, Lcom/android/server/wm/WallpaperVisibilityListeners;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    .line 629
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    .line 630
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    .line 632
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 633
    const-wide/16 v1, 0x0

    iput-wide v1, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 634
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    .line 635
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 636
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 637
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    .line 642
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 644
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 645
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 648
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    .line 650
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    .line 661
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 663
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 664
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 666
    new-instance v1, Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-direct {v1, v6}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 672
    new-instance v1, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v1, v6}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 679
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 681
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 682
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 685
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    .line 691
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 696
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 708
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 713
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 766
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 771
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v6, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 772
    iput v1, v6, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 773
    iput v1, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 774
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    .line 793
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mRemoteCloseAni:Z

    .line 813
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    .line 829
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 830
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 837
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 846
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 856
    sget-object v1, Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

    .line 857
    sget-object v1, Lcom/android/server/wm/-$$Lambda$WindowManagerService$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    .line 859
    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v1}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 899
    new-instance v1, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v1, v6}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 942
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    .line 4855
    new-instance v1, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v1, v6}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 7670
    new-instance v1, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-direct {v1, v8}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>(Lcom/android/server/wm/WindowManagerService$1;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 8439
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 981
    const/4 v1, 0x5

    invoke-static {v6, v1}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 982
    iput-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 983
    move/from16 v10, p3

    iput-boolean v10, v6, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    .line 984
    move/from16 v11, p4

    iput-boolean v11, v6, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    .line 985
    move/from16 v12, p5

    iput-boolean v12, v6, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    .line 986
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v6, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 988
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v6, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    .line 990
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v6, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 992
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v6, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    .line 994
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v6, Lcom/android/server/wm/WindowManagerService;->mAllowAnimationsInLowPowerMode:Z

    .line 996
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v6, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    .line 998
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v6, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    .line 1000
    move-object/from16 v13, p2

    iput-object v13, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 1001
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1002
    new-instance v1, Lcom/android/server/wm/DisplaySettings;

    invoke-direct {v1}, Lcom/android/server/wm/DisplaySettings;-><init>()V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    .line 1003
    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplaySettings;->readSettingsLocked()V

    .line 1005
    move-object/from16 v14, p6

    iput-object v14, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1006
    new-instance v1, Lcom/android/server/wm/WindowAnimator;

    invoke-direct {v1, v6}, Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1007
    new-instance v1, Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {v1, v6}, Lcom/android/server/wm/RootWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1009
    new-instance v1, Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-direct {v1, v6}, Lcom/android/server/wm/WindowSurfacePlacer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 1010
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v1, v6}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 1012
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/WindowTracing;->createDefaultAndStartLooper(Landroid/content/Context;)Lcom/android/server/wm/WindowTracing;

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    .line 1014
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1016
    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_1

    .line 1017
    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v2, "WindowManager"

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v1

    .line 1018
    .local v1, "inputChannel":Landroid/view/InputChannel;
    if-eqz v1, :cond_0

    .line 1019
    new-instance v2, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v2, v1}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    goto :goto_0

    :cond_0
    move-object v2, v8

    :goto_0
    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 1020
    .end local v1    # "inputChannel":Landroid/view/InputChannel;
    goto :goto_1

    .line 1021
    :cond_1
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 1024
    :goto_1
    const-string v1, "display"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1026
    new-instance v1, Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    .line 1028
    const-string/jumbo v1, "power"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1029
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1031
    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_2

    .line 1032
    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v2, v6}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 1050
    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x3

    .line 1051
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    .line 1053
    :cond_2
    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "SCREEN_FROZEN"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 1055
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1057
    new-instance v0, Lcom/android/server/wm/AppTransition;

    invoke-direct {v0, v7, v6}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1058
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1060
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    move-object v15, v0

    .line 1061
    .local v15, "animationHandler":Landroid/animation/AnimationHandler;
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController;

    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1062
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2, v15}, Lcom/android/server/wm/BoundsAnimationController;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 1064
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1065
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1066
    const-string v0, "appops"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1067
    new-instance v0, Lcom/android/server/wm/WindowManagerService$6;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowManagerService$6;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v5, v0

    .line 1073
    .local v5, "opListener":Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v8, v5}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1074
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1, v8, v5}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1076
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1077
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 1078
    .local v4, "suspendPackagesFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1079
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1080
    new-instance v1, Lcom/android/server/wm/WindowManagerService$7;

    invoke-direct {v1, v6}, Lcom/android/server/wm/WindowManagerService$7;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v7

    move-object v3, v4

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    .end local v4    # "suspendPackagesFilter":Landroid/content/IntentFilter;
    .local v18, "suspendPackagesFilter":Landroid/content/IntentFilter;
    move-object/from16 v16, v5

    move-object/from16 v5, v17

    .line 1080
    .end local v5    # "opListener":Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    .local v16, "opListener":Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "window_animation_scale"

    iget v2, v6, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 1095
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "transition_animation_scale"

    .line 1097
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 1095
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 1100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    iget v2, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-direct {v6, v0}, Lcom/android/server/wm/WindowManagerService;->setAnimatorDurationScale(F)V

    .line 1103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v0

    .line 1105
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    const-string v0, "android.app.action.DISPLAY_CUTOUT_CHANGED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1107
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1109
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 1111
    new-instance v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    .line 1113
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000000a

    const-string v2, "WindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1115
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1117
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-direct {v0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>(Landroid/os/PowerManagerInternal;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 1119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    .line 1122
    new-instance v9, Lcom/android/server/wm/TaskPositioningController;

    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v6, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1123
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v17

    move-object v0, v9

    move-object v1, v6

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    .line 1123
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .local v19, "filter":Landroid/content/IntentFilter;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskPositioningController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/wm/InputMonitor;Landroid/app/IActivityManager;Landroid/os/Looper;)V

    iput-object v9, v6, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 1124
    new-instance v0, Lcom/android/server/wm/DragDropController;

    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/android/server/wm/DragDropController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 1126
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$LocalService;

    invoke-direct {v1, v6, v8}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1127
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->onDisplayCutoutChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/WindowManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/WindowManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # F

    .line 298
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/WindowManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wm/WindowManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # F

    .line 298
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/WindowManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 298
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/WindowManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # Z

    .line 298
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateAppOpsState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowManagerService;Landroid/util/ArraySet;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # Landroid/util/ArraySet;
    .param p2, "x2"    # Z

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/WindowManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 298
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wm/WindowManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # F

    .line 298
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return p1
.end method

.method private animationScalesCheck(I)F
    .locals 2
    .param p1, "which"    # I

    .line 3541
    const/high16 v0, -0x40800000    # -1.0f

    .line 3542
    .local v0, "value":F
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-nez v1, :cond_0

    .line 3543
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 3544
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3547
    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    goto :goto_0

    .line 3546
    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto :goto_0

    .line 3545
    :pswitch_2
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    goto :goto_0

    .line 3551
    :cond_0
    const/4 v0, 0x0

    .line 3553
    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static boostPriorityForLockedSection()V
    .locals 1

    .line 862
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->boost()V

    .line 863
    return-void
.end method

.method private checkBootAnimationCompleteLocked()Z
    .locals 4

    .line 3901
    const-string v0, "bootanim"

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3902
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3903
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3906
    const/4 v0, 0x0

    return v0

    .line 3909
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private computeNewConfigurationLocked(I)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "displayId"    # I

    .line 4830
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_0

    .line 4831
    const/4 v0, 0x0

    return-object v0

    .line 4833
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4834
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4835
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 4836
    return-object v0
.end method

.method private createSurfaceControl(Landroid/view/Surface;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I
    .locals 4
    .param p1, "outSurface"    # Landroid/view/Surface;
    .param p2, "result"    # I
    .param p3, "win"    # Lcom/android/server/wm/WindowState;
    .param p4, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 2452
    iget-boolean v0, p3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_0

    .line 2453
    or-int/lit8 p2, p2, 0x4

    .line 2458
    :cond_0
    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "createSurfaceControl"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2459
    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, p3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p4, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2461
    .local v2, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2462
    nop

    .line 2461
    nop

    .line 2463
    if-eqz v2, :cond_1

    .line 2464
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowSurfaceController;->getSurface(Landroid/view/Surface;)V

    .line 2465
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  OUT SURFACE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": copied"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2469
    :cond_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create surface control for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 2473
    :cond_2
    :goto_0
    return p2

    .line 2461
    .end local v2    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method static dipToPixel(ILandroid/util/DisplayMetrics;)I
    .locals 2
    .param p0, "dip"    # I
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 7605
    int-to-float v0, p0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private displayReady(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 4993
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4994
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4995
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    .line 4996
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    .line 4997
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 4998
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5000
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5001
    return-void

    .line 5000
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "useProto"    # Z

    .line 7194
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WindowManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7195
    :cond_0
    const/4 v0, 0x0

    .line 7197
    .local v0, "dumpAll":Z
    const/4 v1, 0x0

    move v8, v0

    move v0, v1

    .line 7198
    .local v0, "opti":I
    .local v8, "dumpAll":Z
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_4

    .line 7199
    aget-object v2, p3, v0

    .line 7200
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1

    .line 7201
    goto/16 :goto_2

    .line 7203
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 7204
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7205
    const/4 v3, 0x1

    .line 7230
    .end local v8    # "dumpAll":Z
    .local v3, "dumpAll":Z
    move v8, v3

    goto/16 :goto_1

    .line 7206
    .end local v3    # "dumpAll":Z
    .restart local v8    # "dumpAll":Z
    :cond_2
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7207
    const-string v1, "Window manager dump options:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7208
    const-string v1, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7209
    const-string v1, "  cmd may be one of:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7210
    const-string v1, "    l[astanr]: last ANR information"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7211
    const-string v1, "    p[policy]: policy state"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7212
    const-string v1, "    a[animator]: animator state"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7213
    const-string v1, "    s[essions]: active sessions"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7214
    const-string v1, "    surfaces: active surfaces (debugging enabled only)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7215
    const-string v1, "    d[isplays]: active display contents"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7216
    const-string v1, "    t[okens]: token list"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7217
    const-string v1, "    w[indows]: window list"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7218
    const-string v1, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7219
    const-string v1, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7220
    const-string v1, "    Window hex object identifier, or"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7221
    const-string v1, "    \"all\" for all windows, or"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7222
    const-string v1, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7223
    const-string v1, "    \"visible-apps\" for the visible app windows."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7224
    const-string v1, "  -a: include all available server state."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7225
    const-string v1, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7226
    return-void

    .line 7228
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7230
    .end local v2    # "opt":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 7232
    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    .line 7233
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7234
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7235
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;Z)V

    .line 7236
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7237
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 7238
    return-void

    .line 7236
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7241
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    :cond_5
    array-length v1, p3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_18

    .line 7242
    aget-object v1, p3, v0

    .line 7243
    .local v1, "cmd":Ljava/lang/String;
    const/4 v3, 0x1

    add-int/lit8 v9, v0, 0x1

    .line 7244
    .end local v0    # "opti":I
    .local v9, "opti":I
    const-string/jumbo v0, "lastanr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_a

    .line 7249
    :cond_6
    const-string/jumbo v0, "policy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_9

    .line 7254
    :cond_7
    const-string v0, "animator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_8

    .line 7259
    :cond_8
    const-string/jumbo v0, "sessions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_7

    .line 7264
    :cond_9
    const-string v0, "displays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_6

    .line 7269
    :cond_a
    const-string/jumbo v0, "tokens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_5

    .line 7274
    :cond_b
    const-string/jumbo v0, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_4

    .line 7279
    :cond_c
    const-string v0, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    .line 7284
    :cond_d
    const-string v0, "containers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7285
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7286
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v4, " "

    invoke-virtual {v2, p2, v4}, Lcom/android/server/wm/RootWindowContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7287
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7288
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerService$AqE2WZrGnYzh1Hsw9rr8IrAEdTY;

    invoke-direct {v4, p2}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$AqE2WZrGnYzh1Hsw9rr8IrAEdTY;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 7289
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7290
    return-void

    .line 7289
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7293
    :cond_e
    move-object v2, p0

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    move v6, v9

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_f

    .line 7294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad window command, or no windows match: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7295
    const-string v0, "Use -h for help."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7297
    :cond_f
    return-void

    .line 7280
    :cond_10
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7281
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 7282
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7283
    return-void

    .line 7282
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7275
    :cond_11
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7276
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 7277
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7278
    return-void

    .line 7277
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7270
    :cond_12
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7271
    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    .line 7272
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7273
    return-void

    .line 7272
    :catchall_4
    move-exception v2

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7265
    :cond_13
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7266
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 7267
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7268
    return-void

    .line 7267
    :catchall_5
    move-exception v2

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7260
    :cond_14
    :goto_7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7261
    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    .line 7262
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7263
    return-void

    .line 7262
    :catchall_6
    move-exception v2

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7255
    :cond_15
    :goto_8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7256
    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 7257
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7258
    return-void

    .line 7257
    :catchall_7
    move-exception v2

    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7250
    :cond_16
    :goto_9
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7251
    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 7252
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7253
    return-void

    .line 7252
    :catchall_8
    move-exception v2

    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7245
    :cond_17
    :goto_a
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7246
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    .line 7247
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7248
    return-void

    .line 7247
    :catchall_9
    move-exception v0

    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 7301
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v9    # "opti":I
    .restart local v0    # "opti":I
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7302
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7303
    if-eqz v8, :cond_19

    .line 7304
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7306
    :cond_19
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    .line 7307
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7308
    if-eqz v8, :cond_1a

    .line 7309
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7311
    :cond_1a
    invoke-direct {p0, p2, p3, v8}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 7312
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7313
    if-eqz v8, :cond_1b

    .line 7314
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7316
    :cond_1b
    invoke-direct {p0, p2, p3, v8}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 7317
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7318
    if-eqz v8, :cond_1c

    .line 7319
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7321
    :cond_1c
    invoke-direct {p0, p2, v8}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    .line 7322
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7323
    if-eqz v8, :cond_1d

    .line 7324
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7326
    :cond_1d
    if-eqz v8, :cond_1e

    .line 7327
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7329
    :cond_1e
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 7330
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7331
    if-eqz v8, :cond_1f

    .line 7332
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7334
    :cond_1f
    invoke-direct {p0, p2, v8}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    .line 7335
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7336
    if-eqz v8, :cond_20

    .line 7337
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7339
    :cond_20
    invoke-direct {p0, p2, v8, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 7340
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7341
    return-void

    .line 7340
    :catchall_a
    move-exception v2

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "attachedWindow"    # Lcom/android/server/wm/WindowState;

    .line 1628
    const/4 v0, 0x1

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 1629
    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    if-lt v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    .line 1634
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1636
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1635
    invoke-virtual {v3, p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1637
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p2, :cond_3

    .line 1641
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v1, :cond_2

    .line 1642
    return v0

    .line 1646
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_1

    .line 1638
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not in UID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1648
    :goto_1
    return v2
.end method

.method private dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 6852
    const-string v0, "WINDOW MANAGER ANIMATOR STATE (dumpsys window animator)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6853
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const-string v1, "    "

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/WindowAnimator;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 6854
    return-void
.end method

.method private dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 7140
    const-string v0, "WINDOW MANAGER LAST ANR (dumpsys window lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7141
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7142
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 7144
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7146
    :goto_0
    return-void
.end method

.method private dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 6847
    const-string v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6848
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v1, "    "

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6849
    return-void
.end method

.method private dumpSessionsLocked(Ljava/io/PrintWriter;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 6871
    const-string v0, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6872
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6873
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    .line 6874
    .local v1, "s":Lcom/android/server/wm/Session;
    const-string v2, "  Session "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 6875
    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6872
    .end local v1    # "s":Lcom/android/server/wm/Session;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6877
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private dumpTokensLocked(Ljava/io/PrintWriter;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 6857
    const-string v0, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6858
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 6859
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6860
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6861
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6862
    const-string v0, "  mOpeningApps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6864
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6865
    const-string v0, "  mClosingApps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6868
    :cond_2
    return-void
.end method

.method private dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z

    .line 7107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7108
    .local v0, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v1, "apps"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string/jumbo v1, "visible"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "visible-apps"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7124
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7125
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 7126
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7109
    :cond_1
    :goto_0
    const-string v1, "apps"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 7110
    .local v1, "appsOnly":Z
    const-string/jumbo v3, "visible"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 7111
    .local v3, "visibleOnly":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7112
    if-eqz v1, :cond_2

    .line 7113
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 7116
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$WindowManagerService$BFlKCXakaED5j-9cdbfdK5Lfsfw;

    invoke-direct {v6, v3, v1, v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$BFlKCXakaED5j-9cdbfdK5Lfsfw;-><init>(ZZLjava/util/ArrayList;)V

    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 7122
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7123
    .end local v1    # "appsOnly":Z
    .end local v3    # "visibleOnly":Z
    nop

    .line 7129
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 7130
    const/4 v1, 0x0

    return v1

    .line 7133
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7134
    invoke-direct {p0, p1, p5, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 7135
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7136
    return v2

    .line 7135
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7122
    .restart local v1    # "appsOnly":Z
    .restart local v3    # "visibleOnly":Z
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 6918
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v0, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6919
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6920
    return-void
.end method

.method private dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 6924
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6926
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 6927
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6928
    const-string v0, "  Hiding System Alert Windows:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6929
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6930
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6931
    .local v3, "w":Lcom/android/server/wm/WindowState;
    const-string v4, "  #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6932
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6933
    if-eqz p2, :cond_0

    .line 6934
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6935
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_1

    .line 6937
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6929
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6941
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 6942
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6943
    const-string v0, "  Remove pending for:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6944
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 6945
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6946
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_2

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6947
    :cond_2
    const-string v4, "  Remove #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6948
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6949
    if-eqz p2, :cond_3

    .line 6950
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6951
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_3

    .line 6953
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6944
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 6958
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 6959
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6960
    const-string v0, "  Windows force removing:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6961
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_4
    if-ltz v0, :cond_7

    .line 6962
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6963
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    const-string v4, "  Removing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6964
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6965
    if-eqz p2, :cond_6

    .line 6966
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6967
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_5

    .line 6969
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6961
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 6973
    .end local v0    # "i":I
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 6974
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6975
    const-string v0, "  Windows waiting to destroy their surface:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6976
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_6
    if-ltz v0, :cond_b

    .line 6977
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6978
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_8

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 6979
    :cond_8
    const-string v4, "  Destroy #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6980
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6981
    if-eqz p2, :cond_9

    .line 6982
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6983
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_7

    .line 6985
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6976
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_a
    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 6990
    .end local v0    # "i":I
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 6991
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6992
    const-string v0, "  Windows losing focus:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6993
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_8
    if-ltz v0, :cond_f

    .line 6994
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6995
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_c

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 6996
    :cond_c
    const-string v4, "  Losing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6997
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6998
    if-eqz p2, :cond_d

    .line 6999
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7000
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_9

    .line 7002
    :cond_d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6993
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_e
    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 7007
    .end local v0    # "i":I
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 7008
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7009
    const-string v0, "  Windows waiting to resize:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7010
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_a
    if-ltz v0, :cond_13

    .line 7011
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 7012
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_10

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 7013
    :cond_10
    const-string v4, "  Resizing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7014
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7015
    if-eqz p2, :cond_11

    .line 7016
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7017
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_b

    .line 7019
    :cond_11
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7010
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_12
    :goto_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 7024
    .end local v0    # "i":I
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 7025
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7026
    const-string v0, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7027
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_c
    if-ltz v0, :cond_14

    .line 7028
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 7029
    .local v2, "win":Lcom/android/server/wm/WindowState;
    const-string v3, "  Waiting #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7027
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 7032
    .end local v0    # "i":I
    :cond_14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7033
    const-string v0, "  mGlobalConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7034
    const-string v0, "  mHasPermanentDpad="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7035
    const-string v0, "  mCurrentFocus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7036
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_15

    .line 7037
    const-string v0, "  mLastFocus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7039
    :cond_15
    const-string v0, "  mFocusedApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7040
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    .line 7041
    const-string v0, "  mInputMethodTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7043
    :cond_16
    const-string v0, "  mInTouchMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7044
    const-string v0, "  mLastDisplayFreezeDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7045
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7046
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v0, :cond_17

    .line 7047
    const-string v0, " due to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7048
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7050
    :cond_17
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7051
    const-string v0, "  mLastWakeLockHoldingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7052
    const-string v0, " mLastWakeLockObscuringWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7053
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7055
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7056
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7057
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7059
    if-eqz p2, :cond_1a

    .line 7060
    const-string v0, "  mSystemDecorLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7061
    const-string v0, " mScreenRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7062
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    if-eqz v0, :cond_18

    .line 7063
    const-string v0, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7064
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7066
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    .line 7067
    const-string v0, "  mInputMethodWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7069
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7070
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7071
    const-string v0, "  mSystemBooted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7072
    const-string v0, " mDisplayEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7074
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V

    .line 7076
    const-string v0, "  mTransactionSequence="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7077
    const-string v0, "  mDisplayFrozen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7078
    const-string v0, " windows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7079
    const-string v0, " client="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7080
    const-string v0, " apps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7081
    const-string v0, " waitingForConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7082
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7083
    .local v0, "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    const-string v1, "  mRotation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7084
    const-string v1, " mAltOrientation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7085
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAltOrientation()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7086
    const-string v1, "  mLastWindowForcedOrientation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7087
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastWindowForcedOrientation()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 7088
    const-string v1, " mLastOrientation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7089
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7090
    const-string v1, "  mDeferredRotationPauseCount="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7091
    const-string v1, "  Animation settings: disabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7092
    const-string v1, " window="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 7093
    const-string v1, " transition="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 7094
    const-string v1, " animator="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 7095
    const-string v1, "  mSkipAppTransitionAnimation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7096
    const-string v1, "  mLayoutToAnim:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7097
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/AppTransition;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7098
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v1, :cond_1a

    .line 7099
    const-string v1, "  mRecentsAnimationController="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7100
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RecentsAnimationController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7103
    .end local v0    # "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1a
    return-void
.end method

.method static excludeWindowTypeFromTapOutTask(I)Z
    .locals 1
    .param p0, "windowType"    # I

    .line 1184
    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_0

    .line 1190
    const/4 v0, 0x0

    return v0

    .line 1188
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .locals 3
    .param p1, "hashCode"    # I

    .line 4783
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 4785
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0

    .line 4788
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4789
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$r4TV5nJBkjzvUCeyV6sY2bt-bEA;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$r4TV5nJBkjzvUCeyV6sY2bt-bEA;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4790
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static fixScale(F)F
    .locals 1
    .param p0, "scale"    # F

    .line 3488
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3489
    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 p0, 0x41a00000    # 20.0f

    .line 3490
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .locals 4
    .param p1, "displayId"    # I

    .line 1610
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1614
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 1615
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1617
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 1618
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/DisplayWindowController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1622
    .end local v1    # "display":Landroid/view/Display;
    :cond_0
    return-object v0
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    .line 4873
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4874
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4875
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 4879
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private getForcedDisplayDensityForUserLocked(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 5927
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5929
    .local v0, "densityStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 5930
    :cond_0
    const-string/jumbo v1, "ro.config.density_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5932
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 5934
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 5935
    :catch_0
    move-exception v1

    .line 5938
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method static getInstance()Lcom/android/server/wm/WindowManagerService;
    .locals 1

    .line 950
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .locals 2
    .param p0, "tokens"    # [Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defUnits"    # I
    .param p3, "defDps"    # I
    .param p4, "dm"    # Landroid/util/DisplayMetrics;

    .line 6511
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 6512
    aget-object v0, p0, p1

    .line 6513
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 6515
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6516
    .local v1, "val":I
    return v1

    .line 6517
    .end local v1    # "val":I
    :catch_0
    move-exception v1

    .line 6521
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    if-nez p2, :cond_1

    .line 6522
    return p3

    .line 6524
    :cond_1
    int-to-float v0, p3

    invoke-static {p2, v0, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 6525
    .local v0, "val":I
    return v0
.end method

.method private initPolicy()V
    .locals 4

    .line 963
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 970
    return-void
.end method

.method private initThread()V
    .locals 2

    .line 1154
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bg_window_animator_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimatorHandlerThread:Landroid/os/HandlerThread;

    .line 1155
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimatorHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1156
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimatorHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimatorHandler:Landroid/os/Handler;

    .line 1157
    return-void
.end method

.method private isAllowedDisableKeyguard(Landroid/app/AppOpsManager;I)Z
    .locals 5
    .param p1, "appOps"    # Landroid/app/AppOpsManager;
    .param p2, "uid"    # I

    .line 3327
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    .line 3328
    return v1

    .line 3331
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 3332
    .local v2, "pks":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 3333
    const/16 v3, 0x54

    aget-object v4, v2, v0

    invoke-virtual {p1, v3, p2, v4}, Landroid/app/AppOpsManager;->noteOpForM(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 3334
    return v1

    .line 3336
    :cond_1
    aget-object v3, v2, v0

    invoke-direct {p0, v3, p2}, Lcom/android/server/wm/WindowManagerService;->isDefaultAllowed(Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 3337
    return v1

    .line 3343
    .end local v2    # "pks":[Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 3341
    :catch_0
    move-exception v1

    .line 3342
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3344
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method private isDefaultAllowed(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1956
    const/4 v0, 0x0

    .line 1958
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v2, p1, v1, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1961
    goto :goto_0

    .line 1959
    :catch_0
    move-exception v2

    .line 1962
    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1963
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v2

    if-nez v3, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.cts"

    .line 1965
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.test"

    .line 1966
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1967
    :cond_0
    return v2

    .line 1970
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, "cn.nubia."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_4

    .line 1971
    :cond_3
    return v2

    .line 1973
    :cond_4
    return v1
.end method

.method private isDownNaviEvent(IIIII)Z
    .locals 3
    .param p1, "rotation"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 7559
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 7560
    add-int/lit8 v2, p4, -0x2a

    if-le p2, v2, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 7561
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 7562
    const/16 v2, 0x2a

    if-ge p2, v2, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 7564
    :cond_3
    add-int/lit8 v2, p5, -0x2a

    if-le p3, v2, :cond_4

    move v0, v1

    nop

    :cond_4
    return v0
.end method

.method private isSystemSecure()Z
    .locals 3

    .line 4495
    const-string v0, "1"

    const-string/jumbo v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string/jumbo v1, "ro.debuggable"

    const-string v2, "0"

    .line 4496
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4495
    :goto_0
    return v0
.end method

.method public static synthetic lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0, p0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    return-object v0
.end method

.method static synthetic lambda$doDump$7(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 7288
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$dumpWindows$6(ZZLjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "visibleOnly"    # Z
    .param p1, "appsOnly"    # Z
    .param p2, "windows"    # Ljava/util/ArrayList;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 7117
    if-eqz p0, :cond_0

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2

    .line 7119
    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7121
    :cond_2
    return-void
.end method

.method static synthetic lambda$findWindow$4(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "hashCode"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 4789
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$isAnyWindowVisibleForUid$5(ILcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "callingUid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 6824
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$main$0(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "im"    # Lcom/android/server/input/InputManagerService;
    .param p2, "haveInputMethods"    # Z
    .param p3, "showBootMsgs"    # Z
    .param p4, "onlyCore"    # Z
    .param p5, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 957
    new-instance v7, Lcom/android/server/wm/WindowManagerService;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V

    sput-object v7, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static synthetic lambda$notifyKeyguardFlagsChanged$1(Lcom/android/server/wm/WindowManagerService;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 3255
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static synthetic lambda$requestAssistScreenshot$2(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "receiver"    # Landroid/app/IAssistDataReceiver;
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 4144
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4146
    goto :goto_0

    .line 4145
    :catch_0
    move-exception v0

    .line 4147
    :goto_0
    return-void
.end method

.method static synthetic lambda$updateNonSystemOverlayWindowsVisibilityIfNeeded$8(ZLcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "hideSystemAlertWindows"    # Z
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 8232
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    .line 8233
    return-void
.end method

.method static synthetic lambda$viewServerListWindows$3(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p0, "windows"    # Ljava/util/ArrayList;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 4561
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4562
    return-void
.end method

.method static logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Landroid/view/SurfaceControl;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1838
    .local v0, "str":Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    return-void
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "withStackTrace"    # Z

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1829
    .local v0, "str":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1830
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1832
    :cond_0
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :goto_0
    return-void
.end method

.method static logWithStack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1842
    const/4 v0, 0x0

    .line 1847
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0, p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1848
    return-void
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "im"    # Lcom/android/server/input/InputManagerService;
    .param p2, "haveInputMethods"    # Z
    .param p3, "showBootMsgs"    # Z
    .param p4, "onlyCore"    # Z
    .param p5, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 956
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 959
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private noteDisplayFreezingState()V
    .locals 2

    .line 8449
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    .line 8450
    .local v0, "ss":Lnubia/os/screenswitch/ScreenSwitchInternal;
    if-eqz v0, :cond_0

    .line 8451
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v0, v1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->noteDisplayFreezingState(Z)V

    .line 8453
    :cond_0
    return-void
.end method

.method private notifyFocusChanged()V
    .locals 4

    .line 4769
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4770
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4771
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4773
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4774
    .local v1, "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    move-object v1, v2

    .line 4775
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4776
    array-length v0, v1

    .line 4777
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4778
    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    .line 4777
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4780
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 4775
    .end local v0    # "N":I
    .end local v1    # "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private notifyWindowsChanged()V
    .locals 4

    .line 4754
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4755
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4756
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4758
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4759
    .local v1, "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    move-object v1, v2

    .line 4760
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4761
    array-length v0, v1

    .line 4762
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4763
    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    .line 4762
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4765
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 4760
    .end local v0    # "N":I
    .end local v1    # "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private onDisplayCutoutChanged()V
    .locals 4

    .line 7393
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$14;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 7399
    return-void
.end method

.method private performEnableScreen()V
    .locals 8

    .line 3827
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3834
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_0

    .line 3835
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3837
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_1

    .line 3838
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3841
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->canDismissBootAnimation()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3842
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3846
    :cond_2
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_3

    .line 3848
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->checkWaitingForWindows()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3849
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3852
    :cond_3
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    const-wide/16 v2, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_4

    .line 3853
    const-string v1, "Stop bootanim"

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 3857
    const-string/jumbo v1, "service.bootanim.exit"

    const-string v6, "1"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3858
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    .line 3861
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3863
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3867
    :cond_5
    :try_start_5
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3868
    .local v1, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v1, :cond_6

    .line 3869
    const-string v6, "WindowManager"

    const-string v7, "******* TELLING SURFACE FLINGER WE ARE BOOTED!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 3871
    .local v6, "data":Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3872
    const/4 v7, 0x0

    invoke-interface {v1, v4, v6, v7, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3874
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3878
    .end local v1    # "surfaceFlinger":Landroid/os/IBinder;
    .end local v6    # "data":Landroid/os/Parcel;
    :cond_6
    goto :goto_0

    .line 3876
    :catch_0
    move-exception v1

    .line 3877
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_6
    const-string v6, "WindowManager"

    const-string v7, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/16 v1, 0x791f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 3881
    const-string v1, "Stop bootanim"

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 3882
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 3886
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    .line 3887
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3890
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->bootAnimationComplete()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 3892
    goto :goto_1

    .line 3891
    :catch_1
    move-exception v0

    .line 3894
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 3897
    invoke-direct {p0, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 3898
    return-void

    .line 3887
    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private postDelayCheck()V
    .locals 4

    .line 3167
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$10;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3173
    return-void
.end method

.method private prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 1680
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1682
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1683
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1685
    :cond_0
    return-void
.end method

.method private prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 8
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 1655
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1656
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1657
    .local v0, "replacedWindow":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    .line 1660
    const/4 v1, 0x0

    return v1

    .line 1664
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 1667
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1668
    const/16 v2, 0x12

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1669
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1670
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1669
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1671
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1672
    return v3
.end method

.method private static queryWideColorGamutSupport()Z
    .locals 3

    .line 5011
    :try_start_0
    invoke-static {}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->getService()Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;

    move-result-object v0

    .line 5012
    .local v0, "surfaceFlinger":Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
    invoke-interface {v0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v1

    .line 5013
    .local v1, "hasWideColor":Landroid/hardware/configstore/V1_0/OptionalBool;
    if-eqz v1, :cond_0

    .line 5014
    iget-boolean v2, v1, Landroid/hardware/configstore/V1_0/OptionalBool;->value:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 5018
    .end local v0    # "surfaceFlinger":Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
    .end local v1    # "hasWideColor":Landroid/hardware/configstore/V1_0/OptionalBool;
    :cond_0
    goto :goto_0

    .line 5016
    :catch_0
    move-exception v0

    .line 5019
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 8
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 5765
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5767
    .local v0, "sizeStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 5768
    :cond_0
    const-string/jumbo v1, "ro.config.size_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5770
    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 5771
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 5772
    .local v3, "pos":I
    if-lez v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 5775
    :try_start_0
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5776
    .local v2, "width":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5777
    .local v4, "height":I
    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v2, :cond_2

    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v5, v4, :cond_3

    .line 5779
    :cond_2
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FORCED DISPLAY SIZE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5780
    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v4, v5}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5784
    :cond_3
    goto :goto_0

    .line 5783
    .end local v2    # "width":I
    .end local v4    # "height":I
    :catch_0
    move-exception v2

    .line 5789
    .end local v3    # "pos":I
    :cond_4
    :goto_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v2

    .line 5790
    .local v2, "density":I
    if-eqz v2, :cond_5

    .line 5791
    iput v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 5795
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_scaling_force"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5797
    .local v1, "mode":I
    if-eqz v1, :cond_6

    .line 5798
    const-string v3, "WindowManager"

    const-string v4, "FORCED DISPLAY SCALING DISABLED"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5799
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 5801
    :cond_6
    return-void
.end method

.method static resetPriorityAfterLockedSection()V
    .locals 1

    .line 866
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->reset()V

    .line 867
    return-void
.end method

.method private setAnimatorDurationScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 3536
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 3537
    invoke-static {p1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 3538
    return-void
.end method

.method private setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 0
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "density"    # I

    .line 5949
    iput p2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 5950
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5951
    return-void
.end method

.method private setForcedDisplayScalingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 5758
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using display scaling mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, "auto"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5759
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 5760
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5761
    return-void
.end method

.method private setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 5805
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using new display size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5806
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 5807
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5808
    return-void
.end method

.method private setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V
    .locals 9
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 6025
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 6026
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iput p2, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 6027
    iput p3, v0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 6028
    iput p4, v0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 6029
    iput p5, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 6032
    sget-boolean v1, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z

    if-eqz v1, :cond_1

    .line 6033
    :cond_0
    invoke-static {}, Lcom/android/server/policy/SingleModeCtrl;->getInstance()Lcom/android/server/policy/SingleModeCtrl;

    move-result-object v1

    .line 6034
    .local v1, "singleMode":Lcom/android/server/policy/SingleModeCtrl;
    if-eqz v1, :cond_1

    .line 6035
    invoke-virtual {v1, p3}, Lcom/android/server/policy/SingleModeCtrl;->updateWindowUI(I)V

    .line 6039
    .end local v1    # "singleMode":Lcom/android/server/policy/SingleModeCtrl;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v3, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v4, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DisplaySettings;->setOverscanLocked(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 6041
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplaySettings;->writeSettingsLocked()V

    .line 6043
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 6044
    return-void
.end method

.method private setWindowOpaqueLocked(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isOpaque"    # Z

    .line 3104
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3105
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 3106
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3107
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    .line 3108
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 3111
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    return-void
.end method

.method private showStrictModeViolation(II)V
    .locals 5
    .param p1, "arg"    # I
    .param p2, "pid"    # I

    .line 4069
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4070
    .local v0, "on":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4073
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->canShowStrictModeViolation(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4074
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4077
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    if-eqz v2, :cond_2

    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION showStrictModeViolation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4084
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v2, :cond_3

    .line 4085
    new-instance v2, Lcom/android/server/wm/StrictModeFlash;

    .line 4086
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wm/StrictModeFlash;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    .line 4088
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4090
    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4091
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION showStrictModeViolation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4095
    return-void

    .line 4090
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4091
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    if-eqz v3, :cond_5

    const-string v3, "WindowManager"

    const-string v4, "<<< CLOSE TRANSACTION showStrictModeViolation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v2

    .line 4094
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;ZZ)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "isDefaultDisplay"    # Z
    .param p4, "focusMayChange"    # Z

    .line 2407
    const/4 v0, 0x2

    .line 2408
    .local v0, "transit":I
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2409
    const/4 v0, 0x5

    .line 2411
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2412
    move p4, p3

    .line 2413
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_1

    .line 2414
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2417
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_1

    .line 2418
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2422
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto :goto_1

    .line 2424
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_4

    .line 2425
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 2427
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    goto :goto_0

    :cond_5
    move v1, v3

    .line 2431
    .local v1, "stopped":Z
    :goto_0
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2432
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    .line 2435
    .end local v1    # "stopped":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_6

    .line 2436
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2443
    :cond_6
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 2444
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 2445
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2447
    return p4
.end method

.method private updateAppOpsState()V
    .locals 2

    .line 1822
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1823
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->updateAppOpsState()V

    .line 1824
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1825
    return-void

    .line 1824
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateCircularDisplayMaskIfNeeded()V
    .locals 5

    .line 3966
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3967
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3970
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3971
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 3972
    .local v1, "currentUserId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3976
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3978
    .local v0, "inversionState":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v2, v3

    nop

    .line 3979
    .local v2, "showMask":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3980
    .local v3, "m":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 3981
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "inversionState":I
    .end local v1    # "currentUserId":I
    .end local v2    # "showMask":I
    .end local v3    # "m":Landroid/os/Message;
    goto :goto_0

    .line 3972
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3983
    :cond_1
    :goto_0
    return-void
.end method

.method private updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .locals 2
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1816
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1817
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V

    .line 1818
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1819
    return-void

    .line 1818
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "freezeThisOneIfNeeded"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I
    .param p4, "forceUpdate"    # Z

    .line 2622
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_0

    .line 2623
    const/4 v0, 0x0

    return-object v0

    .line 2625
    :cond_0
    const/4 v0, 0x0

    .line 2627
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0, p3, p4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2630
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v1, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-nez v1, :cond_1

    .line 2631
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 2632
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_1

    .line 2633
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 2636
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(I)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0

    .line 2638
    :cond_2
    if-eqz p1, :cond_3

    .line 2644
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 2645
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 2646
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2647
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 2648
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 2649
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 2650
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2651
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 2652
    .local v3, "anim":[I
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4, v3}, Lcom/android/server/policy/WindowManagerPolicy;->selectRotationAnimationLw([I)V

    .line 2654
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v2, v3, v2

    invoke-virtual {p0, v4, v2, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 2655
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v2

    .line 2659
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "anim":[I
    :cond_3
    :goto_0
    return-object v0
.end method

.method private updateRotationUnchecked(ZZ)V
    .locals 8
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .line 4277
    const-string/jumbo v0, "updateRotation"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4285
    .local v3, "origId":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4286
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 4287
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string/jumbo v6, "updateRotation: display"

    invoke-static {v1, v2, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4288
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v6

    .line 4289
    .local v6, "rotationChanged":Z
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4290
    if-eqz v6, :cond_0

    if-eqz p2, :cond_1

    .line 4291
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4292
    const-string/jumbo v7, "updateRotation: performSurfacePlacement"

    invoke-static {v1, v2, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4294
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4295
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4297
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    .line 4297
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    move v5, v7

    .line 4298
    .local v5, "displayId":I
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move v0, v6

    .line 4300
    .end local v6    # "rotationChanged":Z
    .local v0, "rotationChanged":Z
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    .line 4301
    :cond_2
    const-string/jumbo v6, "updateRotation: sendNewConfiguration"

    invoke-static {v1, v2, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4302
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 4303
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4306
    .end local v0    # "rotationChanged":Z
    .end local v5    # "displayId":I
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4307
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4308
    nop

    .line 4309
    return-void

    .line 4298
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4306
    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4307
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateStatusBarVisibilityLocked(I)Z
    .locals 2
    .param p1, "visibility"    # I

    .line 6627
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    if-ne v0, p1, :cond_0

    .line 6628
    const/4 v0, 0x0

    return v0

    .line 6630
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    xor-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x7

    not-int v1, p1

    and-int/2addr v0, v1

    .line 6637
    .local v0, "globalDiff":I
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    .line 6638
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    .line 6639
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateSystemUiVisibility(II)V

    .line 6640
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I
    .locals 55
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "seq"    # I
    .param p4, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "viewVisibility"    # I
    .param p6, "displayId"    # I
    .param p7, "outFrame"    # Landroid/graphics/Rect;
    .param p8, "outContentInsets"    # Landroid/graphics/Rect;
    .param p9, "outStableInsets"    # Landroid/graphics/Rect;
    .param p10, "outOutsets"    # Landroid/graphics/Rect;
    .param p11, "outDisplayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;
    .param p12, "outInputChannel"    # Landroid/view/InputChannel;

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move/from16 v12, p6

    .line 1197
    move-object/from16 v11, p12

    const/4 v10, 0x1

    new-array v9, v10, [I

    .line 1198
    .local v9, "appOp":[I
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v15, v9}, Lcom/android/server/policy/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I

    move-result v16

    .line 1199
    .local v16, "res":I
    if-eqz v16, :cond_0

    .line 1200
    return v16

    .line 1203
    :cond_0
    const/16 v17, 0x0

    .line 1204
    .local v17, "reportNewConfig":Z
    const/4 v1, 0x0

    .line 1206
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1207
    .local v7, "callingUid":I
    iget v6, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1209
    .local v6, "type":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mFocusingActivity:Ljava/lang/String;

    .line 1211
    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1212
    iget-boolean v0, v13, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_46

    .line 1216
    invoke-direct {v13, v12}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_18

    move-object v4, v0

    .line 1218
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v0, -0x9

    if-nez v4, :cond_1

    .line 1219
    :try_start_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window to a display that does not exist: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1588
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v0

    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .end local v9    # "appOp":[I
    .local v30, "appOp":[I
    .local v50, "type":I
    .local v51, "callingUid":I
    :goto_0
    move-object/from16 v32, v5

    move/from16 v50, v6

    move/from16 v51, v7

    move-object/from16 v30, v9

    move-object v14, v11

    move v2, v12

    goto/16 :goto_1a

    .line 1223
    .end local v30    # "appOp":[I
    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .restart local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "type":I
    .restart local v7    # "callingUid":I
    .restart local v9    # "appOp":[I
    :cond_1
    :try_start_2
    iget v2, v14, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v4, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_18

    if-nez v2, :cond_2

    :try_start_3
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, v14, Lcom/android/server/wm/Session;->mUid:I

    .line 1224
    invoke-virtual {v2, v3, v12}, Landroid/hardware/display/DisplayManagerInternal;->isUidPresentOnDisplay(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1225
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window to a display for which the application does not have access: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1230
    :cond_2
    :try_start_4
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_18

    const/16 v18, -0x5

    if-eqz v2, :cond_3

    .line 1231
    :try_start_5
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v8, p2

    :try_start_6
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    .line 1588
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_1
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_0

    .line 1235
    .restart local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_3
    move-object/from16 v8, p2

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v10, 0x0

    if-lt v6, v2, :cond_5

    const/16 v0, 0x7cf

    if-gt v6, v0, :cond_5

    .line 1236
    :try_start_7
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v13, v3, v0, v10}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    move-object v1, v0

    .line 1237
    if-nez v1, :cond_4

    .line 1238
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window with token that is not a window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v0, -0x2

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1242
    :cond_4
    :try_start_8
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_5

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7cf

    if-gt v0, v2, :cond_5

    .line 1244
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/4 v0, -0x2

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1250
    :cond_5
    move-object v2, v1

    .end local v1    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v2, "parentWindow":Lcom/android/server/wm/WindowState;
    const/16 v0, 0x7ee

    if-ne v6, v0, :cond_6

    :try_start_9
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1251
    const-string v0, "WindowManager"

    const-string v1, "Attempted to add private presentation window to a non-private display.  Aborting."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const/4 v0, -0x8

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1588
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0

    .line 1255
    .restart local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_6
    const/4 v0, 0x0

    .line 1256
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    move v1, v10

    :goto_1
    move/from16 v20, v1

    .line 1259
    .local v20, "hasParent":Z
    nop

    .line 1260
    if-eqz v20, :cond_8

    :try_start_a
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :cond_8
    :try_start_b
    iget-object v1, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1259
    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_17

    .line 1263
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v20, :cond_9

    :try_start_c
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_3

    :cond_9
    move v3, v6

    .line 1265
    .local v3, "rootType":I
    :goto_3
    const/16 v22, 0x0

    .line 1267
    .local v22, "addToastWindowRequiresToken":Z
    const/16 v30, -0x1

    if-nez v1, :cond_14

    .line 1270
    const/4 v10, 0x1

    if-lt v3, v10, :cond_a

    const/16 v10, 0x63

    if-gt v3, v10, :cond_a

    const/16 v10, 0x1000

    if-eq v12, v10, :cond_a

    .line 1271
    const-string v10, "WindowManager"

    move-object/from16 v31, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v31, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v1

    const-string v1, "Attempted to add application window with unknown token "

    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    .local v32, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".  Aborting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1275
    .end local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v32    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_a
    move-object/from16 v31, v0

    move-object/from16 v32, v1

    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v32    # "token":Lcom/android/server/wm/WindowToken;
    const/16 v1, 0x7db

    if-ne v3, v1, :cond_b

    .line 1276
    :try_start_d
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to add input method window with unknown token "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".  Aborting."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1280
    :cond_b
    const/16 v0, 0x7ef

    if-ne v3, v0, :cond_c

    .line 1281
    :try_start_e
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to add voice interaction window with unknown token "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".  Aborting."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1285
    :cond_c
    const/16 v1, 0x7dd

    if-ne v3, v1, :cond_d

    .line 1286
    :try_start_f
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".  Aborting."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1290
    :cond_d
    const/16 v0, 0x7e7

    if-ne v3, v0, :cond_e

    .line 1291
    :try_start_10
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to add Dream window with unknown token "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".  Aborting."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1295
    :cond_e
    const/16 v0, 0x7f3

    if-ne v3, v0, :cond_f

    .line 1296
    :try_start_11
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to add QS dialog window with unknown token "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".  Aborting."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1300
    :cond_f
    const/16 v0, 0x7f0

    if-ne v3, v0, :cond_10

    .line 1301
    :try_start_12
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to add Accessibility overlay window with unknown token "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".  Aborting."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1305
    :cond_10
    const/16 v0, 0x7d5

    if-ne v6, v0, :cond_11

    .line 1307
    :try_start_13
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v13, v0, v7, v2}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1309
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to add a toast window with unknown token "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ".  Aborting."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1314
    :cond_11
    :try_start_14
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v0, :cond_12

    :try_start_15
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto :goto_4

    :cond_12
    :try_start_16
    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_4
    move v10, v3

    const/4 v1, 0x0

    move-object v3, v0

    .line 1315
    .local v3, "binder":Landroid/os/IBinder;
    .local v10, "rootType":I
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v21, 0x100000

    and-int v0, v0, v21

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    :goto_5
    move v8, v0

    .line 1317
    .local v8, "isRoundedCornerOverlay":Z
    new-instance v0, Lcom/android/server/wm/WindowToken;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    const/16 v21, 0x0

    move-object/from16 v33, v5

    :try_start_17
    iget-boolean v5, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-object/from16 v34, v32

    move-object v1, v0

    .end local v32    # "token":Lcom/android/server/wm/WindowToken;
    .local v34, "token":Lcom/android/server/wm/WindowToken;
    move-object/from16 v36, v2

    move-object v2, v13

    .end local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v36, "parentWindow":Lcom/android/server/wm/WindowState;
    move-object/from16 v37, v4

    move v4, v6

    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v37, "displayContent":Lcom/android/server/wm/DisplayContent;
    move/from16 v24, v5

    move-object/from16 v32, v33

    move/from16 v5, v21

    move/from16 v38, v6

    move-object/from16 v6, v37

    .end local v6    # "type":I
    .local v38, "type":I
    move v12, v7

    move/from16 v7, v24

    .end local v7    # "callingUid":I
    .local v12, "callingUid":I
    :try_start_18
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 1319
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v8    # "isRoundedCornerOverlay":Z
    .end local v34    # "token":Lcom/android/server/wm/WindowToken;
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    nop

    .line 1388
    move-object v7, v0

    move-object/from16 v6, v31

    move-object/from16 v21, v36

    move/from16 v41, v38

    const/4 v8, 0x1

    const/16 v24, 0x7db

    const/16 v26, 0x7d5

    const/16 v27, 0x0

    const/16 v28, 0x7dd

    goto/16 :goto_b

    .line 1588
    .end local v0    # "token":Lcom/android/server/wm/WindowToken;
    .end local v10    # "rootType":I
    .end local v12    # "callingUid":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v38    # "type":I
    .restart local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v6    # "type":I
    .restart local v7    # "callingUid":I
    :catchall_3
    move-exception v0

    move-object/from16 v36, v2

    move-object/from16 v32, v33

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v36, v2

    move-object/from16 v32, v5

    .end local v9    # "appOp":[I
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v30    # "appOp":[I
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    :goto_6
    move/from16 v50, v6

    move/from16 v51, v7

    move-object/from16 v30, v9

    move-object v14, v11

    move-object/from16 v1, v36

    move/from16 v2, p6

    .end local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .restart local v12    # "callingUid":I
    .restart local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v38    # "type":I
    goto/16 :goto_1a

    .line 1319
    .end local v12    # "callingUid":I
    .end local v30    # "appOp":[I
    .end local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v38    # "type":I
    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    .restart local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v3, "rootType":I
    .restart local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "type":I
    .restart local v7    # "callingUid":I
    .restart local v9    # "appOp":[I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    :cond_14
    move-object/from16 v31, v0

    move-object/from16 v34, v1

    move-object/from16 v36, v2

    move v10, v3

    move-object/from16 v37, v4

    move-object/from16 v32, v5

    move/from16 v38, v6

    move v12, v7

    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    .end local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v3    # "rootType":I
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .restart local v10    # "rootType":I
    .restart local v12    # "callingUid":I
    .restart local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v34    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v38    # "type":I
    const/4 v8, 0x1

    if-lt v10, v8, :cond_18

    const/16 v0, 0x63

    if-gt v10, v0, :cond_18

    .line 1320
    move-object/from16 v0, v34

    :try_start_19
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 1321
    .end local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v34    # "token":Lcom/android/server/wm/WindowToken;
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_15

    .line 1322
    :try_start_1a
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add window with non-application token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const/4 v2, -0x3

    monitor-exit v32
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1588
    .end local v0    # "token":Lcom/android/server/wm/WindowToken;
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v10    # "rootType":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_5
    move-exception v0

    move-object/from16 v30, v9

    move-object v14, v11

    move/from16 v51, v12

    move-object/from16 v1, v36

    move/from16 v50, v38

    goto/16 :goto_8

    .line 1325
    .restart local v0    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v10    # "rootType":I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_15
    :try_start_1b
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-eqz v2, :cond_16

    .line 1326
    :try_start_1c
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add window with exiting application token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v2, -0x4

    monitor-exit v32
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1329
    :cond_16
    const/4 v2, 0x3

    move/from16 v7, v38

    if-ne v7, v2, :cond_17

    .end local v38    # "type":I
    .local v7, "type":I
    :try_start_1d
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_17

    .line 1330
    const-string v2, "WindowManager"

    const-string v3, "Attempted to add starting window to token with already existing starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    monitor-exit v32
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    .line 1388
    :cond_17
    move-object v6, v1

    move/from16 v41, v7

    move-object/from16 v21, v36

    const/16 v24, 0x7db

    const/16 v26, 0x7d5

    const/16 v27, 0x0

    const/16 v28, 0x7dd

    .end local v0    # "token":Lcom/android/server/wm/WindowToken;
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v6, "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v7, "token":Lcom/android/server/wm/WindowToken;
    .local v21, "parentWindow":Lcom/android/server/wm/WindowState;
    .local v41, "type":I
    :goto_7
    move-object v7, v0

    goto/16 :goto_b

    .line 1588
    .end local v6    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "token":Lcom/android/server/wm/WindowToken;
    .end local v10    # "rootType":I
    .end local v20    # "hasParent":Z
    .end local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v41    # "type":I
    .restart local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v38    # "type":I
    :catchall_6
    move-exception v0

    move-object/from16 v30, v9

    move-object v14, v11

    move/from16 v51, v12

    move-object/from16 v1, v36

    move/from16 v50, v38

    move/from16 v2, p6

    .end local v38    # "type":I
    .local v7, "type":I
    goto/16 :goto_1a

    .line 1334
    .end local v7    # "type":I
    .restart local v10    # "rootType":I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v34    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v38    # "type":I
    :cond_18
    move-object/from16 v0, v34

    move/from16 v7, v38

    .end local v34    # "token":Lcom/android/server/wm/WindowToken;
    .end local v38    # "type":I
    .restart local v0    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v7    # "type":I
    const/16 v6, 0x7db

    if-ne v10, v6, :cond_1a

    .line 1335
    :try_start_1e
    iget v1, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v6, :cond_19

    .line 1336
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add input method window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    monitor-exit v32
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1388
    :cond_19
    move/from16 v24, v6

    move/from16 v41, v7

    move-object/from16 v21, v36

    const/16 v26, 0x7d5

    const/16 v27, 0x0

    const/16 v28, 0x7dd

    goto/16 :goto_a

    .line 1588
    .end local v0    # "token":Lcom/android/server/wm/WindowToken;
    .end local v10    # "rootType":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_7
    move-exception v0

    move/from16 v50, v7

    move-object/from16 v30, v9

    move-object v14, v11

    move/from16 v51, v12

    move-object/from16 v1, v36

    .end local v7    # "type":I
    .end local v9    # "appOp":[I
    .end local v12    # "callingUid":I
    .end local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v30    # "appOp":[I
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    :goto_8
    move/from16 v2, p6

    goto/16 :goto_1a

    .line 1340
    .end local v1    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v30    # "appOp":[I
    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .restart local v0    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v7    # "type":I
    .restart local v9    # "appOp":[I
    .restart local v10    # "rootType":I
    .restart local v12    # "callingUid":I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1a
    const/16 v1, 0x7ef

    if-ne v10, v1, :cond_1b

    .line 1341
    :try_start_1f
    iget v2, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_19

    .line 1342
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add voice interaction window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    monitor-exit v32
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1346
    :cond_1b
    const/16 v5, 0x7dd

    if-ne v10, v5, :cond_1d

    .line 1347
    :try_start_20
    iget v1, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v5, :cond_1c

    .line 1348
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    monitor-exit v32
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1388
    :cond_1c
    move/from16 v28, v5

    move/from16 v24, v6

    move/from16 v41, v7

    move-object/from16 v21, v36

    const/16 v26, 0x7d5

    :goto_9
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 1352
    :cond_1d
    const/16 v1, 0x7e7

    if-ne v10, v1, :cond_1e

    .line 1353
    :try_start_21
    iget v2, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_1c

    .line 1354
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add Dream window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    monitor-exit v32
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1358
    :cond_1e
    const/16 v1, 0x7f0

    if-ne v10, v1, :cond_1f

    .line 1359
    :try_start_22
    iget v2, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_1c

    .line 1360
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add Accessibility overlay window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    monitor-exit v32
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1364
    :cond_1f
    const/16 v1, 0x7d5

    if-ne v7, v1, :cond_22

    .line 1366
    :try_start_23
    iget-object v1, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    move-object/from16 v4, v36

    :try_start_24
    invoke-direct {v13, v1, v12, v4}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v1

    .end local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v4, "parentWindow":Lcom/android/server/wm/WindowState;
    move/from16 v22, v1

    .line 1368
    if-eqz v22, :cond_20

    iget v1, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v3, 0x7d5

    if-eq v1, v3, :cond_21

    .line 1369
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add a toast window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    monitor-exit v32
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1388
    :cond_20
    const/16 v3, 0x7d5

    :cond_21
    move/from16 v26, v3

    move-object/from16 v21, v4

    move/from16 v28, v5

    move/from16 v24, v6

    move/from16 v41, v7

    move-object/from16 v6, v31

    const/16 v27, 0x0

    goto/16 :goto_7

    .line 1588
    .end local v0    # "token":Lcom/android/server/wm/WindowToken;
    .end local v10    # "rootType":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_8
    move-exception v0

    move-object v1, v4

    move/from16 v50, v7

    move-object/from16 v30, v9

    move-object v14, v11

    move/from16 v51, v12

    goto/16 :goto_8

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    :catchall_9
    move-exception v0

    move-object/from16 v4, v36

    move-object v1, v4

    move/from16 v50, v7

    move-object/from16 v30, v9

    move-object v14, v11

    move/from16 v51, v12

    move/from16 v2, p6

    .end local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    goto/16 :goto_1a

    .line 1373
    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v0    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v10    # "rootType":I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_22
    move v3, v1

    move-object/from16 v4, v36

    .end local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    const/16 v1, 0x7f3

    if-ne v7, v1, :cond_24

    .line 1374
    :try_start_25
    iget v2, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_23

    .line 1375
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add QS dialog window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    monitor-exit v32
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1388
    :cond_23
    move/from16 v26, v3

    move-object/from16 v21, v4

    move/from16 v28, v5

    move/from16 v24, v6

    move/from16 v41, v7

    goto/16 :goto_9

    .line 1379
    :cond_24
    :try_start_26
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_16

    if-eqz v1, :cond_25

    .line 1380
    :try_start_27
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-null appWindowToken for system window of rootType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/4 v3, 0x0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1384
    new-instance v19, Lcom/android/server/wm/WindowToken;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v21

    const/16 v24, 0x0

    iget-boolean v2, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    move-object/from16 v1, v19

    move/from16 v25, v2

    move-object v2, v13

    move-object/from16 v27, v3

    const/16 v26, 0x7d5

    move-object/from16 v3, v21

    move-object/from16 v21, v4

    move v4, v7

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    move/from16 v28, v5

    move/from16 v5, v24

    move/from16 v24, v6

    move-object/from16 v6, v37

    move/from16 v41, v7

    move/from16 v7, v25

    .end local v7    # "type":I
    .restart local v41    # "type":I
    :try_start_28
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    move-object/from16 v0, v19

    .line 1388
    move-object v7, v0

    move-object/from16 v6, v31

    goto :goto_b

    .line 1588
    .end local v0    # "token":Lcom/android/server/wm/WindowToken;
    .end local v10    # "rootType":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_a
    move-exception v0

    move-object/from16 v30, v9

    move-object v14, v11

    move/from16 v51, v12

    move-object/from16 v1, v21

    move/from16 v50, v41

    goto/16 :goto_8

    .end local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v41    # "type":I
    .restart local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v7    # "type":I
    :catchall_b
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v50, v7

    move-object/from16 v30, v9

    move-object v14, v11

    move/from16 v51, v12

    move-object/from16 v1, v21

    move/from16 v2, p6

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v7    # "type":I
    .restart local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v41    # "type":I
    goto/16 :goto_1a

    .line 1388
    .end local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v41    # "type":I
    .restart local v0    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v7    # "type":I
    .restart local v10    # "rootType":I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_25
    move/from16 v26, v3

    move-object/from16 v21, v4

    move/from16 v28, v5

    move/from16 v24, v6

    move/from16 v41, v7

    const/16 v27, 0x0

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    :goto_a
    move-object v7, v0

    move-object/from16 v6, v31

    .end local v0    # "token":Lcom/android/server/wm/WindowToken;
    .end local v31    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v36    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v6    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v7, "token":Lcom/android/server/wm/WindowToken;
    .restart local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v41    # "type":I
    :goto_b
    :try_start_29
    new-instance v0, Lcom/android/server/wm/WindowState;

    const/16 v19, 0x0

    aget v23, v9, v19

    iget v5, v14, Lcom/android/server/wm/Session;->mUid:I

    iget-boolean v4, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    move-object v1, v0

    move-object v2, v13

    move-object v3, v14

    move/from16 v25, v4

    move-object/from16 v4, p2

    move/from16 v29, v5

    move-object v5, v7

    move-object v14, v6

    move-object/from16 v6, v21

    .end local v6    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v14, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v42, v14

    move-object v14, v7

    move/from16 v7, v23

    .end local v7    # "token":Lcom/android/server/wm/WindowToken;
    .local v14, "token":Lcom/android/server/wm/WindowToken;
    .local v42, "atoken":Lcom/android/server/wm/AppWindowToken;
    move/from16 v23, v8

    move/from16 v8, p3

    move-object/from16 v30, v9

    move-object v9, v15

    .end local v9    # "appOp":[I
    .restart local v30    # "appOp":[I
    move/from16 v19, v10

    move-object/from16 v43, v14

    move/from16 v14, v26

    move/from16 v10, p5

    .end local v10    # "rootType":I
    .end local v14    # "token":Lcom/android/server/wm/WindowToken;
    .local v19, "rootType":I
    .local v43, "token":Lcom/android/server/wm/WindowToken;
    move-object v14, v11

    move/from16 v11, v29

    move/from16 v44, v12

    move/from16 v12, v25

    .end local v12    # "callingUid":I
    .local v44, "callingUid":I
    :try_start_2a
    invoke-direct/range {v1 .. v12}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V

    move-object v1, v0

    .line 1391
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_14

    if-nez v0, :cond_26

    .line 1394
    :try_start_2b
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding window client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that is dead, aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const/4 v0, -0x4

    monitor-exit v32
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1588
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v19    # "rootType":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v42    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v43    # "token":Lcom/android/server/wm/WindowToken;
    :catchall_c
    move-exception v0

    move-object/from16 v1, v21

    move/from16 v50, v41

    move/from16 v51, v44

    goto/16 :goto_8

    .line 1399
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    .restart local v19    # "rootType":I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v42    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v43    # "token":Lcom/android/server/wm/WindowToken;
    :cond_26
    :try_start_2c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    if-nez v0, :cond_27

    .line 1400
    :try_start_2d
    const-string v0, "WindowManager"

    const-string v2, "Adding window to Display that has been removed."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    monitor-exit v32
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/16 v0, -0x9

    return v0

    .line 1404
    :cond_27
    :try_start_2e
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    .line 1405
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_c

    :cond_28
    const/4 v0, 0x0

    :goto_c
    move v2, v0

    .line 1407
    .local v2, "hasStatusBarServicePermission":Z
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3, v2}, Lcom/android/server/policy/WindowManagerPolicy;->adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V

    .line 1408
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v15}, Lcom/android/server/policy/WindowManagerPolicy;->checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->setShowToOwnerOnlyLocked(Z)V

    .line 1410
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1, v15}, Lcom/android/server/policy/WindowManagerPolicy;->prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_14

    move/from16 v16, v0

    .line 1411
    if-eqz v16, :cond_29

    .line 1412
    :try_start_2f
    monitor-exit v32
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v16

    .line 1415
    :cond_29
    if-eqz v14, :cond_2a

    :try_start_30
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_d

    :cond_2a
    const/4 v0, 0x0

    :goto_d
    move v3, v0

    .line 1417
    .local v3, "openInputChannels":Z
    if-eqz v3, :cond_2b

    .line 1418
    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    .line 1431
    :cond_2b
    move/from16 v4, v41

    const/16 v0, 0x7d5

    if-ne v4, v0, :cond_2e

    .line 1432
    .end local v41    # "type":I
    .local v4, "type":I
    :try_start_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    move/from16 v5, v44

    :try_start_32
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->canAddToastWindowForUid(I)Z

    move-result v0

    .end local v44    # "callingUid":I
    .local v5, "callingUid":I
    if-nez v0, :cond_2c

    .line 1433
    const-string v0, "WindowManager"

    const-string v6, "Adding more than one toast window for UID at a time."

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    monitor-exit v32
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    .line 1441
    :cond_2c
    if-nez v22, :cond_2d

    :try_start_33
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2d

    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2d

    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v0, v5, :cond_2f

    .line 1445
    :cond_2d
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x34

    .line 1446
    invoke-virtual {v6, v7, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v7, v7, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1445
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_d

    goto :goto_e

    .line 1588
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "hasStatusBarServicePermission":Z
    .end local v3    # "openInputChannels":Z
    .end local v19    # "rootType":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v42    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v43    # "token":Lcom/android/server/wm/WindowToken;
    :catchall_d
    move-exception v0

    move/from16 v50, v4

    move/from16 v51, v5

    move-object/from16 v1, v21

    goto/16 :goto_8

    .end local v5    # "callingUid":I
    .restart local v44    # "callingUid":I
    :catchall_e
    move-exception v0

    move/from16 v50, v4

    move-object/from16 v1, v21

    move/from16 v51, v44

    move/from16 v2, p6

    .end local v44    # "callingUid":I
    .restart local v5    # "callingUid":I
    goto/16 :goto_1a

    .line 1453
    .end local v5    # "callingUid":I
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    .restart local v2    # "hasStatusBarServicePermission":Z
    .restart local v3    # "openInputChannels":Z
    .restart local v19    # "rootType":I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v42    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v43    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v44    # "callingUid":I
    :cond_2e
    move/from16 v5, v44

    .end local v44    # "callingUid":I
    .restart local v5    # "callingUid":I
    :cond_2f
    :goto_e
    const/16 v16, 0x0

    .line 1454
    :try_start_34
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_13

    if-nez v0, :cond_30

    .line 1455
    :try_start_35
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_d

    .line 1458
    :cond_30
    :try_start_36
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_13

    if-eqz v0, :cond_31

    .line 1459
    move-object/from16 v6, v37

    :try_start_37
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .end local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_d

    goto :goto_f

    .line 1462
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_31
    move-object/from16 v6, v37

    .end local v37    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_f
    :try_start_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1464
    .local v7, "origId":J
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->attach()V

    .line 1465
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wm/WindowHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_13

    .line 1468
    :try_start_39
    iget v0, v1, Lcom/android/server/wm/WindowState;->mPid:I

    iget v9, v1, Lcom/android/server/wm/WindowState;->mUid:I

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lnubia/os/ApplicationManager$Trigger;->noteAddWindow(IILjava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_0
    .catchall {:try_start_39 .. :try_end_39} :catchall_d

    .line 1469
    goto :goto_10

    :catch_0
    move-exception v0

    .line 1472
    :goto_10
    :try_start_3a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->initAppOpsState()V

    .line 1474
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v9

    .line 1475
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1474
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v0

    .line 1476
    .local v0, "suspended":Z
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 1478
    iget-object v9, v13, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    .line 1479
    .local v9, "hideSystemAlertWindows":Z
    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    .line 1481
    move-object/from16 v10, v43

    invoke-virtual {v10}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v11
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_13

    .line 1482
    .end local v43    # "token":Lcom/android/server/wm/WindowToken;
    .local v10, "token":Lcom/android/server/wm/WindowToken;
    .local v11, "aToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v12, 0x3

    if-ne v4, v12, :cond_32

    if-eqz v11, :cond_32

    .line 1483
    :try_start_3b
    iput-object v1, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_d

    .line 1488
    :cond_32
    const/4 v12, 0x1

    .line 1490
    .local v12, "imMayMove":Z
    move/from16 v45, v0

    :try_start_3c
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .end local v0    # "suspended":Z
    .local v45, "suspended":Z
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_13

    .line 1491
    move/from16 v46, v2

    const/16 v2, 0x7db

    if-ne v4, v2, :cond_33

    .line 1492
    .end local v2    # "hasStatusBarServicePermission":Z
    .local v46, "hasStatusBarServicePermission":Z
    const/4 v2, 0x1

    :try_start_3d
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 1493
    invoke-virtual {v13, v1}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 1494
    const/4 v12, 0x0

    goto :goto_11

    .line 1495
    :cond_33
    const/16 v0, 0x7dc

    if-ne v4, v0, :cond_34

    .line 1496
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1497
    const/4 v12, 0x0

    goto :goto_11

    .line 1499
    :cond_34
    const/16 v2, 0x7dd

    if-ne v4, v2, :cond_35

    .line 1500
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    .line 1501
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_d

    goto :goto_11

    .line 1502
    :cond_35
    :try_start_3e
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_13

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-eqz v0, :cond_36

    .line 1503
    :try_start_3f
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_d

    goto :goto_11

    .line 1504
    :cond_36
    :try_start_40
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_13

    if-eqz v0, :cond_37

    .line 1510
    :try_start_41
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_d

    .line 1516
    :cond_37
    :goto_11
    :try_start_42
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->applyAdjustForImeIfNeeded()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_13

    .line 1518
    const/16 v0, 0x7f2

    if-ne v4, v0, :cond_38

    .line 1519
    :try_start_43
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_10

    move/from16 v2, p6

    :try_start_44
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->setWindow(Lcom/android/server/wm/WindowState;)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_f

    goto :goto_14

    .line 1588
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v3    # "openInputChannels":Z
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v7    # "origId":J
    .end local v9    # "hideSystemAlertWindows":Z
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    .end local v11    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v12    # "imMayMove":Z
    .end local v19    # "rootType":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v42    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v45    # "suspended":Z
    .end local v46    # "hasStatusBarServicePermission":Z
    :catchall_f
    move-exception v0

    goto :goto_12

    :catchall_10
    move-exception v0

    move/from16 v2, p6

    .end local v4    # "type":I
    .end local v5    # "callingUid":I
    .end local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    :goto_12
    move/from16 v50, v4

    move/from16 v51, v5

    :goto_13
    move-object/from16 v1, v21

    goto/16 :goto_1a

    .line 1522
    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .local v1, "win":Lcom/android/server/wm/WindowState;
    .restart local v3    # "openInputChannels":Z
    .restart local v4    # "type":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v7    # "origId":J
    .restart local v9    # "hideSystemAlertWindows":Z
    .restart local v10    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v11    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v12    # "imMayMove":Z
    .restart local v19    # "rootType":I
    .restart local v20    # "hasParent":Z
    .restart local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v42    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v45    # "suspended":Z
    .restart local v46    # "hasStatusBarServicePermission":Z
    :cond_38
    move/from16 v2, p6

    :goto_14
    :try_start_45
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1523
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move/from16 v47, v3

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1524
    .end local v3    # "openInputChannels":Z
    .local v47, "openInputChannels":Z
    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_12

    .line 1526
    if-eqz v42, :cond_39

    move-object/from16 v3, v42

    :try_start_46
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v18

    .end local v42    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v18, :cond_3a

    .line 1527
    invoke-direct {v13, v3}, Lcom/android/server/wm/WindowManagerService;->prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v18

    if-nez v18, :cond_3a

    .line 1531
    invoke-direct {v13, v3}, Lcom/android/server/wm/WindowManagerService;->prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_f

    goto :goto_15

    .line 1534
    .end local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v42    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_39
    move-object/from16 v3, v42

    .end local v42    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3a
    :goto_15
    move-object/from16 v48, v0

    :try_start_47
    iget-object v0, v6, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1536
    .local v0, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v48, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v18
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_12

    move-object/from16 v49, v18

    .line 1537
    .local v49, "displayInfo":Landroid/view/DisplayInfo;
    move/from16 v50, v4

    move/from16 v51, v5

    move-object/from16 v4, v49

    :try_start_48
    iget v5, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 1538
    .end local v5    # "callingUid":I
    .end local v49    # "displayInfo":Landroid/view/DisplayInfo;
    .local v4, "displayInfo":Landroid/view/DisplayInfo;
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v5

    .line 1537
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1540
    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 1541
    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .line 1542
    .local v5, "taskBounds":Landroid/graphics/Rect;
    move-object/from16 v52, v4

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .end local v4    # "displayInfo":Landroid/view/DisplayInfo;
    .local v52, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v53, v3

    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .end local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v53, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v4, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1544
    move-object/from16 v35, v5

    goto :goto_16

    .end local v5    # "taskBounds":Landroid/graphics/Rect;
    .end local v52    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v53    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v4    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3b
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    .end local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v52    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v53    # "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v35, v27

    .line 1546
    .local v35, "taskBounds":Landroid/graphics/Rect;
    :goto_16
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v0

    move-object/from16 v37, p7

    move-object/from16 v38, p8

    move-object/from16 v39, p9

    move-object/from16 v40, p10

    move-object/from16 v41, p11

    invoke-interface/range {v33 .. v41}, Lcom/android/server/policy/WindowManagerPolicy;->getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1548
    or-int/lit8 v3, v16, 0x4

    .line 1551
    .end local v16    # "res":I
    .local v3, "res":I
    move/from16 v16, v3

    .end local v3    # "res":I
    .restart local v16    # "res":I
    :cond_3c
    iget-boolean v3, v13, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v3, :cond_3d

    .line 1552
    or-int/lit8 v3, v16, 0x1

    .line 1554
    .end local v16    # "res":I
    .restart local v3    # "res":I
    move/from16 v16, v3

    .end local v3    # "res":I
    .restart local v16    # "res":I
    :cond_3d
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_3e

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 1555
    :cond_3e
    or-int/lit8 v3, v16, 0x2

    .line 1558
    .end local v16    # "res":I
    .restart local v3    # "res":I
    move/from16 v16, v3

    .end local v3    # "res":I
    .restart local v16    # "res":I
    :cond_3f
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 1560
    const/4 v3, 0x0

    .line 1561
    .local v3, "focusChanged":Z
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1562
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v18

    move/from16 v3, v18

    .line 1564
    if-eqz v3, :cond_41

    .line 1565
    const/4 v12, 0x0

    goto :goto_17

    .line 1569
    :cond_40
    const/4 v5, 0x0

    :cond_41
    :goto_17
    if-eqz v12, :cond_42

    .line 1570
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1575
    :cond_42
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 1577
    if-eqz v3, :cond_43

    .line 1578
    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move/from16 v54, v3

    const/4 v3, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .end local v3    # "focusChanged":Z
    .local v54, "focusChanged":Z
    goto :goto_18

    .line 1580
    .end local v54    # "focusChanged":Z
    .restart local v3    # "focusChanged":Z
    :cond_43
    move/from16 v54, v3

    .end local v3    # "focusChanged":Z
    .restart local v54    # "focusChanged":Z
    :goto_18
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1585
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {v13, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1586
    const/4 v0, 0x1

    .line 1588
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v9    # "hideSystemAlertWindows":Z
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    .end local v11    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v12    # "imMayMove":Z
    .end local v17    # "reportNewConfig":Z
    .end local v19    # "rootType":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v35    # "taskBounds":Landroid/graphics/Rect;
    .end local v45    # "suspended":Z
    .end local v46    # "hasStatusBarServicePermission":Z
    .end local v47    # "openInputChannels":Z
    .end local v48    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v52    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v53    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v54    # "focusChanged":Z
    .local v0, "reportNewConfig":Z
    move/from16 v17, v0

    .end local v0    # "reportNewConfig":Z
    .restart local v17    # "reportNewConfig":Z
    :cond_44
    monitor-exit v32
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1590
    if-eqz v17, :cond_45

    .line 1591
    invoke-virtual {v13, v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 1594
    :cond_45
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    return v16

    .line 1588
    .end local v7    # "origId":J
    :catchall_11
    move-exception v0

    goto/16 :goto_13

    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .local v4, "type":I
    .local v5, "callingUid":I
    :catchall_12
    move-exception v0

    move/from16 v50, v4

    move/from16 v51, v5

    goto :goto_19

    :catchall_13
    move-exception v0

    move/from16 v50, v4

    move/from16 v51, v5

    move/from16 v2, p6

    .end local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    :goto_19
    move-object/from16 v1, v21

    .end local v4    # "type":I
    .end local v5    # "callingUid":I
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    goto/16 :goto_1a

    .end local v1    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .restart local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v41    # "type":I
    .restart local v44    # "callingUid":I
    :catchall_14
    move-exception v0

    move/from16 v50, v41

    move/from16 v51, v44

    move/from16 v2, p6

    move-object/from16 v1, v21

    .end local v41    # "type":I
    .end local v44    # "callingUid":I
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    goto :goto_1a

    .end local v30    # "appOp":[I
    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .local v9, "appOp":[I
    .local v12, "callingUid":I
    .restart local v41    # "type":I
    :catchall_15
    move-exception v0

    move-object/from16 v30, v9

    move-object v14, v11

    move/from16 v51, v12

    move/from16 v50, v41

    move/from16 v2, p6

    move-object/from16 v1, v21

    .end local v9    # "appOp":[I
    .end local v12    # "callingUid":I
    .end local v41    # "type":I
    .restart local v30    # "appOp":[I
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    goto :goto_1a

    .end local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v30    # "appOp":[I
    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .local v4, "parentWindow":Lcom/android/server/wm/WindowState;
    .local v7, "type":I
    .restart local v9    # "appOp":[I
    .restart local v12    # "callingUid":I
    :catchall_16
    move-exception v0

    move-object/from16 v21, v4

    move/from16 v50, v7

    move-object/from16 v30, v9

    move-object v14, v11

    move/from16 v51, v12

    move/from16 v2, p6

    move-object/from16 v1, v21

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v7    # "type":I
    .end local v9    # "appOp":[I
    .end local v12    # "callingUid":I
    .restart local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v30    # "appOp":[I
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    goto :goto_1a

    .end local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v30    # "appOp":[I
    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .local v2, "parentWindow":Lcom/android/server/wm/WindowState;
    .local v6, "type":I
    .local v7, "callingUid":I
    .restart local v9    # "appOp":[I
    :catchall_17
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v32, v5

    move/from16 v50, v6

    move/from16 v51, v7

    move-object/from16 v30, v9

    move-object v14, v11

    move v2, v12

    move-object/from16 v1, v21

    .end local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .end local v9    # "appOp":[I
    .restart local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v30    # "appOp":[I
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    goto :goto_1a

    .line 1213
    .end local v21    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v30    # "appOp":[I
    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .restart local v1    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v6    # "type":I
    .restart local v7    # "callingUid":I
    .restart local v9    # "appOp":[I
    :cond_46
    move-object/from16 v32, v5

    move/from16 v50, v6

    move/from16 v51, v7

    move-object/from16 v30, v9

    move-object v14, v11

    move v2, v12

    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .end local v9    # "appOp":[I
    .restart local v30    # "appOp":[I
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    :try_start_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Display has not been initialialized"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1588
    .end local v30    # "appOp":[I
    .end local v50    # "type":I
    .end local v51    # "callingUid":I
    .restart local v6    # "type":I
    .restart local v7    # "callingUid":I
    .restart local v9    # "appOp":[I
    :catchall_18
    move-exception v0

    move-object/from16 v32, v5

    move/from16 v50, v6

    move/from16 v51, v7

    move-object/from16 v30, v9

    move-object v14, v11

    move v2, v12

    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .end local v9    # "appOp":[I
    .restart local v30    # "appOp":[I
    .restart local v50    # "type":I
    .restart local v51    # "callingUid":I
    :goto_1a
    monitor-exit v32
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_19
    move-exception v0

    goto :goto_1a
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4741
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4742
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4743
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4744
    return-void

    .line 4743
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public addWindowToken(Landroid/os/IBinder;II)V
    .locals 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "displayId"    # I

    .line 2531
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "addWindowToken()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2535
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2536
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2537
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v2

    move-object v9, v2

    .line 2538
    .local v9, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v9, :cond_0

    .line 2539
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addWindowToken: Attempted to add binder token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for already created window token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2544
    :cond_0
    const/16 v2, 0x7dd

    if-ne p2, v2, :cond_1

    .line 2545
    :try_start_1
    new-instance v2, Lcom/android/server/wm/WallpaperWindowToken;

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WallpaperWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;Z)V

    goto :goto_0

    .line 2548
    :cond_1
    new-instance v2, Lcom/android/server/wm/WindowToken;

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 2550
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v9    # "token":Lcom/android/server/wm/WindowToken;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2551
    return-void

    .line 2550
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2532
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public adjustAppWindowSize(Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "screenOrientation"    # I
    .param p3, "screenDisplayFrame"    # Landroid/graphics/Rect;
    .param p4, "containFrame"    # Landroid/graphics/Rect;
    .param p5, "frame"    # Landroid/graphics/Rect;
    .param p6, "parentFrame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "contentFrame"    # Landroid/graphics/Rect;
    .param p9, "visibleFrame"    # Landroid/graphics/Rect;
    .param p10, "stableFrame"    # Landroid/graphics/Rect;
    .param p11, "outsetFrame"    # Landroid/graphics/Rect;

    .line 8463
    const-class v0, Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 8464
    .local v0, "applicationManagerService":Lcn/nubia/server/appmgmt/ApplicationManagerService;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 8465
    move-object v1, v0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->adjustAppWindowSize(Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 8467
    :cond_0
    return-void
.end method

.method public applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 8274
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 8275
    return-void
.end method

.method canDispatchPointerEvents()Z
    .locals 1

    .line 3608
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canStartRecentsAnimation()Z
    .locals 2

    .line 3054
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3055
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3056
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3058
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3059
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cancelRecentsAnimationSynchronously(ILjava/lang/String;)V
    .locals 1
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;

    .line 3069
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v0, :cond_0

    .line 3072
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationSynchronously(ILjava/lang/String;)V

    .line 3074
    :cond_0
    return-void
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 2515
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 2516
    return v2

    .line 2519
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2521
    return v2

    .line 2523
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2525
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const/4 v1, 0x0

    return v1
.end method

.method checkDrawnWindowsLocked()V
    .locals 3

    .line 6163
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_3

    .line 6166
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_4

    .line 6167
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6172
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 6176
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6179
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    goto :goto_2

    .line 6175
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6166
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6182
    .end local v0    # "j":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6184
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6185
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6187
    :cond_5
    return-void

    .line 6164
    :cond_6
    :goto_3
    return-void
.end method

.method public checkSplitScreenMinimizedChanged(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 3125
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3126
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3127
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 3128
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3129
    return-void

    .line 3128
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cleanupRecentsAnimation(I)V
    .locals 2
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 3077
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3078
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v1, :cond_0

    .line 3079
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->cleanupAnimation(I)V

    .line 3080
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 3081
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 3083
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3084
    return-void

    .line 3083
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearForcedDisplayDensityForUser(II)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "userId"    # I

    .line 5892
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 5898
    if-nez p1, :cond_1

    .line 5902
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "clearForcedDisplayDensityForUser"

    const/4 v7, 0x0

    .line 5902
    move v3, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5905
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5907
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5908
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 5909
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_0

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v5, v0, :cond_0

    .line 5910
    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 5913
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_density_forced"

    const-string v7, ""

    invoke-static {v5, v6, v7, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5915
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5917
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5918
    nop

    .line 5919
    return-void

    .line 5915
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5917
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5899
    .end local v0    # "callingUserId":I
    .end local v1    # "ident":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5895
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearForcedDisplaySize(I)V
    .locals 7
    .param p1, "displayId"    # I

    .line 5812
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 5818
    if-nez p1, :cond_1

    .line 5821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5823
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5824
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5825
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_0

    .line 5826
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V

    .line 5828
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_size_forced"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5831
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5834
    nop

    .line 5835
    return-void

    .line 5831
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5833
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5819
    .end local v0    # "ident":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5815
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6739
    const-string v0, "android.permission.FRAME_STATS"

    const-string v1, "clearWindowContentFrameStats()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6743
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6744
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6745
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6746
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 6748
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 6749
    .local v3, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    if-nez v3, :cond_1

    .line 6750
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 6752
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->clearWindowContentFrameStats()Z

    move-result v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 6753
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    .end local v3    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6741
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FRAME_STATS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method closeSurfaceTransaction(Ljava/lang/String;)V
    .locals 4
    .param p1, "where"    # Ljava/lang/String;

    .line 886
    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "closeSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 887
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->traceStateLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 892
    nop

    .line 893
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 895
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 896
    nop

    .line 897
    return-void

    .line 891
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v3

    .line 893
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 895
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 3482
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3483
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->closeSystemDialogs(Ljava/lang/String;)V

    .line 3484
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3485
    return-void

    .line 3484
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public computeNewConfiguration(I)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "displayId"    # I

    .line 4824
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4825
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(I)Landroid/content/res/Configuration;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4826
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public containsDismissKeyguardWindow(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3242
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3243
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3244
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3245
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public containsShowWhenLockedWindow(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3231
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3232
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3233
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3234
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public continueSurfaceLayout()V
    .locals 2

    .line 3221
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3222
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->continueLayout()V

    .line 3223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3224
    return-void

    .line 3223
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputEventReceiverFactory"    # Landroid/view/InputEventReceiver$Factory;

    .line 6684
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6685
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 6686
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputChannel"    # Landroid/view/InputChannel;

    .line 6691
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6692
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 6693
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 6692
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V

    .line 6694
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6695
    return-void

    .line 6694
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method createWatermarkInTransaction()V
    .locals 8

    .line 6529
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_0

    .line 6530
    return-void

    .line 6533
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/setup.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6534
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 6535
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 6537
    .local v2, "ind":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 6538
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 6539
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 6540
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 6541
    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6542
    .local v4, "toks":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 6544
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 6545
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    new-instance v6, Lcom/android/server/wm/Watermark;

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v6, v5, v7, v4}, Lcom/android/server/wm/Watermark;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6552
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "toks":[Ljava/lang/String;
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    nop

    .line 6554
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6556
    :goto_0
    goto :goto_4

    .line 6555
    :catch_0
    move-exception v3

    goto :goto_0

    .line 6552
    :catchall_0
    move-exception v3

    if-nez v2, :cond_2

    .line 6557
    if-eqz v1, :cond_3

    .line 6559
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 6561
    goto :goto_2

    .line 6560
    :catch_1
    move-exception v4

    goto :goto_2

    .line 6554
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 6556
    :goto_1
    goto :goto_2

    .line 6555
    :catch_2
    move-exception v4

    goto :goto_1

    .line 6561
    :cond_3
    :goto_2
    throw v3

    .line 6550
    :catch_3
    move-exception v3

    .line 6552
    if-eqz v2, :cond_4

    .line 6554
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 6557
    :cond_4
    if-eqz v1, :cond_6

    .line 6559
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 6561
    :goto_3
    goto :goto_4

    .line 6560
    :catch_4
    move-exception v3

    goto :goto_3

    .line 6549
    :catch_5
    move-exception v3

    .line 6552
    if-eqz v2, :cond_5

    .line 6554
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 6557
    :cond_5
    if-eqz v1, :cond_6

    .line 6559
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 6564
    :cond_6
    :goto_4
    return-void
.end method

.method public deferSurfaceLayout()V
    .locals 2

    .line 3212
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3213
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->deferLayout()V

    .line 3214
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3215
    return-void

    .line 3214
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public destroyInputConsumer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 6699
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6700
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 6701
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method destroyPreservedSurfaceLocked()V
    .locals 3

    .line 5613
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5614
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5615
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 5613
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5617
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5618
    return-void
.end method

.method public detectSafeMode()Z
    .locals 9

    .line 4911
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4913
    const-string v0, "WindowManager"

    const-string v1, "Devices still not ready after waiting 500 milliseconds before attempting to detect safe mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4919
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "safe_boot_disallowed"

    .line 4918
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4920
    return v2

    .line 4923
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v1, 0x52

    const/16 v3, -0x100

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v0

    .line 4925
    .local v0, "menuState":I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v5, 0x2f

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v1

    .line 4926
    .local v1, "sState":I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v6, 0x201

    const/16 v7, 0x17

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v5

    .line 4928
    .local v5, "dpadState":I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const v7, 0x10004

    const/16 v8, 0x110

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/input/InputManagerService;->getScanCodeState(III)I

    move-result v6

    .line 4930
    .local v6, "trackballState":I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x19

    invoke-virtual {v7, v4, v3, v8}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v3

    .line 4932
    .local v3, "volumeDownState":I
    const/4 v4, 0x1

    if-gtz v0, :cond_3

    if-gtz v1, :cond_3

    if-gtz v5, :cond_3

    if-gtz v6, :cond_3

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move v7, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v4

    :goto_1
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 4935
    :try_start_0
    const-string/jumbo v7, "persist.sys.safemode"

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "ro.sys.safemode"

    .line 4936
    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    .line 4937
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 4938
    const-string/jumbo v4, "persist.sys.safemode"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4941
    :cond_5
    goto :goto_2

    .line 4940
    :catch_0
    move-exception v4

    .line 4942
    :goto_2
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    if-eqz v4, :cond_6

    .line 4943
    const-string v4, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAFE MODE ENABLED (menu="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " dpad="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " trackball="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    const-string/jumbo v4, "ro.sys.safemode"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    .line 4947
    const-string/jumbo v2, "ro.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 4950
    :cond_6
    const-string v2, "WindowManager"

    const-string v4, "SAFE MODE not enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    invoke-interface {v2, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setSafeMode(Z)V

    .line 4953
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v2
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .line 3350
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 3355
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->isAllowedDisableKeyguard(Landroid/app/AppOpsManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3356
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockscreen uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", have not AppOpsManager.OP_LOCKSCREEN_DISPLAY_WINDOWS permission, ignore disableKeyguard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    return-void

    .line 3362
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3363
    const-string v0, "WindowManager"

    const-string v1, "current mode is SecurityMode, ignore disableKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    return-void

    .line 3368
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3369
    const-string v0, "WindowManager"

    const-string/jumbo v1, "non-current profiles, ignore disableKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    return-void

    .line 3373
    :cond_2
    if-eqz p1, :cond_3

    .line 3377
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v2, 0x1

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/KeyguardDisableHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3379
    return-void

    .line 3374
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3352
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableNonVrUi(Z)V
    .locals 5
    .param p1, "disable"    # Z

    .line 8191
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8193
    xor-int/lit8 v1, p1, 0x1

    .line 8194
    .local v1, "showAlertWindowNotifications":Z
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    if-ne v1, v2, :cond_0

    .line 8195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8197
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    .line 8199
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 8200
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Session;

    .line 8201
    .local v3, "s":Lcom/android/server/wm/Session;
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Session;->setShowingAlertWindowNotificationAllowed(Z)V

    .line 8199
    .end local v3    # "s":Lcom/android/server/wm/Session;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8203
    .end local v1    # "showAlertWindowNotifications":Z
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8204
    return-void

    .line 8203
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 3450
    const-string v0, "android.permission.CONTROL_KEYGUARD"

    const-string v1, "dismissKeyguard"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3453
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3454
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 3455
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3456
    return-void

    .line 3455
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3451
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/wm/Session;

    .line 3593
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3594
    return-void
.end method

.method public displayReady()V
    .locals 5

    .line 4957
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 4958
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4959
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 4960
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->displayReady(I)V

    .line 4958
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4964
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4965
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4966
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    if-lez v3, :cond_1

    .line 4967
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->setMaxUiWidth(I)V

    .line 4969
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 4970
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    .line 4971
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4974
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4976
    goto :goto_1

    .line 4975
    :catch_0
    move-exception v2

    .line 4978
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4979
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    .line 4981
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 4982
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4985
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4987
    goto :goto_2

    .line 4986
    :catch_1
    move-exception v1

    .line 4989
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    .line 4990
    return-void

    .line 4982
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4971
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public dontOverrideDisplayInfo(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 7775
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7776
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7777
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    .line 7785
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    .line 7786
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 7788
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7789
    return-void

    .line 7778
    .restart local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Trying to register a non existent display."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7788
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 7190
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7191
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 5

    .line 3759
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3768
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_0

    .line 3769
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3771
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 3772
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    .line 3775
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x17

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3776
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3778
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->systemBooted()V

    .line 3780
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3781
    return-void

    .line 3776
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public enableScreenIfNeeded()V
    .locals 2

    .line 3785
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3786
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 3787
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3788
    return-void

    .line 3787
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method enableScreenIfNeededLocked()V
    .locals 2

    .line 3799
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_0

    .line 3800
    return-void

    .line 3802
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v0, :cond_1

    .line 3803
    return-void

    .line 3805
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3806
    return-void
.end method

.method public endProlongedAnimations()V
    .locals 0

    .line 3005
    return-void
.end method

.method public executeAppTransition()V
    .locals 4

    .line 3009
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "executeAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3013
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3014
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 3015
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3014
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3017
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 3019
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v2, 0x20

    if-eqz v1, :cond_1

    .line 3020
    const-string v1, "executeAppTransition"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3023
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3025
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v1, :cond_2

    .line 3026
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3030
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3031
    return-void

    .line 3030
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3010
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/IOnKeyguardExitResult;

    .line 3401
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3406
    if-eqz p1, :cond_0

    .line 3410
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$11;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 3420
    return-void

    .line 3407
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3403
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 6
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;

    .line 2493
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2495
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2496
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 2499
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2500
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 2501
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2504
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2505
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2507
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2509
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2510
    nop

    .line 2511
    return-void

    .line 2507
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2509
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method finishSeamlessRotation()V
    .locals 1

    .line 8309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 8310
    return-void
.end method

.method public freezeRotation(I)V
    .locals 6
    .param p1, "rotation"    # I

    .line 4180
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4184
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    .line 4189
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    .line 4193
    .local v1, "defaultDisplayRotation":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4195
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v5, 0x1

    .line 4196
    if-ne p1, v0, :cond_0

    .line 4195
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-interface {v4, v5, v0}, Lcom/android/server/policy/WindowManagerPolicy;->setUserRotationMode(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4198
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4199
    nop

    .line 4201
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 4202
    return-void

    .line 4198
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4185
    .end local v1    # "defaultDisplayRotation":I
    .end local v2    # "origId":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4182
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnimationScale(I)F
    .locals 1
    .param p1, "which"    # I

    .line 3571
    packed-switch p1, :pswitch_data_0

    .line 3576
    const/4 v0, 0x0

    return v0

    .line 3574
    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return v0

    .line 3573
    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return v0

    .line 3572
    :pswitch_2
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .locals 3

    .line 3581
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public getBaseDisplayDensity(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 5850
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5851
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5852
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5853
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5855
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5856
    const/4 v0, -0x1

    return v0

    .line 5855
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;

    .line 5684
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5685
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5686
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5687
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 5688
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 5690
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5691
    return-void

    .line 5690
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCameraLensCoverState()I
    .locals 4

    .line 3645
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .line 3647
    .local v0, "sw":I
    if-lez v0, :cond_0

    .line 3649
    const/4 v1, 0x1

    return v1

    .line 3650
    :cond_0
    if-nez v0, :cond_1

    .line 3652
    const/4 v1, 0x0

    return v1

    .line 3655
    :cond_1
    return v1
.end method

.method public getCurrentAnimatorScale()F
    .locals 2

    .line 3587
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3588
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3589
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCurrentImeTouchRegion()Landroid/graphics/Region;
    .locals 3

    .line 6706
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 6709
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6710
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 6711
    .local v1, "r":Landroid/graphics/Region;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    .line 6712
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 6714
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 6715
    .end local v1    # "r":Landroid/graphics/Region;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6707
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getCurrentImeTouchRegion is restricted to VR services"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
    .locals 2

    .line 7353
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayRotation()I
    .locals 2

    .line 4313
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4314
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4315
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getDefaultDisplyInfoTop()I
    .locals 1

    .line 5999
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->overscanTop:I

    return v0
.end method

.method getDisplayIds()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8515
    .local v0, "re":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8516
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    .line 8517
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 8518
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8517
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8520
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8521
    return-object v0

    .line 8520
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V
    .locals 2
    .param p1, "displaysInFocusOrder"    # Landroid/util/SparseIntArray;

    .line 5993
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5994
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 5995
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5996
    return-void

    .line 5995
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getDockedDividerInsetsLw()I
    .locals 1

    .line 6843
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentInsets()I

    move-result v0

    return v0
.end method

.method public getDockedStackSide()I
    .locals 3

    .line 7510
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7511
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7512
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 7513
    .local v1, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7514
    .end local v1    # "dockedStack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getDragLayerLocked()I
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getFactoryFlag()Z
    .locals 3

    .line 5632
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5633
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsFactoryTest:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->mIsFactoryTest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5635
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->mIsFactoryTest:Z

    return v0
.end method

.method public getFocusedAppPackage()Ljava/lang/String;
    .locals 2

    .line 8507
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowForGesture()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 8508
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getFocusedWindowForGesture()Lcom/android/server/wm/WindowState;
    .locals 2

    .line 4883
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4884
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    .line 4885
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4887
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4888
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getFreeformBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3155
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3156
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3157
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFreeformStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 3158
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_0

    .line 3159
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->getFreeformBounds(Landroid/graphics/Rect;)V

    .line 3160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3162
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3163
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3164
    return-void

    .line 3163
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getGameState()I
    .locals 4

    .line 3630
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .line 3633
    .local v0, "sw":I
    return v0
.end method

.method public getHasVisibleWindowUidSet()[I
    .locals 7

    .line 8404
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 8405
    .local v0, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8406
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8407
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/wm/WindowState;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 8408
    .local v4, "w":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_0

    .line 8409
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->hasContentToDisplay()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    const/4 v6, 0x5

    if-le v5, v6, :cond_0

    iget v5, v4, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-le v5, v6, :cond_0

    .line 8410
    iget v5, v4, Lcom/android/server/wm/WindowState;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8413
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/wm/WindowState;>;"
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    goto :goto_0

    .line 8414
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8415
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 8416
    .local v1, "uidArray":[I
    const/4 v2, 0x0

    .line 8417
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 8418
    .local v4, "uidObj":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 8419
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v2

    .line 8420
    add-int/lit8 v2, v2, 0x1

    .line 8422
    .end local v4    # "uidObj":Ljava/lang/Integer;
    :cond_2
    goto :goto_1

    .line 8424
    :cond_3
    return-object v1

    .line 8414
    .end local v1    # "uidArray":[I
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;
    .locals 1

    .line 4906
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4907
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4906
    :goto_0
    return-object v0
.end method

.method public getInitialDisplayDensity(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 5839
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5840
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5841
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5842
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5844
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5845
    const/4 v0, -0x1

    return v0

    .line 5844
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;

    .line 5673
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5674
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5675
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5676
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 5677
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 5679
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5680
    return-void

    .line 5679
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .locals 1

    .line 3183
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object v0
.end method

.method public getLastOrientation()I
    .locals 3

    .line 8329
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 8330
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 8331
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v2

    return v2
.end method

.method public getLidState()I
    .locals 4

    .line 3614
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, -0x100

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .line 3616
    .local v0, "sw":I
    if-lez v0, :cond_0

    .line 3618
    return v1

    .line 3619
    :cond_0
    if-nez v0, :cond_1

    .line 3621
    const/4 v1, 0x1

    return v1

    .line 3624
    :cond_1
    return v2
.end method

.method public getNavBarPosition()I
    .locals 3

    .line 6671
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6674
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6675
    .local v1, "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 6677
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->getNavBarPosition()I

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 6678
    .end local v1    # "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getNaviGestureStubListener()Landroid/view/INaviGestureStubListener;
    .locals 1

    .line 4897
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getNaviGesStubController()Lcom/android/server/wm/NaviGesStubController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/NaviGesStubController;->getNaviGestureStubListener()Landroid/view/INaviGestureStubListener;

    move-result-object v0

    return-object v0
.end method

.method public getPendingAppTransition()I
    .locals 1

    .line 2907
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    return v0
.end method

.method public getPreferredOptionsPanelGravity()I
    .locals 8

    .line 4416
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4418
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4419
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    .line 4420
    .local v2, "rotation":I
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/16 v5, 0x55

    const v6, 0x800053

    const/16 v7, 0x51

    if-ge v3, v4, :cond_0

    .line 4422
    packed-switch v2, :pswitch_data_0

    .line 4425
    monitor-exit v0

    goto :goto_0

    .line 4431
    :pswitch_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 4429
    :pswitch_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 4427
    :pswitch_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 4425
    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 4436
    :cond_0
    packed-switch v2, :pswitch_data_1

    .line 4439
    :try_start_3
    monitor-exit v0

    goto :goto_1

    .line 4445
    :pswitch_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 4443
    :pswitch_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 4441
    :pswitch_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 4439
    :goto_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 4447
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "rotation":I
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getProcessWindowVisibleState(I)Z
    .locals 6
    .param p1, "uid"    # I

    .line 8338
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8339
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8340
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/wm/WindowState;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 8341
    .local v3, "w":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/server/wm/WindowState;->mUid:I

    if-ne v4, p1, :cond_0

    .line 8342
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasContentToDisplay()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-le v4, v5, :cond_0

    .line 8343
    const/4 v1, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 8346
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/wm/WindowState;>;"
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    goto :goto_0

    .line 8347
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 8348
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;
    .locals 1

    .line 3046
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    return-object v0
.end method

.method getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;
    .locals 1

    .line 8441
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8442
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    if-nez v0, :cond_1

    .line 8443
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 8444
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 8446
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    return-object v0
.end method

.method public getStableInsets(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7649
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7650
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 7651
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7652
    return-void

    .line 7651
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getStableInsetsLocked(ILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "outInsets"    # Landroid/graphics/Rect;

    .line 7655
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 7656
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7657
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 7658
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 7659
    .local v1, "di":Landroid/view/DisplayInfo;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v3, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 7662
    .end local v1    # "di":Landroid/view/DisplayInfo;
    :cond_0
    return-void
.end method

.method public getStackBounds(IILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3139
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3140
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 3141
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_0

    .line 3142
    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 3143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3145
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 3146
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3147
    return-void

    .line 3146
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskSnapshot(IIZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "reducedResolution"    # Z

    .line 4153
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getTaskSnapshotController()Lcom/android/server/wm/TaskSnapshotController;
    .locals 1

    .line 4892
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    return-object v0
.end method

.method public getTransitionAnimationScaleLocked()F
    .locals 1

    .line 3562
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchManager;->isSwitching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3563
    const/4 v0, 0x0

    return v0

    .line 3566
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F

    move-result v0

    return v0
.end method

.method public getWallpaperPositionX()F
    .locals 2

    .line 8384
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 8385
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 8386
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    return v1

    .line 8388
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getWallpaperPositionY()F
    .locals 2

    .line 8394
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 8395
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 8396
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    return v1

    .line 8398
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getWindowAnimationScaleLocked()F
    .locals 1

    .line 3557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F

    move-result v0

    return v0
.end method

.method public getWindowAnimatorHandler()Landroid/os/Handler;
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimatorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6758
    const-string v0, "android.permission.FRAME_STATS"

    const-string v1, "getWindowContentFrameStats()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6762
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6763
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6764
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6765
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 6767
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 6768
    .local v3, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    if-nez v3, :cond_1

    .line 6769
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 6771
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    if-nez v4, :cond_2

    .line 6772
    new-instance v4, Landroid/view/WindowContentFrameStats;

    invoke-direct {v4}, Landroid/view/WindowContentFrameStats;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    .line 6774
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    .line 6775
    .local v4, "stats":Landroid/view/WindowContentFrameStats;
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 6776
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 6778
    :cond_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    .line 6779
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    .end local v3    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    .end local v4    # "stats":Landroid/view/WindowContentFrameStats;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6760
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FRAME_STATS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "outDisplayFrame"    # Landroid/graphics/Rect;

    .line 1916
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1917
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1918
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    .line 1919
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1920
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1922
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1923
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1924
    return-void

    .line 1923
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1939
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1940
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1941
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 1942
    .end local v1    # "window":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowManagerLock()Ljava/lang/Object;
    .locals 1

    .line 7413
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    return-object v0
.end method

.method handleAnimatingStoppedAndTransitionLocked()I
    .locals 5

    .line 6122
    const/4 v0, 0x0

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->noteAppTransitionAnimation(Z)V

    .line 6125
    const/4 v0, 0x0

    .line 6126
    .local v0, "changes":I
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6127
    const-wide/16 v3, 0x20

    const-string v1, "app transition animation"

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 6135
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setIdle()V

    .line 6137
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6138
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 6139
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 6137
    .end local v3    # "token":Landroid/os/IBinder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6141
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6144
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6146
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->hideDeferredWallpapersIfNeeded()V

    .line 6148
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    .line 6150
    or-int/2addr v0, v2

    .line 6151
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    const-string v4, "Wallpaper layer changed: assigning layers + relayout"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6153
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 6154
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v2, v3, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 6157
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 6159
    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .line 6720
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method hasWideColorGamutSupport()Z
    .locals 3

    .line 8207
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.sf.native_mode"

    .line 8208
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8207
    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public hideBootMessagesLocked()V
    .locals 1

    .line 3952
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_0

    .line 3953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 3954
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->hideBootMessages()V

    .line 3956
    :cond_0
    return-void
.end method

.method public inSurfaceTransaction(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "exec"    # Ljava/lang/Runnable;

    .line 8179
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8180
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8182
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8184
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 8185
    nop

    .line 8186
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8187
    return-void

    .line 8184
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    .line 8186
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V
    .locals 2
    .param p1, "targetActivityType"    # I
    .param p2, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p3, "callbacks"    # Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .param p4, "displayId"    # I
    .param p5, "recentTaskIds"    # Landroid/util/SparseBooleanArray;

    .line 3037
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3038
    new-instance v1, Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/wm/RecentsAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 3040
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 3041
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1, p5}, Lcom/android/server/wm/RecentsAnimationController;->initialize(ILandroid/util/SparseBooleanArray;)V

    .line 3042
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3043
    return-void

    .line 3042
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 5649
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5651
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5652
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5663
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 5664
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 5665
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5667
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5668
    const/4 v0, 0x0

    return v0

    .line 5667
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 7665
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7666
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 7667
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 7668
    return-void
.end method

.method public isAnyWindowVisibleForUid(I)Z
    .locals 4
    .param p1, "callingUid"    # I

    .line 6822
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6823
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$WW-eTe74GlEZ-In74G0o1AzCjEo;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$WW-eTe74GlEZ-In74G0o1AzCjEo;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 6826
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isAppTransitionSkipped()Z
    .locals 1

    .line 8435
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getNaviGesStubController()Lcom/android/server/wm/NaviGesStubController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/NaviGesStubController;->isAppTransitionSkipped()Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 3751
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 3752
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 3753
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_1

    return v1

    .line 3752
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3755
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public isDownNaviEvent(II)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 7569
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isMultiScreenOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isNavigesEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7572
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 7573
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v7, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 7574
    .local v7, "rotation":I
    iget v8, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 7575
    .local v8, "width":I
    iget v9, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 7576
    .local v9, "height":I
    move-object v1, p0

    move v2, v7

    move v3, p1

    move v4, p2

    move v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->isDownNaviEvent(IIIII)Z

    move-result v1

    return v1

    .line 7570
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v7    # "rotation":I
    .end local v8    # "width":I
    .end local v9    # "height":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .line 3424
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 4

    .line 3433
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3434
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3436
    .local v1, "origId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3438
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3436
    return v3

    .line 3438
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 1

    .line 3428
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isKeyguardTrusted()Z
    .locals 2

    .line 3261
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3262
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardTrustedLw()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3263
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isLandscapeSwipe()Z
    .locals 2

    .line 8491
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    .line 8492
    .local v0, "ss":Lnubia/os/screenswitch/ScreenSwitchInternal;
    if-eqz v0, :cond_0

    .line 8493
    invoke-virtual {v0}, Lnubia/os/screenswitch/ScreenSwitchInternal;->isLandscapeSwipe()Z

    move-result v1

    return v1

    .line 8495
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isMultiScreenOpen()Z
    .locals 3

    .line 7548
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ss_multi_window_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public isNavigesEnable()Z
    .locals 3

    .line 7553
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navi_ges_flag"

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 7555
    .local v0, "flag":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRotationFrozen()Z
    .locals 2

    .line 4320
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUserRotationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSafeModeEnabled()Z
    .locals 1

    .line 6734
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method isSecureLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1688
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1689
    return v1

    .line 1691
    :cond_0
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 1692
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1691
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1693
    return v1

    .line 1695
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingDream()Z
    .locals 2

    .line 3443
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3444
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isShowingDreamLw()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3445
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isThreeFingerLeft()Z
    .locals 2

    .line 8477
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    .line 8478
    .local v0, "ss":Lnubia/os/screenswitch/ScreenSwitchInternal;
    if-eqz v0, :cond_0

    .line 8479
    invoke-virtual {v0}, Lnubia/os/screenswitch/ScreenSwitchInternal;->isThreeFingerLeft()Z

    move-result v1

    return v1

    .line 8481
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isThreeFingerSwipe()Z
    .locals 2

    .line 8469
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    .line 8470
    .local v0, "ss":Lnubia/os/screenswitch/ScreenSwitchInternal;
    if-eqz v0, :cond_0

    .line 8471
    invoke-virtual {v0}, Lnubia/os/screenswitch/ScreenSwitchInternal;->isThreeFingerSwipe()Z

    move-result v1

    return v1

    .line 8473
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isValidPictureInPictureAspectRatio(IF)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "aspectRatio"    # F

    .line 3132
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3133
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    return v1
.end method

.method public isViewServerRunning()Z
    .locals 3

    .line 4532
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4533
    return v1

    .line 4536
    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string/jumbo v2, "isViewServerRunning"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4537
    return v1

    .line 4540
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public isWindowTraceEnabled()Z
    .locals 1

    .line 6062
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public lockDeviceNow()V
    .locals 1

    .line 3639
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 3640
    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .line 6725
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    .line 6726
    return-void
.end method

.method makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .locals 1
    .param p1, "s"    # Landroid/view/SurfaceSession;

    .line 8278
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/SurfaceBuilderFactory;->make(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 6100
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 6102
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 6103
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 6104
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 6105
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-nez v1, :cond_0

    .line 6106
    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 6109
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6110
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 6114
    :cond_0
    return-void
.end method

.method markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "seamlesslyRotated"    # Z

    .line 7811
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-ne p2, v0, :cond_0

    .line 7812
    return-void

    .line 7814
    :cond_0
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 7815
    if-eqz p2, :cond_1

    .line 7816
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    goto :goto_0

    .line 7818
    :cond_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 7820
    :goto_0
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    if-nez v0, :cond_2

    .line 7824
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->finishSeamlessRotation()V

    .line 7826
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7827
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7828
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7829
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 7832
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    return-void
.end method

.method public monitor()V
    .locals 2

    .line 7346
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7347
    return-void

    .line 7346
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunchesCleared(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6801
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6802
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6803
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 6804
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearRelaunching()V

    .line 6806
    .end local v1    # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6807
    return-void

    .line 6806
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunching(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6783
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6784
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6785
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 6786
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startRelaunching()V

    .line 6788
    .end local v1    # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6789
    return-void

    .line 6788
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunchingFinished(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6792
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6793
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6794
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 6795
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->finishRelaunching()V

    .line 6797
    .end local v1    # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6798
    return-void

    .line 6797
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppResumedFinished(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6810
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6811
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6812
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 6813
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyAppResumedFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 6815
    .end local v1    # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6816
    return-void

    .line 6815
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppTransitionFinish(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 8372
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceNotifier:Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;

    if-eqz v0, :cond_0

    .line 8373
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceNotifier:Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;

    invoke-virtual {v0, p1}, Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;->notifyAppTransitionFinish(Ljava/lang/String;)V

    .line 8374
    :cond_0
    return-void
.end method

.method public notifyAppTransitionStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 8367
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceNotifier:Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;

    if-eqz v0, :cond_0

    .line 8368
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceNotifier:Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;

    invoke-virtual {v0, p1}, Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;->notifyAppTransitionStart(Ljava/lang/String;)V

    .line 8369
    :cond_0
    return-void
.end method

.method notifyHardKeyboardStatusChange()V
    .locals 3

    .line 4842
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4843
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

    .line 4844
    .local v1, "listener":Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 4845
    .local v2, "available":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4846
    if-eqz v1, :cond_0

    .line 4847
    invoke-interface {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(Z)V

    .line 4849
    :cond_0
    return-void

    .line 4845
    .end local v1    # "listener":Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;
    .end local v2    # "available":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 3254
    if-eqz p1, :cond_0

    .line 3255
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$5dMkMeana3BB2vTfpghrIR2jQMg;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$5dMkMeana3BB2vTfpghrIR2jQMg;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3256
    :cond_0
    const/4 v0, 0x0

    .line 3257
    .local v0, "wrappedCallback":Ljava/lang/Runnable;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x38

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3258
    return-void
.end method

.method public notifyKeyguardTrustedChanged()V
    .locals 2

    .line 3188
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3189
    return-void
.end method

.method public notifyShowingDreamChanged()V
    .locals 1

    .line 3178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V

    .line 3179
    return-void
.end method

.method public notifySurfaceFirstShown(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 8377
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceNotifier:Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;

    if-eqz v0, :cond_0

    .line 8378
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceNotifier:Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;

    invoke-virtual {v0, p1}, Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;->notifySurfaceFirstShown(Ljava/lang/String;)V

    .line 8379
    :cond_0
    return-void
.end method

.method public notifyTaskRemovedFromRecents(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 6836
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6837
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 6838
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6839
    return-void

    .line 6838
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayAdded(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 7357
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7358
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 7359
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 7360
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->displayReady(I)V

    .line 7362
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 7363
    .end local v1    # "display":Landroid/view/Display;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7364
    return-void

    .line 7363
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 7402
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7403
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7404
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    .line 7405
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 7407
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 7408
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7409
    return-void

    .line 7408
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 7367
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7368
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    .line 7369
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 7370
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7371
    return-void

    .line 7370
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onInitReady()V
    .locals 2

    .line 1134
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->initPolicy()V

    .line 1137
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1141
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->createWatermarkInTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    const-string v0, "createWatermarkInTransaction"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1144
    nop

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlayIfNeeded()V

    .line 1148
    new-instance v0, Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceNotifier:Lcn/nubia/server/wm/NubiaSurfaceStateNotifier;

    .line 1149
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->initThread()V

    .line 1151
    return-void

    .line 1143
    :catchall_0
    move-exception v0

    const-string v1, "createWatermarkInTransaction"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method public onKeyguardOccludedChanged(Z)V
    .locals 2
    .param p1, "occluded"    # Z

    .line 3459
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3460
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->onKeyguardOccludedChangedLw(Z)V

    .line 3461
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3462
    return-void

    .line 3461
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onKeyguardShowingAndNotOccludedChanged()V
    .locals 2

    .line 3203
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3204
    return-void
.end method

.method public onLockTaskStateChanged(I)V
    .locals 2
    .param p1, "lockTaskState"    # I

    .line 8322
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8323
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->onLockTaskStateChangedLw(I)V

    .line 8324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8325
    return-void

    .line 8324
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onNavigesWindowChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 7587
    if-eqz p2, :cond_1

    const-string v0, "Splash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.camera"

    .line 7588
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.incallui"

    .line 7589
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.nubia.voiceassistants"

    .line 7590
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.nubia.calculator2.preset"

    .line 7591
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7592
    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNavigesWindowChanged type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7593
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->onWindowChanged(ILjava/lang/String;)V

    .line 7595
    :cond_1
    return-void
.end method

.method public onOverlayChanged()V
    .locals 2

    .line 7385
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7386
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->onOverlayChangedLw()V

    .line 7387
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 7388
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 7389
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7390
    return-void

    .line 7389
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .line 1927
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1928
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_0

    .line 1929
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1931
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_0

    .line 1932
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/AccessibilityController;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    .line 1935
    .end local v1    # "window":Lcom/android/server/wm/WindowState;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1936
    return-void

    .line 1935
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "result"    # Landroid/os/ResultReceiver;

    .line 975
    new-instance v0, Lcom/android/server/wm/WindowManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerShellCommand;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 976
    return-void
.end method

.method public onSystemUiStarted()V
    .locals 1

    .line 3823
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->onSystemUiStarted()V

    .line 3824
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1172
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1173
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 1177
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    :cond_0
    throw v0
.end method

.method public onWindowChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 7580
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7581
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 7582
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->onWindowChanged(ILjava/lang/String;)V

    .line 7584
    :cond_0
    return-void
.end method

.method public openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .locals 2
    .param p1, "callback"    # Landroid/view/IWindowSessionCallback;
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .line 5641
    if-eqz p2, :cond_1

    .line 5642
    if-eqz p3, :cond_0

    .line 5643
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    .line 5644
    .local v0, "session":Lcom/android/server/wm/Session;
    return-object v0

    .line 5642
    .end local v0    # "session":Lcom/android/server/wm/Session;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null inputContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5641
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method openSurfaceTransaction()V
    .locals 4

    .line 871
    const-wide/16 v0, 0x20

    :try_start_0
    const-string/jumbo v2, "openSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 872
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 873
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 874
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 876
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 877
    nop

    .line 878
    return-void

    .line 874
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 876
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .locals 8
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;

    .line 2477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2480
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2481
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 2482
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_0

    .line 2483
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2488
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2483
    return v3

    .line 2485
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v7, "from-client"

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move-result v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2488
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2485
    return v3

    .line 2486
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2488
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .line 2913
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2914
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 2916
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2917
    return-void

    .line 2916
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 11
    .param p1, "srcThumb"    # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    move-object v1, p0

    .line 2950
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2951
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    .line 2953
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2954
    return-void

    .line 2953
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionClipReveal(IIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 2931
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2932
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    .line 2934
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2935
    return-void

    .line 2934
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionInPlace(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .line 2975
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2976
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AppTransition;->overrideInPlaceAppTransition(Ljava/lang/String;I)V

    .line 2977
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2978
    return-void

    .line 2977
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 2
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .line 2960
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2961
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 2964
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2965
    return-void

    .line 2964
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 2
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .line 2984
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2985
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 2987
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2988
    return-void

    .line 2987
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .locals 2
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 2992
    const-string v0, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v1, "overridePendingAppTransitionRemote()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2997
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2998
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 2999
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3000
    return-void

    .line 2999
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2994
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public overridePendingAppTransitionScaleUp(IIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 2922
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2923
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    .line 2925
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2926
    return-void

    .line 2925
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionStartCrossProfileApps()V
    .locals 2

    .line 2968
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2969
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionStartCrossProfileApps()V

    .line 2970
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2971
    return-void

    .line 2970
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .locals 7
    .param p1, "srcThumb"    # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .line 2940
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2941
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    .line 2943
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2944
    return-void

    .line 2943
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method pauseRotationLocked()V
    .locals 1

    .line 4251
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    .line 4252
    return-void
.end method

.method public performBootTimeout()V
    .locals 3

    .line 3809
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3810
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_0

    .line 3811
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3813
    :cond_0
    :try_start_1
    const-string v1, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 3815
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3816
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3817
    return-void

    .line 3815
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1946
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1947
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1948
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_0

    .line 1949
    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowState;->pokeDrawLockLw(J)V

    .line 1951
    .end local v1    # "window":Lcom/android/server/wm/WindowState;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1952
    return-void

    .line 1951
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1742
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    :try_start_0
    iget v0, p1, Lcom/android/server/wm/WindowState;->mPid:I

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->noteRemoveWindow(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1749
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 1751
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetAppOpsState()V

    .line 1753
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_0

    .line 1754
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1757
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1758
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 1759
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1762
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_1

    .line 1763
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 1766
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1767
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1770
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1771
    iget-boolean v4, v2, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    if-nez v4, :cond_2

    .line 1772
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    goto :goto_1

    .line 1773
    :cond_2
    if-eqz v3, :cond_3

    .line 1776
    iput-boolean v0, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 1777
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1778
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1779
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_3

    .line 1780
    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 1785
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 1786
    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 1789
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1790
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7dd

    if-ne v4, v5, :cond_5

    .line 1791
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    .line 1792
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_2

    .line 1793
    :cond_5
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 1794
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1797
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->isInLayout()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1798
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 1799
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1800
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_7

    .line 1801
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1805
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1806
    return-void
.end method

.method public prepareAppTransition(IZ)V
    .locals 1
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z

    .line 2877
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    .line 2878
    return-void
.end method

.method public prepareAppTransition(IZIZ)V
    .locals 5
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "flags"    # I
    .param p4, "forceOverride"    # Z

    .line 2891
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2894
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2895
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->prepareAppTransitionLocked(IZIZ)Z

    move-result v1

    .line 2898
    .local v1, "prepared":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2899
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2900
    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 2902
    .end local v1    # "prepared":Z
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2903
    return-void

    .line 2902
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2892
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reboot(Z)V
    .locals 2
    .param p1, "confirm"    # Z

    .line 3687
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3689
    return-void
.end method

.method public rebootSafeMode(Z)V
    .locals 1
    .param p1, "confirm"    # Z

    .line 3695
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    .line 3697
    return-void
.end method

.method reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 8
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 5954
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5955
    return-void

    .line 5958
    :cond_0
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v1, 0x20

    if-eqz v0, :cond_1

    .line 5959
    const-string/jumbo v0, "reconfigureDisplayLocked"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5962
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 5963
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5965
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 5966
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v3

    .line 5967
    .local v3, "configChanged":Z
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 5968
    .local v4, "currentDisplayConfig":Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5969
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v5}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 5970
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    or-int/2addr v3, v5

    .line 5972
    if-eqz v3, :cond_3

    .line 5973
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 5974
    invoke-virtual {p0, v7, v7, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 5976
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 5979
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5981
    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_4

    .line 5982
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5985
    :cond_4
    return-void
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3383
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3388
    if-eqz p1, :cond_0

    .line 3392
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3394
    return-void

    .line 3389
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3385
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reevaluateStatusBarVisibility()V
    .locals 5

    .line 6645
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6647
    sget-boolean v1, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v2, 0x20

    if-eqz v1, :cond_0

    .line 6648
    const-string/jumbo v1, "reevaluateStatusBarVisibility"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6651
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-interface {v1, v4}, Lcom/android/server/policy/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v1

    .line 6652
    .local v1, "visibility":I
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6653
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 6656
    :cond_1
    sget-boolean v4, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v4, :cond_2

    .line 6657
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 6660
    .end local v1    # "visibility":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6661
    return-void

    .line 6660
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public refreshScreenCaptureDisabled(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1705
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1709
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1711
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1712
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v3

    .line 1711
    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->setSecureSurfaceState(IZ)V

    .line 1713
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1714
    return-void

    .line 1713
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 1706
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system can call refreshScreenCaptureDisabled."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    .line 8136
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8137
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8139
    :cond_0
    return-void
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    .line 7610
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerDockedStackListener()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7612
    return-void

    .line 7614
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7616
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 7618
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7619
    return-void

    .line 7618
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "listener"    # Landroid/view/IPinnedStackListener;

    .line 7623
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerPinnedStackListener()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7625
    return-void

    .line 7627
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_1

    .line 7628
    return-void

    .line 7630
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7631
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7632
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/wm/PinnedStackController;->registerPinnedStackListener(Landroid/view/IPinnedStackListener;)V

    .line 7633
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7634
    return-void

    .line 7633
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 3598
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3599
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 2
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutKeyReceiver"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7794
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerShortcutKey"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7798
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 7799
    return-void

    .line 7795
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires REGISTER_WINDOW_MANAGER_LISTENERS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z
    .locals 5
    .param p1, "listener"    # Landroid/view/IWallpaperVisibilityListener;
    .param p2, "displayId"    # I

    .line 4377
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4378
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4379
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    .line 4383
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 4384
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4380
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to register visibility event for invalid display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4385
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I
    .locals 43
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "seq"    # I
    .param p4, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "requestedWidth"    # I
    .param p6, "requestedHeight"    # I
    .param p7, "viewVisibility"    # I
    .param p8, "flags"    # I
    .param p9, "frameNumber"    # J
    .param p11, "outFrame"    # Landroid/graphics/Rect;
    .param p12, "outOverscanInsets"    # Landroid/graphics/Rect;
    .param p13, "outContentInsets"    # Landroid/graphics/Rect;
    .param p14, "outVisibleInsets"    # Landroid/graphics/Rect;
    .param p15, "outStableInsets"    # Landroid/graphics/Rect;
    .param p16, "outOutsets"    # Landroid/graphics/Rect;
    .param p17, "outBackdropFrame"    # Landroid/graphics/Rect;
    .param p18, "outCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;
    .param p19, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p20, "outSurface"    # Landroid/view/Surface;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p19

    .line 1983
    move-object/from16 v6, p20

    const/16 v16, 0x0

    .line 1985
    .local v16, "result":I
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    .line 1986
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    move/from16 v17, v0

    .line 1988
    .local v17, "hasStatusBarPermission":Z
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    .line 1989
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    move v3, v0

    .line 1992
    .local v3, "hasStatusBarServicePermission":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1995
    .local v1, "origId":J
    iget-object v6, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1996
    invoke-virtual {v7, v8, v9, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_19

    move-object/from16 v19, v0

    .line 1997
    .local v19, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v5, v19

    if-nez v5, :cond_2

    .line 1998
    .end local v19    # "win":Lcom/android/server/wm/WindowState;
    .local v5, "win":Lcom/android/server/wm/WindowState;
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 2387
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide v8, v1

    move/from16 v32, v3

    move-object/from16 v18, v6

    goto/16 :goto_21

    .line 2001
    .restart local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_2
    sget-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_19

    move-object/from16 v21, v6

    const/16 v6, 0x7db

    if-nez v0, :cond_4

    :try_start_3
    sget-boolean v0, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_2

    .line 2009
    :cond_3
    move-wide/from16 v24, v1

    move/from16 v26, v3

    move v15, v4

    move-object/from16 v27, v5

    move-object/from16 v18, v21

    goto/16 :goto_3

    .line 2387
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    :catchall_1
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide v8, v1

    move/from16 v32, v3

    move-object/from16 v18, v21

    goto/16 :goto_21

    .line 2001
    .restart local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplyInfoTop()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_18

    if-eqz v0, :cond_6

    if-eqz v10, :cond_6

    :try_start_5
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eq v0, v6, :cond_5

    :try_start_6
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d8

    if-eq v0, v6, :cond_5

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v6, 0x7dc

    if-ne v0, v6, :cond_3

    .line 2003
    :cond_5
    :try_start_7
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2004
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_6

    .line 2005
    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v24, v1

    move-object v1, v7

    .line 2005
    .end local v1    # "origId":J
    .local v24, "origId":J
    move-object v2, v0

    move/from16 v26, v3

    move v3, v6

    .line 2005
    .end local v3    # "hasStatusBarServicePermission":Z
    .local v26, "hasStatusBarServicePermission":Z
    move v6, v4

    move/from16 v4, v19

    move-object/from16 v27, v5

    move/from16 v5, v22

    .line 2005
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    .local v27, "win":Lcom/android/server/wm/WindowState;
    move v15, v6

    move-object/from16 v18, v21

    move/from16 v6, v23

    :try_start_8
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2005
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    goto :goto_3

    .line 2387
    .end local v24    # "origId":J
    .end local v26    # "hasStatusBarServicePermission":Z
    .end local v27    # "win":Lcom/android/server/wm/WindowState;
    .restart local v1    # "origId":J
    .restart local v3    # "hasStatusBarServicePermission":Z
    :catchall_2
    move-exception v0

    move-object/from16 v18, v21

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide v8, v1

    move/from16 v32, v3

    .line 2387
    .end local v1    # "origId":J
    .end local v3    # "hasStatusBarServicePermission":Z
    .restart local v24    # "origId":J
    .restart local v26    # "hasStatusBarServicePermission":Z
    goto/16 :goto_21

    .line 2009
    .end local v24    # "origId":J
    .end local v26    # "hasStatusBarServicePermission":Z
    .restart local v1    # "origId":J
    .restart local v3    # "hasStatusBarServicePermission":Z
    .restart local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_6
    move-wide/from16 v24, v1

    move/from16 v26, v3

    move v15, v4

    move-object/from16 v27, v5

    move-object/from16 v18, v21

    .line 2009
    .end local v1    # "origId":J
    .end local v3    # "hasStatusBarServicePermission":Z
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    .restart local v24    # "origId":J
    .restart local v26    # "hasStatusBarServicePermission":Z
    .restart local v27    # "win":Lcom/android/server/wm/WindowState;
    :goto_3
    move-object/from16 v1, v27

    :try_start_9
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 2009
    .end local v27    # "win":Lcom/android/server/wm/WindowState;
    .local v1, "win":Lcom/android/server/wm/WindowState;
    move v2, v0

    .line 2011
    .local v2, "displayId":I
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_17

    const-wide/16 v3, 0x20

    if-eqz v0, :cond_7

    .line 2012
    :try_start_a
    const-string/jumbo v0, "relayoutWindow"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    .line 2387
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "displayId":I
    :catchall_3
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide/from16 v8, v24

    move/from16 v32, v26

    goto/16 :goto_21

    .line 2016
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    .restart local v2    # "displayId":I
    :cond_7
    :goto_4
    :try_start_b
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_17

    const/16 v5, 0x7d3

    const/4 v6, 0x3

    if-ne v0, v5, :cond_9

    :try_start_c
    iget v0, v1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_9

    .line 2017
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2018
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 2019
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v19

    .line 2020
    .local v19, "height":I
    mul-int/lit8 v20, v5, 0x2

    div-int/lit8 v3, v20, 0x3

    if-lt v11, v3, :cond_8

    mul-int/lit8 v3, v19, 0x2

    div-int/2addr v3, v6

    if-ge v12, v3, :cond_9

    .line 2021
    :cond_8
    iget-object v3, v7, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, v1, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v15

    .line 2022
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    .line 2021
    invoke-virtual {v3, v4, v15, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 2023
    .local v3, "startOpResult":I
    if-eqz v3, :cond_9

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    .line 2025
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wm/WindowManagerService;->removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 2031
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "startOpResult":I
    .end local v5    # "width":I
    .end local v19    # "height":I
    :cond_9
    :try_start_d
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_17

    const/16 v5, 0x54

    const/high16 v6, 0x400000

    const/high16 v15, 0x80000

    if-eqz v0, :cond_b

    :try_start_e
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2032
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v15

    .line 2033
    .local v0, "isShowWhenLocked":I
    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v15, v6

    .line 2035
    .local v15, "isDismissKeyguard":I
    if-nez v0, :cond_a

    if-eqz v15, :cond_b

    .line 2036
    :cond_a
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/wm/Session;->mUid:I

    invoke-direct {v7, v6, v3}, Lcom/android/server/wm/WindowManagerService;->isDefaultAllowed(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v7, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v6, v8, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2037
    invoke-virtual {v3, v5, v6, v4}, Landroid/app/AppOpsManager;->noteOpForM(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_b

    .line 2038
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not allowed showing windows at lockscreen"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x80001

    and-int/2addr v4, v6

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2041
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x400001

    and-int/2addr v4, v6

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2045
    .end local v0    # "isShowWhenLocked":I
    .end local v15    # "isDismissKeyguard":I
    :cond_b
    if-eqz v10, :cond_d

    iget-object v0, v10, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 2046
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    .line 2047
    .restart local v0    # "isShowWhenLocked":I
    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    .line 2048
    .local v3, "isDismissKeyguard":I
    if-nez v0, :cond_c

    if-eqz v3, :cond_d

    .line 2049
    :cond_c
    iget-object v4, v10, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v6, v8, Lcom/android/server/wm/Session;->mUid:I

    invoke-direct {v7, v4, v6}, Lcom/android/server/wm/WindowManagerService;->isDefaultAllowed(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v7, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v6, v8, Lcom/android/server/wm/Session;->mUid:I

    iget-object v15, v10, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2050
    invoke-virtual {v4, v5, v6, v15}, Landroid/app/AppOpsManager;->noteOpForM(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_d

    .line 2051
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v10, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not allowed showing windows at lockscreen , so remove attrs flags."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x80001

    and-int/2addr v4, v5

    iput v4, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2054
    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x400001

    and-int/2addr v4, v5

    iput v4, v10, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 2060
    .end local v0    # "isShowWhenLocked":I
    .end local v3    # "isDismissKeyguard":I
    :cond_d
    :try_start_f
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_17

    move-object v3, v0

    .line 2061
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/16 v0, 0x8

    if-eq v13, v0, :cond_e

    .line 2062
    :try_start_10
    invoke-virtual {v1, v11, v12}, Lcom/android/server/wm/WindowState;->setRequestedSize(II)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 2065
    :cond_e
    move-wide/from16 v4, p9

    :try_start_11
    invoke-virtual {v1, v4, v5}, Lcom/android/server/wm/WindowState;->setFrameNumber(J)V

    .line 2067
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mPendingForcedSeamlessRotate:Lcom/android/server/wm/ForcedSeamlessRotator;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_17

    if-eqz v6, :cond_f

    :try_start_12
    iget-boolean v6, v7, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v6, :cond_f

    .line 2068
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mPendingForcedSeamlessRotate:Lcom/android/server/wm/ForcedSeamlessRotator;

    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v6, v15, v1}, Lcom/android/server/wm/ForcedSeamlessRotator;->finish(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;)V

    .line 2069
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/wm/WindowState;->mFinishForcedSeamlessRotateFrameNumber:J

    .line 2070
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/wm/WindowState;->mPendingForcedSeamlessRotate:Lcom/android/server/wm/ForcedSeamlessRotator;

    .line 2073
    :cond_f
    if-eqz v10, :cond_10

    iget-object v4, v10, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_10

    iget-object v4, v10, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v5, "com.zlongame.hxsy"

    .line 2074
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2075
    const/16 v4, 0x1007

    iput v4, v10, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 2079
    :cond_10
    const/4 v4, 0x0

    .line 2080
    .local v4, "attrChanges":I
    const/4 v5, 0x0

    .line 2081
    .local v5, "flagChanges":I
    if-eqz v10, :cond_19

    .line 2082
    :try_start_13
    iget-object v6, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move/from16 v15, v26

    :try_start_14
    invoke-interface {v6, v1, v10, v15}, Lcom/android/server/policy/WindowManagerPolicy;->adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V

    .line 2084
    .end local v26    # "hasStatusBarServicePermission":Z
    .local v15, "hasStatusBarServicePermission":Z
    iget v6, v1, Lcom/android/server/wm/WindowState;->mSeq:I

    move/from16 v28, v4

    move/from16 v4, p3

    if-ne v4, v6, :cond_12

    .line 2085
    .end local v4    # "attrChanges":I
    .local v28, "attrChanges":I
    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v6

    .line 2087
    .local v0, "systemUiVisibility":I
    const/high16 v6, 0x3ff0000

    and-int/2addr v6, v0

    if-eqz v6, :cond_11

    .line 2088
    if-nez v17, :cond_11

    .line 2089
    const v6, -0x3ff0001

    and-int/2addr v0, v6

    .line 2092
    :cond_11
    iput v0, v1, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 2094
    .end local v0    # "systemUiVisibility":I
    :cond_12
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v6, :cond_18

    .line 2100
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_13

    .line 2102
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2103
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2104
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2105
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2108
    :cond_13
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v4, v6

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v5, v4

    .line 2109
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v10}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    move v4, v0

    .line 2110
    .end local v28    # "attrChanges":I
    .restart local v4    # "attrChanges":I
    and-int/lit16 v0, v4, 0x4001

    if-eqz v0, :cond_14

    .line 2112
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    goto :goto_5

    .line 2114
    :cond_14
    const/4 v6, 0x1

    :goto_5
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_16

    const/high16 v0, 0x80000

    and-int v19, v5, v0

    if-nez v19, :cond_15

    const/high16 v0, 0x400000

    and-int/2addr v0, v5

    if-eqz v0, :cond_16

    .line 2116
    :cond_15
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 2118
    :cond_16
    const/high16 v0, 0x2000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_17

    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_17

    .line 2120
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_17

    .line 2122
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 2125
    :cond_17
    const/high16 v0, 0x80000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1a

    .line 2126
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2127
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    .line 2126
    invoke-virtual {v7, v1, v0}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_7

    .line 2095
    .end local v4    # "attrChanges":I
    .restart local v28    # "attrChanges":I
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Window type can not be changed after the window is added."

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 2387
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "displayId":I
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v5    # "flagChanges":I
    .end local v28    # "attrChanges":I
    :catchall_4
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v32, v15

    move-wide/from16 v8, v24

    .line 2387
    .end local v15    # "hasStatusBarServicePermission":Z
    .end local v24    # "origId":J
    .local v8, "origId":J
    .local v32, "hasStatusBarServicePermission":Z
    :goto_6
    move-object/from16 v15, p14

    goto/16 :goto_21

    .line 2387
    .end local v8    # "origId":J
    .end local v32    # "hasStatusBarServicePermission":Z
    .restart local v24    # "origId":J
    .restart local v26    # "hasStatusBarServicePermission":Z
    :catchall_5
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide/from16 v8, v24

    move/from16 v32, v26

    .line 2387
    .end local v26    # "hasStatusBarServicePermission":Z
    .restart local v15    # "hasStatusBarServicePermission":Z
    goto/16 :goto_21

    .line 2131
    .end local v15    # "hasStatusBarServicePermission":Z
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    .restart local v2    # "displayId":I
    .restart local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v4    # "attrChanges":I
    .restart local v5    # "flagChanges":I
    .restart local v26    # "hasStatusBarServicePermission":Z
    :cond_19
    move/from16 v28, v4

    move/from16 v15, v26

    const/4 v6, 0x1

    .line 2131
    .end local v26    # "hasStatusBarServicePermission":Z
    .restart local v15    # "hasStatusBarServicePermission":Z
    :cond_1a
    :goto_7
    :try_start_15
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_16

    if-eqz v0, :cond_1b

    :try_start_16
    const-string v0, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Relayout "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": viewVisibility="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " req="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 2133
    :cond_1b
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_8

    :cond_1c
    const/4 v0, 0x0

    :goto_8
    :try_start_17
    iput-boolean v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 2134
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_9

    :cond_1d
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    .line 2136
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_1e

    .line 2137
    :try_start_18
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 2139
    :cond_1e
    :try_start_19
    iget v0, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v6, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v1, v0, v6}, Lcom/android/server/wm/WindowState;->setWindowScale(II)V

    .line 2141
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    if-nez v0, :cond_20

    :try_start_1a
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_20

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_20

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-eqz v0, :cond_1f

    goto :goto_a

    .line 2148
    :cond_1f
    const/4 v6, 0x0

    goto :goto_b

    .line 2145
    :cond_20
    :goto_a
    const/4 v6, 0x0

    :try_start_1b
    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 2148
    :goto_b
    iget v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move v8, v0

    .line 2152
    .local v8, "oldVisibility":I
    const/4 v0, 0x4

    if-eq v8, v0, :cond_21

    const/16 v6, 0x8

    if-ne v8, v6, :cond_22

    :cond_21
    if-nez v13, :cond_22

    const/4 v6, 0x1

    goto :goto_c

    :cond_22
    const/4 v6, 0x0

    .line 2155
    .local v6, "becameVisible":Z
    :goto_c
    const v19, 0x20008

    and-int v19, v5, v19

    if-nez v19, :cond_24

    if-eqz v6, :cond_23

    goto :goto_d

    :cond_23
    const/16 v19, 0x0

    goto :goto_e

    :cond_24
    :goto_d
    const/16 v19, 0x1

    .line 2157
    .local v19, "imMayMove":Z
    :goto_e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v20
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_16

    move/from16 v29, v20

    .line 2158
    .local v29, "isDefaultDisplay":Z
    move/from16 v30, v6

    move/from16 v6, v29

    if-eqz v6, :cond_26

    .line 2158
    .end local v29    # "isDefaultDisplay":Z
    .local v6, "isDefaultDisplay":Z
    .local v30, "becameVisible":Z
    :try_start_1c
    iget v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-ne v0, v13, :cond_25

    and-int/lit8 v0, v5, 0x8

    if-nez v0, :cond_25

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    if-nez v0, :cond_26

    :cond_25
    const/4 v0, 0x1

    goto :goto_f

    :cond_26
    const/4 v0, 0x0

    .line 2162
    .local v0, "focusMayChange":Z
    :goto_f
    :try_start_1d
    iget v10, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    if-eq v10, v13, :cond_27

    :try_start_1e
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v20, 0x100000

    and-int v10, v10, v20

    if-eqz v10, :cond_27

    const/4 v10, 0x1

    goto :goto_10

    :cond_27
    const/4 v10, 0x0

    .line 2164
    .local v10, "wallpaperMayMove":Z
    :goto_10
    const/high16 v20, 0x100000

    and-int v20, v5, v20

    if-eqz v20, :cond_28

    const/16 v20, 0x1

    goto :goto_11

    :cond_28
    const/16 v20, 0x0

    :goto_11
    or-int v10, v10, v20

    .line 2165
    and-int/lit16 v11, v5, 0x2000

    if-eqz v11, :cond_29

    iget-object v11, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v11, :cond_29

    .line 2166
    iget-object v11, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v31, v5

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 2166
    .end local v5    # "flagChanges":I
    .local v31, "flagChanges":I
    invoke-virtual {v11, v5}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto :goto_12

    .line 2169
    .end local v31    # "flagChanges":I
    .restart local v5    # "flagChanges":I
    :cond_29
    move/from16 v31, v5

    .line 2169
    .end local v5    # "flagChanges":I
    .restart local v31    # "flagChanges":I
    :goto_12
    const/4 v5, 0x1

    :try_start_1f
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 2170
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 2172
    iput v13, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 2180
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2181
    and-int/lit8 v5, p8, 0x1

    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_13

    :cond_2a
    const/4 v5, 0x0

    :goto_13
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_16

    .line 2185
    if-nez v13, :cond_2c

    :try_start_20
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_2b

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, 0x3

    if-eq v5, v11, :cond_2b

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2187
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v5

    if-nez v5, :cond_2c

    :cond_2b
    const/4 v5, 0x1

    goto :goto_14

    :cond_2c
    const/4 v5, 0x0

    .line 2198
    .local v5, "shouldRelayout":Z
    :goto_14
    if-nez v5, :cond_2e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v11

    if-eqz v11, :cond_2e

    iget-boolean v11, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v11, :cond_2e

    .line 2199
    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v11, :cond_2d

    .line 2200
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Relayout invis "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": mAnimatingExit="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    :cond_2d
    or-int/lit8 v16, v16, 0x4

    .line 2204
    iget-boolean v11, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v11, :cond_2e

    .line 2205
    invoke-direct {v7, v1, v3, v6, v0}, Lcom/android/server/wm/WindowManagerService;->tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;ZZ)Z

    move-result v11
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    move v0, v11

    .line 2216
    .end local v0    # "focusMayChange":Z
    .end local v16    # "result":I
    .local v11, "result":I
    .local v12, "focusMayChange":Z
    :cond_2e
    move v12, v0

    move/from16 v11, v16

    if-eqz v5, :cond_32

    .line 2217
    :try_start_21
    const-string/jumbo v0, "relayoutWindow: viewVisibility_1"
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    move/from16 v32, v15

    const-wide/16 v14, 0x20

    :try_start_22
    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2219
    .end local v15    # "hasStatusBarServicePermission":Z
    .restart local v32    # "hasStatusBarServicePermission":Z
    invoke-virtual {v1, v11, v4, v8}, Lcom/android/server/wm/WindowState;->relayoutVisibleWindow(III)I

    move-result v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    move v11, v0

    .line 2222
    move-object/from16 v14, p20

    const/4 v15, 0x0

    :try_start_23
    invoke-direct {v7, v14, v11, v1, v3}, Lcom/android/server/wm/WindowManagerService;->createSurfaceControl(Landroid/view/Surface;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    move/from16 v16, v0

    .line 2236
    .end local v11    # "result":I
    .restart local v16    # "result":I
    nop

    .line 2237
    and-int/lit8 v0, v16, 0x2

    if-eqz v0, :cond_2f

    .line 2238
    move v12, v6

    .line 2240
    :cond_2f
    :try_start_24
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7db

    if-ne v0, v11, :cond_30

    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_30

    .line 2241
    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 2242
    const/16 v19, 0x1

    .line 2244
    :cond_30
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->adjustStartingWindowFlags()V

    .line 2245
    move/from16 v33, v12

    const-wide/16 v11, 0x20

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    .line 2274
    .end local v12    # "focusMayChange":Z
    .local v33, "focusMayChange":Z
    move/from16 v34, v4

    move/from16 v37, v8

    move-wide/from16 v8, v24

    goto/16 :goto_18

    .line 2387
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "displayId":I
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v4    # "attrChanges":I
    .end local v5    # "shouldRelayout":Z
    .end local v6    # "isDefaultDisplay":Z
    .end local v8    # "oldVisibility":I
    .end local v10    # "wallpaperMayMove":Z
    .end local v19    # "imMayMove":Z
    .end local v30    # "becameVisible":Z
    .end local v31    # "flagChanges":I
    .end local v33    # "focusMayChange":Z
    :catchall_6
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    goto :goto_15

    .line 2387
    .end local v16    # "result":I
    .restart local v11    # "result":I
    :catchall_7
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, v11

    .line 2387
    .end local v11    # "result":I
    .end local v24    # "origId":J
    .local v8, "origId":J
    .restart local v16    # "result":I
    :goto_15
    move-wide/from16 v8, v24

    goto/16 :goto_21

    .line 2223
    .end local v16    # "result":I
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    .restart local v2    # "displayId":I
    .restart local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v4    # "attrChanges":I
    .restart local v5    # "shouldRelayout":Z
    .restart local v6    # "isDefaultDisplay":Z
    .local v8, "oldVisibility":I
    .restart local v10    # "wallpaperMayMove":Z
    .restart local v11    # "result":I
    .restart local v12    # "focusMayChange":Z
    .restart local v19    # "imMayMove":Z
    .restart local v24    # "origId":J
    .restart local v30    # "becameVisible":Z
    .restart local v31    # "flagChanges":I
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    .line 2224
    .local v0, "e":Ljava/lang/Exception;
    :try_start_25
    iget-object v15, v7, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move/from16 v34, v4

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2226
    .end local v4    # "attrChanges":I
    .local v34, "attrChanges":I
    sget-boolean v4, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    if-eqz v4, :cond_31

    .line 2227
    move/from16 v35, v11

    move/from16 v36, v12

    const-wide/16 v11, 0x20

    :try_start_26
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    .line 2227
    .end local v11    # "result":I
    .end local v12    # "focusMayChange":Z
    .local v35, "result":I
    .local v36, "focusMayChange":Z
    goto :goto_16

    .line 2387
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "displayId":I
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v5    # "shouldRelayout":Z
    .end local v6    # "isDefaultDisplay":Z
    .end local v8    # "oldVisibility":I
    .end local v10    # "wallpaperMayMove":Z
    .end local v19    # "imMayMove":Z
    .end local v30    # "becameVisible":Z
    .end local v31    # "flagChanges":I
    .end local v34    # "attrChanges":I
    .end local v36    # "focusMayChange":Z
    :catchall_8
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide/from16 v8, v24

    move/from16 v16, v35

    goto/16 :goto_21

    .line 2231
    .end local v35    # "result":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    .restart local v2    # "displayId":I
    .restart local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v5    # "shouldRelayout":Z
    .restart local v6    # "isDefaultDisplay":Z
    .restart local v8    # "oldVisibility":I
    .restart local v10    # "wallpaperMayMove":Z
    .restart local v11    # "result":I
    .restart local v12    # "focusMayChange":Z
    .restart local v19    # "imMayMove":Z
    .restart local v30    # "becameVisible":Z
    .restart local v31    # "flagChanges":I
    .restart local v34    # "attrChanges":I
    :cond_31
    move/from16 v35, v11

    move/from16 v36, v12

    .line 2231
    .end local v11    # "result":I
    .end local v12    # "focusMayChange":Z
    .restart local v35    # "result":I
    .restart local v36    # "focusMayChange":Z
    :goto_16
    :try_start_27
    const-string v4, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception thrown when creating surface for client "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2232
    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2231
    invoke-static {v4, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 2234
    move-wide/from16 v11, v24

    :try_start_28
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2235
    .end local v24    # "origId":J
    .local v11, "origId":J
    monitor-exit v18
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x0

    return v4

    .line 2387
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "displayId":I
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v5    # "shouldRelayout":Z
    .end local v6    # "isDefaultDisplay":Z
    .end local v8    # "oldVisibility":I
    .end local v10    # "wallpaperMayMove":Z
    .end local v19    # "imMayMove":Z
    .end local v30    # "becameVisible":Z
    .end local v31    # "flagChanges":I
    .end local v34    # "attrChanges":I
    .end local v36    # "focusMayChange":Z
    :catchall_9
    move-exception v0

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide v8, v11

    move/from16 v16, v35

    move-object/from16 v12, p11

    goto/16 :goto_21

    .line 2387
    .end local v11    # "origId":J
    .restart local v24    # "origId":J
    :catchall_a
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide/from16 v8, v24

    move/from16 v16, v35

    .line 2387
    .end local v24    # "origId":J
    .restart local v11    # "origId":J
    goto/16 :goto_21

    .line 2387
    .end local v35    # "result":I
    .local v11, "result":I
    .restart local v24    # "origId":J
    :catchall_b
    move-exception v0

    move/from16 v35, v11

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide/from16 v8, v24

    move/from16 v16, v35

    .line 2387
    .end local v24    # "origId":J
    .local v11, "origId":J
    .restart local v35    # "result":I
    goto/16 :goto_21

    .line 2387
    .end local v35    # "result":I
    .local v11, "result":I
    .restart local v24    # "origId":J
    :catchall_c
    move-exception v0

    move-object/from16 v14, p20

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, v11

    move-wide/from16 v8, v24

    .line 2387
    .end local v24    # "origId":J
    .local v1, "origId":J
    goto/16 :goto_21

    .line 2387
    .end local v1    # "origId":J
    .end local v32    # "hasStatusBarServicePermission":Z
    .restart local v15    # "hasStatusBarServicePermission":Z
    .restart local v24    # "origId":J
    :catchall_d
    move-exception v0

    move/from16 v32, v15

    move-object/from16 v14, p20

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, v11

    move-wide/from16 v8, v24

    .end local v15    # "hasStatusBarServicePermission":Z
    .end local v24    # "origId":J
    .restart local v1    # "origId":J
    .restart local v32    # "hasStatusBarServicePermission":Z
    goto/16 :goto_21

    .line 2247
    .end local v32    # "hasStatusBarServicePermission":Z
    .local v1, "win":Lcom/android/server/wm/WindowState;
    .restart local v2    # "displayId":I
    .restart local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v4    # "attrChanges":I
    .restart local v5    # "shouldRelayout":Z
    .restart local v6    # "isDefaultDisplay":Z
    .restart local v8    # "oldVisibility":I
    .restart local v10    # "wallpaperMayMove":Z
    .restart local v12    # "focusMayChange":Z
    .restart local v15    # "hasStatusBarServicePermission":Z
    .restart local v19    # "imMayMove":Z
    .restart local v24    # "origId":J
    .restart local v30    # "becameVisible":Z
    .restart local v31    # "flagChanges":I
    :cond_32
    move/from16 v34, v4

    move/from16 v37, v8

    move/from16 v36, v12

    move/from16 v32, v15

    move-wide/from16 v8, v24

    move-object/from16 v14, p20

    .line 2247
    .end local v4    # "attrChanges":I
    .end local v12    # "focusMayChange":Z
    .end local v15    # "hasStatusBarServicePermission":Z
    .end local v24    # "origId":J
    .local v8, "origId":J
    .restart local v32    # "hasStatusBarServicePermission":Z
    .restart local v34    # "attrChanges":I
    .restart local v36    # "focusMayChange":Z
    .local v37, "oldVisibility":I
    :try_start_29
    const-string/jumbo v0, "relayoutWindow: viewVisibility_2"
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    move/from16 v38, v11

    const-wide/16 v11, 0x20

    :try_start_2a
    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2249
    .end local v11    # "result":I
    .local v38, "result":I
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 2250
    iput-boolean v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 2252
    if-nez v13, :cond_33

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2256
    const-string/jumbo v0, "relayoutWindow: getSurface"

    const-wide/16 v11, 0x20

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2257
    iget-object v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowSurfaceController;->getSurface(Landroid/view/Surface;)V

    .line 2258
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 2271
    const-wide/16 v11, 0x20

    goto :goto_17

    .line 2260
    :cond_33
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_34

    const-string v0, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Releasing surface in: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_14

    .line 2263
    :cond_34
    :try_start_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wmReleaseOutSurface_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2264
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2263
    const-wide/16 v11, 0x20

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2265
    invoke-virtual/range {p20 .. p20}, Landroid/view/Surface;->release()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    .line 2267
    :try_start_2c
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 2268
    nop

    .line 2271
    :goto_17
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    .line 2274
    move/from16 v33, v36

    move/from16 v16, v38

    .line 2274
    .end local v36    # "focusMayChange":Z
    .end local v38    # "result":I
    .restart local v16    # "result":I
    .restart local v33    # "focusMayChange":Z
    :goto_18
    if-eqz v33, :cond_35

    .line 2276
    const/4 v0, 0x3

    const/4 v4, 0x0

    :try_start_2d
    invoke-virtual {v7, v0, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2278
    const/16 v19, 0x0

    goto :goto_1b

    .line 2387
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "displayId":I
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v5    # "shouldRelayout":Z
    .end local v6    # "isDefaultDisplay":Z
    .end local v10    # "wallpaperMayMove":Z
    .end local v19    # "imMayMove":Z
    .end local v30    # "becameVisible":Z
    .end local v31    # "flagChanges":I
    .end local v33    # "focusMayChange":Z
    .end local v34    # "attrChanges":I
    .end local v37    # "oldVisibility":I
    :catchall_e
    move-exception v0

    move-object/from16 v12, p11

    :goto_19
    move-object/from16 v13, p12

    :goto_1a
    move-object/from16 v14, p13

    goto/16 :goto_6

    .line 2285
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    .restart local v2    # "displayId":I
    .restart local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v5    # "shouldRelayout":Z
    .restart local v6    # "isDefaultDisplay":Z
    .restart local v10    # "wallpaperMayMove":Z
    .restart local v19    # "imMayMove":Z
    .restart local v30    # "becameVisible":Z
    .restart local v31    # "flagChanges":I
    .restart local v33    # "focusMayChange":Z
    .restart local v34    # "attrChanges":I
    .restart local v37    # "oldVisibility":I
    :cond_35
    :goto_1b
    and-int/lit8 v0, v16, 0x2

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_1c

    :cond_36
    const/4 v0, 0x0

    .line 2286
    .local v0, "toBeDisplayed":Z
    :goto_1c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 2287
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v19, :cond_37

    .line 2288
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 2289
    if-eqz v0, :cond_37

    .line 2294
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 2298
    :cond_37
    if-eqz v10, :cond_38

    .line 2299
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    iget v12, v11, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/4 v15, 0x4

    or-int/2addr v12, v15

    iput v12, v11, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2303
    :cond_38
    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_39

    .line 2304
    iget-object v11, v7, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11, v12}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyRelayouted(Lcom/android/server/wm/AppWindowToken;)V

    .line 2307
    :cond_39
    const-string/jumbo v11, "relayoutWindow: updateOrientationFromAppTokens"

    const-wide/16 v12, 0x20

    invoke-static {v12, v13, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2309
    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v11

    .line 2310
    .local v11, "configChanged":Z
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2315
    iget-object v12, v7, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 2318
    if-eqz v0, :cond_3a

    iget-boolean v12, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v12, :cond_3a

    .line 2319
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v12

    .line 2320
    .local v12, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v13, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget v15, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v39, v0

    iget v0, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 2320
    .end local v0    # "toBeDisplayed":Z
    .local v39, "toBeDisplayed":Z
    move-object/from16 v40, v4

    const/4 v4, 0x0

    invoke-virtual {v13, v1, v15, v0, v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 2320
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v12    # "displayInfo":Landroid/view/DisplayInfo;
    .local v40, "dc":Lcom/android/server/wm/DisplayContent;
    goto :goto_1d

    .line 2323
    .end local v39    # "toBeDisplayed":Z
    .end local v40    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "toBeDisplayed":Z
    .restart local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_3a
    move/from16 v39, v0

    move-object/from16 v40, v4

    .line 2323
    .end local v0    # "toBeDisplayed":Z
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v39    # "toBeDisplayed":Z
    .restart local v40    # "dc":Lcom/android/server/wm/DisplayContent;
    :goto_1d
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_3b

    .line 2324
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2326
    :cond_3b
    iget-boolean v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    if-eqz v0, :cond_3c

    .line 2327
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    .line 2328
    or-int/lit8 v0, v16, 0x20

    .line 2330
    .end local v16    # "result":I
    .local v0, "result":I
    move/from16 v16, v0

    .line 2330
    .end local v0    # "result":I
    .restart local v16    # "result":I
    :cond_3c
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->isNavBarForcedShownLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2331
    or-int/lit8 v0, v16, 0x40

    .line 2333
    .end local v16    # "result":I
    .restart local v0    # "result":I
    move/from16 v16, v0

    .line 2333
    .end local v0    # "result":I
    .restart local v16    # "result":I
    :cond_3d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 2334
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 2347
    :cond_3e
    if-eqz v5, :cond_3f

    .line 2348
    move-object/from16 v4, p19

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->getMergedConfiguration(Landroid/util/MergedConfiguration;)V

    goto :goto_1e

    .line 2350
    :cond_3f
    move-object/from16 v4, p19

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 2353
    :goto_1e
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 2357
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 2359
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_e

    move-object/from16 v12, p11

    :try_start_2e
    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2360
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    move-object/from16 v13, p12

    :try_start_2f
    invoke-virtual {v13, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2361
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_10

    move-object/from16 v14, p13

    :try_start_30
    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2362
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2363
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_f

    move-object/from16 v15, p14

    :try_start_31
    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2364
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v41, v3

    move-object/from16 v3, p15

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2365
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .local v41, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    move-object/from16 v3, p18

    invoke-virtual {v3, v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 2366
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v3, p16

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2367
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v3, p17

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2379
    iget-boolean v0, v7, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    or-int v16, v16, v0

    .line 2381
    iget-object v0, v7, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2383
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_40

    .line 2384
    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relayout complete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": outFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    :cond_40
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 2387
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "shouldRelayout":Z
    .end local v6    # "isDefaultDisplay":Z
    .end local v10    # "wallpaperMayMove":Z
    .end local v19    # "imMayMove":Z
    .end local v30    # "becameVisible":Z
    .end local v31    # "flagChanges":I
    .end local v33    # "focusMayChange":Z
    .end local v34    # "attrChanges":I
    .end local v37    # "oldVisibility":I
    .end local v39    # "toBeDisplayed":Z
    .end local v40    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v41    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    monitor-exit v18
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move v0, v11

    .line 2387
    .end local v11    # "configChanged":Z
    .local v0, "configChanged":Z
    move v1, v2

    .line 2389
    .end local v2    # "displayId":I
    .local v1, "displayId":I
    if-eqz v0, :cond_41

    .line 2390
    const-string/jumbo v2, "relayoutWindow: sendNewConfiguration"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2391
    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 2392
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1f

    .line 2394
    :cond_41
    const-wide/16 v3, 0x20

    :goto_1f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2396
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_42

    .line 2397
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2400
    :cond_42
    return v16

    .line 2387
    .end local v0    # "configChanged":Z
    .end local v1    # "displayId":I
    :catchall_f
    move-exception v0

    goto/16 :goto_6

    :catchall_10
    move-exception v0

    goto/16 :goto_1a

    :catchall_11
    move-exception v0

    goto/16 :goto_19

    .line 2267
    .end local v16    # "result":I
    .local v1, "win":Lcom/android/server/wm/WindowState;
    .restart local v2    # "displayId":I
    .restart local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v5    # "shouldRelayout":Z
    .restart local v6    # "isDefaultDisplay":Z
    .restart local v10    # "wallpaperMayMove":Z
    .restart local v19    # "imMayMove":Z
    .restart local v30    # "becameVisible":Z
    .restart local v31    # "flagChanges":I
    .restart local v34    # "attrChanges":I
    .restart local v36    # "focusMayChange":Z
    .restart local v37    # "oldVisibility":I
    .restart local v38    # "result":I
    :catchall_12
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v41, v3

    .line 2267
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v41    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const-wide/16 v3, 0x20

    :try_start_32
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_13

    .line 2387
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "displayId":I
    .end local v5    # "shouldRelayout":Z
    .end local v6    # "isDefaultDisplay":Z
    .end local v10    # "wallpaperMayMove":Z
    .end local v19    # "imMayMove":Z
    .end local v30    # "becameVisible":Z
    .end local v31    # "flagChanges":I
    .end local v34    # "attrChanges":I
    .end local v36    # "focusMayChange":Z
    .end local v37    # "oldVisibility":I
    .end local v41    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :catchall_13
    move-exception v0

    goto :goto_20

    :catchall_14
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    .line 2387
    .end local v38    # "result":I
    .restart local v16    # "result":I
    :goto_20
    move/from16 v16, v38

    goto :goto_21

    .line 2387
    .end local v16    # "result":I
    .local v11, "result":I
    :catchall_15
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v38, v11

    move/from16 v16, v38

    .line 2387
    .end local v11    # "result":I
    .restart local v38    # "result":I
    goto :goto_21

    .line 2387
    .end local v8    # "origId":J
    .end local v32    # "hasStatusBarServicePermission":Z
    .end local v38    # "result":I
    .restart local v15    # "hasStatusBarServicePermission":Z
    .restart local v16    # "result":I
    .restart local v24    # "origId":J
    :catchall_16
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v32, v15

    move-wide/from16 v8, v24

    move-object/from16 v15, p14

    .line 2387
    .end local v15    # "hasStatusBarServicePermission":Z
    .end local v24    # "origId":J
    .restart local v8    # "origId":J
    .restart local v32    # "hasStatusBarServicePermission":Z
    goto :goto_21

    .line 2387
    .end local v8    # "origId":J
    .end local v32    # "hasStatusBarServicePermission":Z
    .restart local v24    # "origId":J
    .restart local v26    # "hasStatusBarServicePermission":Z
    :catchall_17
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide/from16 v8, v24

    move/from16 v32, v26

    .line 2387
    .end local v24    # "origId":J
    .end local v26    # "hasStatusBarServicePermission":Z
    .restart local v8    # "origId":J
    .restart local v32    # "hasStatusBarServicePermission":Z
    goto :goto_21

    .line 2387
    .end local v8    # "origId":J
    .end local v32    # "hasStatusBarServicePermission":Z
    .local v1, "origId":J
    .local v3, "hasStatusBarServicePermission":Z
    :catchall_18
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide v8, v1

    move/from16 v32, v3

    move-object/from16 v18, v21

    goto :goto_21

    :catchall_19
    move-exception v0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-wide v8, v1

    move/from16 v32, v3

    move-object/from16 v18, v6

    .end local v1    # "origId":J
    .end local v3    # "hasStatusBarServicePermission":Z
    .restart local v8    # "origId":J
    .restart local v32    # "hasStatusBarServicePermission":Z
    :goto_21
    :try_start_33
    monitor-exit v18
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1a
    move-exception v0

    goto :goto_21
.end method

.method public removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .locals 2
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 4166
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4167
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 4168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4169
    return-void

    .line 4168
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .locals 8
    .param p1, "watcher"    # Landroid/view/IRotationWatcher;

    .line 4358
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4359
    .local v0, "watcherBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4360
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4361
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 4362
    .local v4, "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v5}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 4363
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 4364
    .local v5, "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v6}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 4365
    .local v6, "binder":Landroid/os/IBinder;
    if-eqz v6, :cond_0

    .line 4366
    iget-object v7, v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v6, v7, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4368
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 4360
    .end local v4    # "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    .end local v5    # "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    .end local v6    # "binder":Landroid/os/IBinder;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4371
    .end local v3    # "i":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4372
    return-void

    .line 4371
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .locals 5
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;

    .line 1717
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1718
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1719
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    .line 1720
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1722
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 1724
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1725
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1727
    const/4 v3, 0x1

    const-string/jumbo v4, "nubia.alertdialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->onWindowChanged(ILjava/lang/String;)V

    .line 1730
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1731
    return-void

    .line 1730
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4747
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4748
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4749
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4750
    return-void

    .line 4749
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeWindowToken(Landroid/os/IBinder;I)V
    .locals 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 2555
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "removeWindowToken()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2561
    .local v0, "origId":J
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x20

    if-eqz v2, :cond_0

    .line 2562
    const-string/jumbo v2, "removeWindowToken"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2566
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2567
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 2568
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v5, :cond_2

    .line 2569
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeWindowToken: Attempted to remove token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for non-exiting displayId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2585
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_1

    .line 2586
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2589
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2571
    return-void

    .line 2574
    :cond_2
    :try_start_2
    invoke-virtual {v5, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v6

    .line 2575
    .local v6, "token":Lcom/android/server/wm/WindowToken;
    if-nez v6, :cond_4

    .line 2576
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeWindowToken: Attempted to remove non-existing token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2585
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_3

    .line 2586
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2589
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2578
    return-void

    .line 2581
    :cond_4
    :try_start_3
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2582
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "token":Lcom/android/server/wm/WindowToken;
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2585
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_5

    .line 2586
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2589
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2590
    nop

    .line 2591
    return-void

    .line 2582
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2585
    :catchall_1
    move-exception v2

    sget-boolean v5, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v5, :cond_6

    .line 2586
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2589
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2556
    .end local v0    # "origId":J
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 2
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 7639
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 7640
    .local v0, "focusedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-eqz v1, :cond_0

    .line 7641
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindow;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7644
    .end local v0    # "focusedWindow":Lcom/android/server/wm/WindowState;
    :cond_0
    goto :goto_0

    .line 7643
    :catch_0
    move-exception v0

    .line 7645
    :goto_0
    return-void
.end method

.method public requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    .locals 3
    .param p1, "receiver"    # Landroid/app/IAssistDataReceiver;

    .line 4124
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v1, "requestAssistScreenshot()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4129
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4130
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4131
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_0

    .line 4136
    const/4 v2, 0x0

    .line 4136
    .local v2, "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 4138
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4138
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    move-object v1, v2

    .line 4140
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .local v1, "bm":Landroid/graphics/Bitmap;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4142
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CbEzJbdxOpfZ-AMUAcOVQZxepOo;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CbEzJbdxOpfZ-AMUAcOVQZxepOo;-><init>(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4149
    const/4 v0, 0x1

    return v0

    .line 4140
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4125
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requestTraversal()V
    .locals 2

    .line 6222
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6223
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 6224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6225
    return-void

    .line 6224
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public requestUserActivityNotification()V
    .locals 2

    .line 7803
    const-string v0, "android.permission.USER_ACTIVITY"

    const-string/jumbo v1, "requestUserActivityNotification()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7807
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->requestUserActivityNotification()V

    .line 7808
    return-void

    .line 7805
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires USER_ACTIVITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetLandscapeSwipe()V
    .locals 1

    .line 8498
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    .line 8499
    .local v0, "ss":Lnubia/os/screenswitch/ScreenSwitchInternal;
    if-eqz v0, :cond_0

    .line 8500
    invoke-virtual {v0}, Lnubia/os/screenswitch/ScreenSwitchInternal;->resetLandscapeSwipe()V

    .line 8502
    :cond_0
    return-void
.end method

.method public resetRemoteCloseAni()V
    .locals 4

    .line 7375
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$13;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$13;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7381
    return-void
.end method

.method public resetThreeFingerSwipe()V
    .locals 1

    .line 8485
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getScreenSwitchManager()Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    .line 8486
    .local v0, "ss":Lnubia/os/screenswitch/ScreenSwitchInternal;
    if-eqz v0, :cond_0

    .line 8487
    invoke-virtual {v0}, Lnubia/os/screenswitch/ScreenSwitchInternal;->resetThreeFingerSwipe()V

    .line 8489
    :cond_0
    return-void
.end method

.method restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V
    .locals 4
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "latestX"    # F
    .param p3, "latestY"    # F

    .line 7739
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    .line 7741
    nop

    .line 7742
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 7743
    .local v0, "windowUnderPointer":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 7745
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 7746
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v2

    .line 7747
    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v3

    .line 7745
    invoke-interface {v1, v2, v3}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7748
    :catch_0
    move-exception v1

    .line 7749
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string/jumbo v3, "unable to restore pointer icon"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7750
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 7752
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 7754
    :goto_1
    return-void
.end method

.method resumeRotationLocked()V
    .locals 5

    .line 4258
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v0, :cond_0

    .line 4259
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    .line 4260
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-nez v0, :cond_0

    .line 4262
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4263
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v1

    .line 4264
    .local v1, "changed":Z
    if-eqz v1, :cond_0

    .line 4265
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x12

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4266
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4270
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "changed":Z
    :cond_0
    return-void
.end method

.method rotationNeedsUpdateLocked()Z
    .locals 7

    .line 2724
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2725
    .local v0, "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v1

    .line 2726
    .local v1, "lastOrientation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    .line 2727
    .local v2, "oldRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAltOrientation()Z

    move-result v3

    .line 2729
    .local v3, "oldAltOrientation":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v5, 0x1

    invoke-interface {v4, v1, v2, v5}, Lcom/android/server/policy/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result v4

    .line 2731
    .local v4, "rotation":I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6, v1, v4}, Lcom/android/server/policy/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v6

    xor-int/2addr v6, v5

    .line 2733
    .local v6, "altOrientation":Z
    if-ne v2, v4, :cond_0

    if-ne v3, v6, :cond_0

    .line 2734
    const/4 v5, 0x0

    return v5

    .line 2736
    :cond_0
    return v5
.end method

.method saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .locals 6
    .param p1, "appWindowToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 7158
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 7159
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 7160
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ANR time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7161
    if-eqz p1, :cond_0

    .line 7162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Application at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7164
    :cond_0
    if-eqz p2, :cond_1

    .line 7165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Window at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7167
    :cond_1
    if-eqz p3, :cond_2

    .line 7168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7170
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Windows added since null focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7173
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 7174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Windows removed since null focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7176
    :cond_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7177
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 7178
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7179
    const-string v2, "Last ANR continued"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7180
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 7181
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 7182
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 7184
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7185
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/32 v4, 0x6ddd00

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 7186
    return-void
.end method

.method scheduleAnimationLocked()V
    .locals 1

    .line 6229
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v0, :cond_0

    .line 6230
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    .line 6232
    :cond_0
    return-void
.end method

.method public scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "replacing"    # Z

    .line 7484
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7485
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 7486
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_0

    .line 7487
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to reset replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7489
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7491
    :cond_0
    if-eqz p2, :cond_1

    .line 7492
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_0

    .line 7494
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearWillReplaceWindows()V

    .line 7496
    .end local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7497
    return-void

    .line 7496
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .param p1, "appWindowToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 7500
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7501
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7503
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7504
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 7506
    return-void
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 3193
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 3194
    return-void
.end method

.method public screenshotWallpaper()Landroid/graphics/Bitmap;
    .locals 4

    .line 4104
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v1, "screenshotWallpaper()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4108
    const-wide/16 v0, 0x20

    :try_start_0
    const-string/jumbo v2, "screenshotWallpaper"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4109
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4110
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->screenshotWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4113
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4110
    return-object v3

    .line 4111
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4113
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 4105
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sendNewConfiguration(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 4800
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v0

    .line 4802
    .local v0, "configUpdated":Z
    if-nez v0, :cond_2

    .line 4807
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4808
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v2, :cond_1

    .line 4809
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 4810
    const-string v2, "config-unchanged"

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 4811
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4812
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_0

    .line 4813
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4815
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4817
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4820
    .end local v0    # "configUpdated":Z
    :cond_2
    :goto_0
    goto :goto_1

    .line 4819
    :catch_0
    move-exception v0

    .line 4821
    :goto_1
    return-void
.end method

.method sendSetRunningRemoteAnimation(IZ)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "runningRemoteAnimation"    # Z

    .line 8282
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 8283
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8284
    return-void
.end method

.method public setAnimationScale(IF)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "scale"    # F

    .line 3495
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string/jumbo v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3500
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result p2

    .line 3501
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3504
    :pswitch_0
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    goto :goto_0

    .line 3503
    :pswitch_1
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto :goto_0

    .line 3502
    :pswitch_2
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 3508
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3509
    return-void

    .line 3497
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .locals 3
    .param p1, "scales"    # [F

    .line 3513
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string/jumbo v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3518
    if-eqz p1, :cond_2

    .line 3519
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 3520
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 3522
    :cond_0
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    .line 3523
    aget v0, p1, v1

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 3525
    :cond_1
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 3526
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 3527
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 3532
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3533
    return-void

    .line 3515
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAodShowing(Z)V
    .locals 2
    .param p1, "aodShowing"    # Z

    .line 8358
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8359
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setAodShowing(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8360
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 8362
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8363
    return-void

    .line 8362
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setAppFullscreen(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toOpaque"    # Z

    .line 3087
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3088
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3089
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 3090
    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setFillsParent(Z)V

    .line 3091
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 3092
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3094
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3095
    return-void

    .line 3094
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setCurrentProfileIds([I)V
    .locals 2
    .param p1, "currentProfileIds"    # [I

    .line 3700
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3701
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 3702
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3703
    return-void

    .line 3702
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setCurrentUser(I[I)V
    .locals 8
    .param p1, "newUserId"    # I
    .param p2, "currentProfileIds"    # [I

    .line 3707
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v1, 0x20

    if-eqz v0, :cond_0

    .line 3708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCurrentUser, newUserId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3711
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3712
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 3713
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 3714
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppTransition;->setCurrentUser(I)V

    .line 3715
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setCurrentUserLw(I)V

    .line 3720
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 3723
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->switchUser()V

    .line 3724
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3727
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3728
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    nop

    .line 3729
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 3730
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v6, v3, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    if-eqz v5, :cond_1

    .line 3731
    invoke-virtual {v5, p1}, Lcom/android/server/wm/TaskStack;->hasTaskForUser(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 3730
    :goto_0
    invoke-virtual {v6, v4}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 3735
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v4, :cond_3

    .line 3736
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v4

    .line 3737
    .local v4, "forcedDensity":I
    if-eqz v4, :cond_2

    .line 3738
    move v6, v4

    goto :goto_1

    :cond_2
    iget v6, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 3739
    .local v6, "targetDensity":I
    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 3741
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "forcedDensity":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v6    # "targetDensity":I
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3743
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_4

    .line 3744
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3747
    :cond_4
    return-void

    .line 3741
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDockedStackCreateState(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 3114
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3115
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 3116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3117
    return-void

    .line 3116
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 3120
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    .line 3121
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 3122
    return-void
.end method

.method public setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "touchRegion"    # Landroid/graphics/Rect;

    .line 7526
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7527
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    .line 7528
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 7529
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 7530
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7531
    return-void

    .line 7530
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDockedStackResizing(Z)V
    .locals 2
    .param p1, "resizing"    # Z

    .line 7518
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7519
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->setResizing(Z)V

    .line 7520
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 7521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7522
    return-void

    .line 7521
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setEventDispatching(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 4860
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setEventDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4864
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4865
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    .line 4866
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_0

    .line 4867
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    .line 4869
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4870
    return-void

    .line 4869
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4861
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFactoryFlag(Z)V
    .locals 3
    .param p1, "isFactoryTest"    # Z

    .line 5625
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5626
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFactoryFlag isFactoryTest:="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5628
    :cond_0
    sput-boolean p1, Lcom/android/server/wm/WindowManagerService;->mIsFactoryTest:Z

    .line 5629
    return-void
.end method

.method setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 5
    .param p1, "previousFocus"    # Lcom/android/server/wm/AppWindowToken;

    .line 2795
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2796
    .local v0, "focusedTask":Lcom/android/server/wm/Task;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 2798
    .local v2, "previousTask":Lcom/android/server/wm/Task;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 2800
    .local v3, "focusedDisplayContent":Lcom/android/server/wm/DisplayContent;
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v1

    .line 2801
    .local v4, "previousDisplayContent":Lcom/android/server/wm/DisplayContent;
    :goto_3
    if-eqz v4, :cond_4

    if-eq v4, v3, :cond_4

    .line 2802
    invoke-virtual {v4, v1}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    .line 2804
    :cond_4
    if-eqz v3, :cond_5

    .line 2805
    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    .line 2807
    :cond_5
    return-void
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "moveFocusNow"    # Z

    .line 2811
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setFocusedApp()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2815
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2817
    if-nez p1, :cond_0

    .line 2819
    const/4 v1, 0x0

    .line 2819
    .local v1, "newFocus":Lcom/android/server/wm/AppWindowToken;
    goto :goto_0

    .line 2821
    .end local v1    # "newFocus":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 2822
    .restart local v1    # "newFocus":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_1

    .line 2823
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2830
    .local v2, "changed":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 2831
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 2832
    .local v5, "prev":Lcom/android/server/wm/AppWindowToken;
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 2834
    const-class v6, Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 2835
    .local v6, "applicationManagerService":Lcn/nubia/server/appmgmt/ApplicationManagerService;
    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_4

    .line 2836
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_4

    .line 2838
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v7}, Landroid/view/IApplicationToken;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2839
    .local v7, "appTokenName":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 2840
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 2841
    .local v8, "componentName":Landroid/content/ComponentName;
    if-eqz v8, :cond_3

    .line 2842
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->noteFocusedApp(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2847
    .end local v7    # "appTokenName":Ljava/lang/String;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    :cond_3
    goto :goto_2

    .line 2845
    :catch_0
    move-exception v7

    .line 2846
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "WindowManager"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 2852
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 2855
    .end local v5    # "prev":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "applicationManagerService":Lcn/nubia/server/appmgmt/ApplicationManagerService;
    :cond_5
    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    .line 2856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2857
    .local v5, "origId":J
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2858
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2861
    .end local v5    # "origId":J
    :cond_6
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_8

    .line 2863
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v3}, Landroid/view/IApplicationToken;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2864
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 2865
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/WindowManagerService;->onWindowChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2869
    .end local v3    # "name":Ljava/lang/String;
    :cond_7
    goto :goto_3

    .line 2867
    :catch_1
    move-exception v3

    .line 2868
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "WindowManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    .end local v1    # "newFocus":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "changed":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2873
    return-void

    .line 2872
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2812
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForceResizableTasks(Z)V
    .locals 2
    .param p1, "forceResizableTasks"    # Z

    .line 7542
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7543
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    .line 7544
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7545
    return-void

    .line 7544
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setForcedDisplayDensityForUser(III)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "density"    # I
    .param p3, "userId"    # I

    .line 5861
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 5867
    if-nez p1, :cond_1

    .line 5871
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5872
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setForcedDisplayDensityForUser"

    const/4 v7, 0x0

    .line 5871
    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5874
    .local v0, "targetUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5876
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5877
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 5878
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_0

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v5, v0, :cond_0

    .line 5879
    invoke-direct {p0, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 5881
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_density_forced"

    .line 5883
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 5881
    invoke-static {v5, v6, v7, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5884
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5886
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5887
    nop

    .line 5888
    return-void

    .line 5884
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5886
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5868
    .end local v0    # "targetUserId":I
    .end local v1    # "ident":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5864
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplayScalingMode(II)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 5730
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 5736
    if-nez p1, :cond_3

    .line 5739
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5741
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5742
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5743
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_2

    .line 5744
    if-ltz p2, :cond_0

    const/4 v4, 0x1

    if-le p2, v4, :cond_1

    .line 5745
    :cond_0
    const/4 p2, 0x0

    .line 5747
    :cond_1
    invoke-direct {p0, v3, p2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayScalingModeLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 5748
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_scaling_force"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5751
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5753
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5754
    nop

    .line 5755
    return-void

    .line 5751
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5753
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5737
    .end local v0    # "ident":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5733
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplaySize(III)V
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 5695
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 5701
    if-nez p1, :cond_1

    .line 5704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5706
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5709
    const/16 v3, 0xc8

    .line 5710
    .local v3, "MIN_WIDTH":I
    const/16 v4, 0xc8

    .line 5711
    .local v4, "MIN_HEIGHT":I
    const/4 v5, 0x2

    .line 5712
    .local v5, "MAX_SCALE":I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 5713
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v6, :cond_0

    .line 5714
    const/16 v7, 0xc8

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move p2, v8

    .line 5716
    invoke-static {p3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move p3, v7

    .line 5718
    invoke-direct {p0, v6, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V

    .line 5719
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_size_forced"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5722
    .end local v3    # "MIN_WIDTH":I
    .end local v4    # "MIN_HEIGHT":I
    .end local v5    # "MAX_SCALE":I
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5724
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5725
    nop

    .line 5726
    return-void

    .line 5722
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5724
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5702
    .end local v0    # "ident":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5698
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHoldScreenLocked(Lcom/android/server/wm/Session;)V
    .locals 4
    .param p1, "newHoldScreen"    # Lcom/android/server/wm/Session;

    .line 6190
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6192
    .local v0, "hold":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    if-eq v1, p1, :cond_1

    .line 6193
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-direct {v2, v3}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 6195
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    .line 6197
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    .line 6198
    .local v1, "state":Z
    if-eq v0, v1, :cond_3

    .line 6199
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6204
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 6205
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 6206
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6207
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->keepScreenOnStartedLw()V

    goto :goto_1

    .line 6213
    :cond_2
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 6214
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 6215
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->keepScreenOnStoppedLw()V

    .line 6216
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6219
    :cond_3
    :goto_1
    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .line 3960
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3961
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 3962
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3963
    return-void

    .line 3962
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1809
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1810
    if-eqz p1, :cond_0

    .line 1811
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1812
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1813
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .locals 17
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "touchableInsets"    # I
    .param p4, "contentInsets"    # Landroid/graphics/Rect;
    .param p5, "visibleInsets"    # Landroid/graphics/Rect;
    .param p6, "touchableRegion"    # Landroid/graphics/Region;

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1869
    move-object/from16 v5, p6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1871
    .local v6, "origId":J
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v8, 0x20

    if-eqz v0, :cond_0

    .line 1872
    const-string/jumbo v0, "setInsetsWindow"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1876
    :cond_0
    :try_start_0
    iget-object v10, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1877
    const/4 v0, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v1, v11, v12, v0}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v13

    .line 1878
    .local v13, "w":Lcom/android/server/wm/WindowState;
    sget-boolean v14, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v14, :cond_1

    const-string v14, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setInsetsWindow "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", contentInsets="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v13, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", visibleInsets="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v13, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", touchableRegion="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v13, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", touchableInsets "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v13, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_1
    if-eqz v13, :cond_3

    .line 1884
    iput-boolean v0, v13, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 1885
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1886
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1887
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1888
    iput v2, v13, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 1889
    iget v0, v13, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_2

    .line 1890
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v8, v13, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->scale(F)V

    .line 1891
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v8, v13, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->scale(F)V

    .line 1892
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v8, v13, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v0, v8}, Landroid/graphics/Region;->scale(F)V

    .line 1894
    :cond_2
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1895
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1898
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_3

    .line 1899
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_3

    .line 1900
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 1903
    .end local v13    # "w":Lcom/android/server/wm/WindowState;
    :cond_3
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1906
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_4

    .line 1907
    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1910
    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1911
    nop

    .line 1912
    return-void

    .line 1903
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    :goto_0
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1906
    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    :goto_1
    sget-boolean v8, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v8, :cond_5

    .line 1907
    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1910
    :cond_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 2
    .param p1, "keyguardGoingAway"    # Z

    .line 3267
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3268
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    .line 3269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3270
    return-void

    .line 3269
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setKeyguardOrAodShowingOnDefaultDisplay(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .line 3273
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3274
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    .line 3275
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3276
    return-void

    .line 3275
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 6614
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 6620
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6621
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V

    .line 6622
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6623
    return-void

    .line 6622
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6616
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)[I
    .locals 5
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 2741
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setNewDisplayOverrideConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2745
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$8;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2761
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$9;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2773
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2775
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 2776
    .local v1, "needTrace":Z
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x20

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2777
    const-string/jumbo v2, "mWaitingForConfig"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2780
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v2, :cond_1

    .line 2781
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 2782
    const-string/jumbo v2, "new-config"

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 2785
    :cond_1
    sget-boolean v2, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 2786
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2790
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;I)[I

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2791
    .end local v1    # "needTrace":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2742
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOverscan(IIIII)V
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 6004
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 6010
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6012
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6013
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 6014
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_0

    .line 6015
    move-object v4, p0

    move-object v5, v3

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V

    .line 6017
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6019
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6020
    nop

    .line 6021
    return-void

    .line 6017
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6019
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 6007
    .end local v0    # "ident":J
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPipVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 6577
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 6583
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6584
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setPipVisibilityLw(Z)V

    .line 6585
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6586
    return-void

    .line 6585
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6579
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRecentsVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 6568
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STATUS_BAR"

    const-string/jumbo v2, "setRecentsVisibility()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6570
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6571
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setRecentsVisibilityLw(Z)V

    .line 6572
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6573
    return-void

    .line 6572
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setResizeDimLayer(ZIF)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "targetWindowingMode"    # I
    .param p3, "alpha"    # F

    .line 7535
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7536
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    .line 7538
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7539
    return-void

    .line 7538
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setShelfHeight(ZI)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "shelfHeight"    # I

    .line 6590
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STATUS_BAR"

    const-string/jumbo v2, "setShelfHeight()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6592
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6593
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForShelf(ZI)V

    .line 6595
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6596
    return-void

    .line 6595
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4099
    const-string/jumbo v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4100
    return-void
.end method

.method public setSupportsPictureInPicture(Z)V
    .locals 2
    .param p1, "supportsPictureInPicture"    # Z

    .line 7599
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7600
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    .line 7601
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7602
    return-void

    .line 7601
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSwitchingUser(Z)V
    .locals 2
    .param p1, "switching"    # Z

    .line 3466
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "setSwitchingUser()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3470
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setSwitchingUser(Z)V

    .line 3471
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3472
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    .line 3473
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3474
    return-void

    .line 3473
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3468
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERACT_ACROSS_USERS_FULL permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 7
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "region"    # Landroid/graphics/Region;

    .line 1851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1853
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1854
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 1855
    .local v4, "w":Lcom/android/server/wm/WindowState;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "transparentRegionHint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 1858
    :cond_0
    if-eqz v4, :cond_1

    iget-boolean v3, v4, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_1

    .line 1859
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->setTransparentRegionHintLocked(Landroid/graphics/Region;)V

    .line 1861
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1863
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1864
    nop

    .line 1865
    return-void

    .line 1861
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1863
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setWillReplaceWindow(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "animate"    # Z

    .line 7422
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7423
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 7424
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_0

    .line 7425
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7427
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7429
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7430
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on app token with no content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7432
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7434
    :cond_1
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V

    .line 7435
    .end local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7436
    return-void

    .line 7435
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setWillReplaceWindows(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "childrenOnly"    # Z

    .line 7451
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7452
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 7453
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_0

    .line 7454
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7456
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7458
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7459
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on app token with no content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7461
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7464
    :cond_1
    if-eqz p2, :cond_2

    .line 7465
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceChildWindows()V

    goto :goto_0

    .line 7467
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V

    .line 7470
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 7471
    .end local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7472
    return-void

    .line 7471
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowOpaque(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isOpaque"    # Z

    .line 3098
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3099
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 3100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3101
    return-void

    .line 3100
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showBootMessage(IIZ)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "total"    # I
    .param p3, "always"    # Z

    .line 8240
    const/4 v0, 0x0

    .line 8241
    .local v0, "first":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8252
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v2, :cond_0

    .line 8253
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8255
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v2, :cond_2

    .line 8256
    if-nez p3, :cond_1

    .line 8257
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8259
    :cond_1
    const/4 v0, 0x1

    .line 8261
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v2, :cond_3

    .line 8262
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8264
    :cond_3
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 8265
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->showBootMessage(IIZ)V

    .line 8266
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8267
    if-eqz v0, :cond_4

    .line 8268
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 8270
    :cond_4
    return-void

    .line 8266
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .line 3913
    const/4 v0, 0x0

    .line 3914
    .local v0, "first":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3923
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v2, :cond_0

    .line 3924
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3926
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v2, :cond_2

    .line 3927
    if-nez p2, :cond_1

    .line 3928
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3930
    :cond_1
    const/4 v0, 0x1

    .line 3932
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v2, :cond_3

    .line 3933
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3935
    :cond_3
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 3936
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 3937
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3938
    if-eqz v0, :cond_4

    .line 3939
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3941
    :cond_4
    return-void

    .line 3937
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public showCircularMask(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .line 3995
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3997
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> OPEN TRANSACTION showCircularMask(visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4001
    if-eqz p1, :cond_2

    .line 4003
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-nez v1, :cond_1

    .line 4004
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 4006
    .local v1, "screenOffset":I
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4009
    .local v2, "maskThickness":I
    new-instance v3, Lcom/android/server/wm/CircularDisplayMask;

    .line 4010
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v6, 0x7e2

    .line 4011
    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/server/wm/CircularDisplayMask;-><init>(Lcom/android/server/wm/DisplayContent;III)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    .line 4015
    .end local v1    # "screenOffset":I
    .end local v2    # "maskThickness":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    goto :goto_0

    .line 4021
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4016
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v1, :cond_3

    .line 4017
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    .line 4018
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4021
    :cond_3
    :goto_0
    :try_start_2
    const-string/jumbo v1, "showCircularMask"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 4022
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< CLOSE TRANSACTION showCircularMask(visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4026
    return-void

    .line 4021
    :goto_1
    :try_start_3
    const-string/jumbo v2, "showCircularMask"

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 4022
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_5

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< CLOSE TRANSACTION showCircularMask(visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    throw v1

    .line 4025
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showEmulatorDisplayOverlay()V
    .locals 6

    .line 4029
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4031
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, ">>> OPEN TRANSACTION showEmulatorDisplayOverlay"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4035
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-nez v1, :cond_1

    .line 4036
    new-instance v1, Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4038
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v5, 0x7e2

    .line 4039
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/EmulatorDisplayOverlay;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    .line 4043
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/EmulatorDisplayOverlay;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4045
    :try_start_2
    const-string/jumbo v1, "showEmulatorDisplayOverlay"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 4046
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION showEmulatorDisplayOverlay"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4050
    return-void

    .line 4045
    :catchall_0
    move-exception v1

    :try_start_3
    const-string/jumbo v2, "showEmulatorDisplayOverlay"

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 4046
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_3

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION showEmulatorDisplayOverlay"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v1

    .line 4049
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showEmulatorDisplayOverlayIfNeeded()V
    .locals 3

    .line 3986
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.emulator.circular"

    const/4 v1, 0x0

    .line 3988
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_0

    .line 3990
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3992
    :cond_0
    return-void
.end method

.method showGlobalActions()V
    .locals 1

    .line 3477
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showGlobalActions()V

    .line 3478
    return-void
.end method

.method public showRecentApps()V
    .locals 1

    .line 6729
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showRecentApps()V

    .line 6730
    return-void
.end method

.method public showStatusBar()V
    .locals 1

    .line 8430
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showStatusBar()V

    .line 8431
    return-void
.end method

.method public showStrictModeViolation(Z)V
    .locals 6
    .param p1, "on"    # Z

    .line 4056
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 4057
    .local v0, "pid":I
    const/4 v1, 0x0

    const/16 v2, 0x19

    if-eqz p1, :cond_0

    .line 4060
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4061
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v2, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4064
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v2, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4066
    :goto_0
    return-void
.end method

.method public shutdown(Z)V
    .locals 2
    .param p1, "confirm"    # Z

    .line 3679
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3681
    return-void
.end method

.method startFreezingDisplayLocked(II)V
    .locals 1
    .param p1, "exitAnim"    # I
    .param p2, "enterAnim"    # I

    .line 6321
    nop

    .line 6322
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 6321
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 6323
    return-void
.end method

.method startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V
    .locals 9
    .param p1, "exitAnim"    # I
    .param p2, "enterAnim"    # I
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 6327
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 6331
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 6341
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 6345
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->noteDisplayFreezingState()V

    .line 6347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 6348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 6352
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 6354
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    .line 6359
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 6361
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6362
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->freeze()V

    .line 6370
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 6371
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    if-nez v1, :cond_3

    .line 6372
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    .line 6374
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_4

    .line 6375
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    const/16 v2, 0x1089

    invoke-virtual {v1, v2, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 6378
    :cond_4
    iget-boolean v0, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_6

    .line 6379
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    .line 6380
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 6381
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 6382
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 6383
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v0, :cond_5

    .line 6384
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 6388
    :cond_5
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v7

    .line 6390
    .local v7, "isSecure":Z
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 6391
    new-instance v8, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 6392
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isDefaultOrientationForced()Z

    move-result v4

    move-object v1, v8

    move-object v3, p3

    move v5, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;)V

    move-object v0, v8

    .line 6394
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 6397
    .end local v0    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v7    # "isSecure":Z
    :cond_6
    return-void

    .line 6334
    :cond_7
    :goto_0
    return-void

    .line 6328
    :cond_8
    :goto_1
    return-void
.end method

.method public startFreezingScreen(II)V
    .locals 7
    .param p1, "exitAnim"    # I
    .param p2, "enterAnim"    # I

    .line 3284
    const-string v0, "android.permission.FREEZE_SCREEN"

    const-string/jumbo v1, "startFreezingScreen()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3289
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3290
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v1, :cond_0

    .line 3291
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 3292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3294
    .local v1, "origId":J
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(II)V

    .line 3295
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3296
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3298
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3299
    goto :goto_0

    .line 3298
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3301
    .end local v1    # "origId":J
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3302
    return-void

    .line 3301
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3286
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FREEZE_SCREEN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startSeamlessRotation()V
    .locals 1

    .line 8303
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 8305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 8306
    return-void
.end method

.method public startViewServer(I)Z
    .locals 4
    .param p1, "port"    # I

    .line 4462
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4463
    return v1

    .line 4466
    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string/jumbo v2, "startViewServer"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4467
    return v1

    .line 4470
    :cond_1
    const/16 v0, 0x400

    if-ge p1, v0, :cond_2

    .line 4471
    return v1

    .line 4474
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_4

    .line 4475
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4477
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->start()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4478
    :catch_0
    move-exception v0

    .line 4479
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    return v1

    .line 4486
    :cond_4
    :try_start_1
    new-instance v0, Lcom/android/server/wm/ViewServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    .line 4487
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->start()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 4488
    :catch_1
    move-exception v0

    .line 4489
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    .end local v0    # "e":Ljava/io/IOException;
    return v1
.end method

.method public startWindowTrace()V
    .locals 2

    .line 6049
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6052
    nop

    .line 6053
    return-void

    .line 6050
    :catch_0
    move-exception v0

    .line 6051
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public statusBarVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 6600
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 6606
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6607
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    .line 6608
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v1

    move p1, v1

    .line 6609
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)Z

    .line 6610
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6611
    return-void

    .line 6610
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6602
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopFreezingDisplayLocked()V
    .locals 18

    .line 6400
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_0

    .line 6401
    return-void

    .line 6404
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v1, :cond_a

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v1, :cond_a

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 6406
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 6419
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6424
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 6425
    .local v2, "displayId":I
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 6426
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 6427
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 6429
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->noteDisplayFreezingState()V

    .line 6431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    .line 6432
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6433
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Screen frozen for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6434
    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v5, v5

    invoke-static {v5, v6, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 6435
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 6436
    const-string v5, " due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6437
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6439
    :cond_2
    const-string v5, "WindowManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6440
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6441
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6446
    const/4 v5, 0x0

    .line 6448
    .local v5, "updateRotation":Z
    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 6449
    invoke-virtual {v6, v2}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v6

    .line 6450
    .local v6, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    const/4 v15, 0x0

    if-eqz v6, :cond_5

    .line 6451
    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6454
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    .line 6456
    .local v14, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    invoke-interface {v7, v8, v9, v3}, Lcom/android/server/policy/WindowManagerPolicy;->validateRotationAnimationLw(IIZ)Z

    move-result v7

    if-nez v7, :cond_3

    .line 6457
    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    .line 6459
    :cond_3
    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const-wide/16 v9, 0x2710

    .line 6460
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v11

    iget v12, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 6459
    move/from16 v16, v7

    move-object v7, v6

    move-object/from16 v17, v14

    move v14, v3

    .end local v14    # "displayInfo":Landroid/view/DisplayInfo;
    .local v17, "displayInfo":Landroid/view/DisplayInfo;
    move-object v3, v15

    move/from16 v15, v16

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6462
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 6463
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto :goto_0

    .line 6465
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 6466
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 6467
    const/4 v5, 0x1

    .line 6469
    .end local v17    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    goto :goto_1

    .line 6470
    :cond_5
    move-object v3, v15

    if-eqz v6, :cond_6

    .line 6471
    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 6472
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 6474
    :cond_6
    const/4 v5, 0x1

    .line 6483
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v3

    .line 6490
    .local v3, "configChanged":Z
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6491
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v9, 0x7d0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 6493
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6495
    if-eqz v5, :cond_7

    .line 6497
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v7

    or-int/2addr v3, v7

    .line 6500
    :cond_7
    if-eqz v3, :cond_8

    .line 6501
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 6503
    :cond_8
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 6504
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    if-eqz v7, :cond_9

    .line 6505
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v7}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 6507
    :cond_9
    return-void

    .line 6413
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "displayId":I
    .end local v3    # "configChanged":Z
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "updateRotation":Z
    .end local v6    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_a
    :goto_2
    return-void
.end method

.method public stopFreezingScreen()V
    .locals 4

    .line 3306
    const-string v0, "android.permission.FREEZE_SCREEN"

    const-string/jumbo v1, "stopFreezingScreen()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3311
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3312
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v1, :cond_0

    .line 3313
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 3314
    const-string v1, "client"

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 3315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3317
    .local v1, "origId":J
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3319
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3320
    goto :goto_0

    .line 3319
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3322
    .end local v1    # "origId":J
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3323
    return-void

    .line 3322
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3308
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FREEZE_SCREEN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopViewServer()Z
    .locals 3

    .line 4509
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4510
    return v1

    .line 4513
    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string/jumbo v2, "stopViewServer"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4514
    return v1

    .line 4517
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_2

    .line 4518
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    return v0

    .line 4520
    :cond_2
    return v1
.end method

.method public stopWindowTrace()V
    .locals 2

    .line 6057
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 6058
    return-void
.end method

.method public switchInputMethod(Z)V
    .locals 1
    .param p1, "forwardDirection"    # Z

    .line 3668
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 3669
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 3670
    .local v0, "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    if-eqz v0, :cond_0

    .line 3671
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethodManagerInternal;->switchInputMethod(Z)V

    .line 3673
    :cond_0
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .line 3662
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->switchKeyboardLayout(II)V

    .line 3663
    return-void
.end method

.method public systemReady()V
    .locals 1

    .line 5004
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->systemReady()V

    .line 5005
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->systemReady()V

    .line 5006
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->queryWideColorGamutSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    .line 5007
    return-void
.end method

.method public thawRotation()V
    .locals 5

    .line 4210
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string/jumbo v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4220
    .local v0, "origId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v3, 0x309

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/server/policy/WindowManagerPolicy;->setUserRotationMode(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4224
    nop

    .line 4226
    invoke-direct {p0, v4, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 4227
    return-void

    .line 4223
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4212
    .end local v0    # "origId":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method traceStateLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "where"    # Ljava/lang/String;

    .line 6906
    const-string/jumbo v0, "traceStateLocked"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6908
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/WindowTracing;->traceStateLocked(Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6912
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6913
    goto :goto_1

    .line 6912
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 6909
    :catch_0
    move-exception v0

    .line 6910
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "WindowManager"

    const-string v4, "Exception while tracing state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6910
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 6914
    :goto_1
    return-void

    .line 6912
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public triggerAnimationFailsafe()V
    .locals 2

    .line 3198
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3199
    return-void
.end method

.method unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    .line 8142
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8143
    return-void
.end method

.method public unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 3603
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3604
    return-void
.end method

.method public unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/view/IWallpaperVisibilityListener;
    .param p2, "displayId"    # I

    .line 4391
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4392
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    .line 4393
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 4394
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4395
    return-void

    .line 4394
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateFocusedWindowLocked(IZ)Z
    .locals 13
    .param p1, "mode"    # I
    .param p2, "updateInputWindows"    # Z

    .line 6236
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->computeFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6237
    .local v0, "newFocus":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_9

    .line 6238
    const-string/jumbo v1, "wmUpdateFocus"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6241
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6242
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6244
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6245
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v6, 0x0

    .line 6246
    .local v6, "imWindowChanged":Z
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    .line 6247
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 6248
    .local v7, "prevTarget":Lcom/android/server/wm/WindowState;
    nop

    .line 6249
    invoke-virtual {v1, v9}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v10

    .line 6251
    .local v10, "newTarget":Lcom/android/server/wm/WindowState;
    if-eq v7, v10, :cond_0

    move v11, v9

    goto :goto_0

    :cond_0
    move v11, v2

    :goto_0
    move v6, v11

    .line 6253
    if-eq p1, v9, :cond_2

    if-eq p1, v8, :cond_2

    .line 6255
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 6256
    .local v11, "prevImeAnimLayer":I
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 6257
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v11, v12, :cond_1

    move v12, v9

    goto :goto_1

    :cond_1
    move v12, v2

    :goto_1
    or-int/2addr v6, v12

    .line 6262
    .end local v7    # "prevTarget":Lcom/android/server/wm/WindowState;
    .end local v10    # "newTarget":Lcom/android/server/wm/WindowState;
    .end local v11    # "prevImeAnimLayer":I
    :cond_2
    if-eqz v6, :cond_3

    .line 6263
    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 6264
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 6265
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->computeFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6270
    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 6271
    .local v7, "oldFocus":Lcom/android/server/wm/WindowState;
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 6272
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6274
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_4

    .line 6275
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 6276
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 6279
    :cond_4
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v10, v7, v0}, Lcom/android/server/policy/WindowManagerPolicy;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v10

    .line 6281
    .local v10, "focusChanged":I
    if-eqz v6, :cond_6

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v7, v11, :cond_6

    .line 6283
    if-ne p1, v5, :cond_5

    .line 6284
    invoke-virtual {v1, v9, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 6285
    and-int/lit8 v10, v10, -0x2

    goto :goto_2

    .line 6286
    :cond_5
    if-ne p1, v8, :cond_6

    .line 6289
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 6293
    :cond_6
    :goto_2
    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_7

    .line 6295
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 6296
    if-ne p1, v5, :cond_7

    .line 6297
    invoke-virtual {v1, v9, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 6301
    :cond_7
    if-eq p1, v9, :cond_8

    .line 6304
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v5, p2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 6307
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 6312
    invoke-virtual {v1, v7, v0}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 6314
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 6315
    return v9

    .line 6317
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "imWindowChanged":Z
    .end local v7    # "oldFocus":Lcom/android/server/wm/WindowState;
    .end local v10    # "focusChanged":I
    :cond_9
    return v2
.end method

.method updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "surfaceShown"    # Z

    .line 8212
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hideNonSystemOverlayWindowsWhenVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    .line 8213
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8214
    return-void

    .line 8216
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 8217
    .local v0, "systemAlertWindowsHidden":Z
    if-eqz p2, :cond_1

    .line 8218
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8219
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8222
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8225
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 8227
    .local v1, "hideSystemAlertWindows":Z
    if-ne v0, v1, :cond_3

    .line 8228
    return-void

    .line 8231
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Im11Aa6VC8N6keu5Oze1AI0XzoQ;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Im11Aa6VC8N6keu5Oze1AI0XzoQ;-><init>(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 8234
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "freezeThisOneIfNeeded"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I

    .line 2596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;
    .locals 4
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "freezeThisOneIfNeeded"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I
    .param p4, "forceUpdate"    # Z

    .line 2602
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2609
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2610
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;

    move-result-object v3

    .line 2612
    .local v3, "config":Landroid/content/res/Configuration;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2614
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2615
    nop

    .line 2614
    nop

    .line 2617
    return-object v3

    .line 2612
    .end local v3    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2614
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2603
    .end local v0    # "ident":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateOrientationFromAppTokensLocked(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 2675
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(IZ)Z

    move-result v0

    return v0
.end method

.method updateOrientationFromAppTokensLocked(IZ)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "forceUpdate"    # Z

    .line 2679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2683
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedWindowMode()I

    move-result v2

    .line 2684
    .local v2, "focusMode":I
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 2685
    sput v4, Lcom/android/server/wm/WindowManagerService;->sFreeformState:I

    goto :goto_0

    .line 2686
    :cond_0
    sget v3, Lcom/android/server/wm/WindowManagerService;->sFreeformState:I

    if-ne v3, v4, :cond_1

    .line 2687
    const/4 v3, 0x2

    sput v3, Lcom/android/server/wm/WindowManagerService;->sFreeformState:I

    .line 2688
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->postDelayCheck()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2692
    .end local v2    # "focusMode":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 2714
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 2690
    :catch_0
    move-exception v2

    .line 2691
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2694
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2695
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v3

    .line 2696
    .local v3, "req":I
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v4

    if-ne v3, v4, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    .line 2708
    :cond_2
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->noteOrientationNotChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2712
    const/4 v4, 0x0

    .line 2714
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2712
    return v4

    .line 2697
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->setLastOrientation(I)V

    .line 2701
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_4

    .line 2702
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4, v3}, Lcom/android/server/policy/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 2704
    :cond_4
    invoke-virtual {v2, p2}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2714
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2704
    return v4

    .line 2714
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "req":I
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 8291
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8293
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8295
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8296
    nop

    .line 8297
    return-void

    .line 8295
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method updatePointerIcon(Landroid/view/IWindow;)V
    .locals 9
    .param p1, "client"    # Landroid/view/IWindow;

    .line 7700
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    monitor-enter v0

    .line 7701
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$1800(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7702
    monitor-exit v0

    return-void

    .line 7704
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$1900(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v1

    .line 7705
    .local v1, "mouseX":F
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$2000(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v2

    .line 7706
    .local v2, "mouseY":F
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7708
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7709
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7711
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7713
    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 7714
    .local v0, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_2

    .line 7715
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad requesting window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7716
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7718
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 7719
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v4, :cond_3

    .line 7720
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7722
    :cond_3
    nop

    .line 7723
    :try_start_4
    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 7724
    .local v5, "windowUnderPointer":Lcom/android/server/wm/WindowState;
    if-eq v5, v0, :cond_4

    .line 7725
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7728
    :cond_4
    :try_start_5
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 7729
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v7

    .line 7730
    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v8

    .line 7728
    invoke-interface {v6, v7, v8}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7733
    goto :goto_0

    .line 7731
    :catch_0
    move-exception v6

    .line 7732
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v7, "WindowManager"

    const-string/jumbo v8, "unable to update pointer icon"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7734
    .end local v0    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "windowUnderPointer":Lcom/android/server/wm/WindowState;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7735
    return-void

    .line 7734
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 7706
    .end local v1    # "mouseX":F
    .end local v2    # "mouseY":F
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public updateRotation(ZZ)V
    .locals 0
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .line 4238
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 4239
    return-void
.end method

.method updateTapExcludeRegion(Landroid/view/IWindow;IIIII)V
    .locals 8
    .param p1, "client"    # Landroid/view/IWindow;
    .param p2, "regionId"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 7763
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7764
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 7765
    .local v1, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    .line 7766
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad requesting window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7767
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7769
    :cond_0
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowState;->updateTapExcludeRegion(IIIII)V

    .line 7770
    .end local v1    # "callingWin":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7771
    return-void

    .line 7770
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .locals 7
    .param p1, "client"    # Ljava/net/Socket;

    .line 4607
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4608
    const/4 v0, 0x0

    return v0

    .line 4611
    :cond_0
    const/4 v0, 0x1

    .line 4613
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4615
    .local v1, "focusedWindow":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 4619
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 4620
    .local v3, "clientStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v2, v4

    .line 4622
    if-eqz v1, :cond_1

    .line 4623
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4624
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 4625
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4627
    :cond_1
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 4628
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4632
    .end local v3    # "clientStream":Ljava/io/OutputStream;
    nop

    .line 4634
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 4632
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 4634
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4637
    goto :goto_0

    .line 4635
    :catch_0
    move-exception v4

    .line 4636
    .local v4, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4637
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    throw v3

    .line 4629
    :catch_1
    move-exception v3

    .line 4630
    .local v3, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 4632
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 4634
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 4635
    :catch_2
    move-exception v3

    .line 4636
    .local v3, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4637
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 4641
    :cond_3
    return v0
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .locals 8
    .param p1, "client"    # Ljava/net/Socket;

    .line 4552
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4553
    return v1

    .line 4556
    :cond_0
    const/4 v0, 0x1

    .line 4558
    .local v0, "result":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4559
    .local v2, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4560
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CIuXGvNhVwi8txA2L_PmZnPJavk;

    invoke-direct {v5, v2}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CIuXGvNhVwi8txA2L_PmZnPJavk;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4563
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4565
    const/4 v3, 0x0

    .line 4569
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 4570
    .local v4, "clientStream":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v3, v5

    .line 4572
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4573
    .local v5, "count":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 4574
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 4575
    .local v6, "w":Lcom/android/server/wm/WindowState;
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4576
    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(I)V

    .line 4577
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4578
    const/16 v7, 0xa

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(I)V

    .line 4573
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4581
    .end local v1    # "i":I
    :cond_1
    const-string v1, "DONE.\n"

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4582
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4586
    .end local v4    # "clientStream":Ljava/io/OutputStream;
    .end local v5    # "count":I
    nop

    .line 4588
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 4586
    :catchall_0
    move-exception v1

    if-eqz v3, :cond_2

    .line 4588
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4591
    goto :goto_1

    .line 4589
    :catch_0
    move-exception v4

    .line 4590
    .local v4, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4591
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    throw v1

    .line 4583
    :catch_1
    move-exception v1

    .line 4584
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 4586
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 4588
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 4589
    :catch_2
    move-exception v1

    .line 4590
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4591
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 4595
    :cond_3
    return v0

    .line 4563
    .end local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "client"    # Ljava/net/Socket;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/lang/String;

    .line 4665
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4666
    return v1

    .line 4669
    :cond_0
    const/4 v0, 0x1

    .line 4670
    .local v0, "success":Z
    const/4 v2, 0x0

    .line 4671
    .local v2, "data":Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 4673
    .local v3, "reply":Landroid/os/Parcel;
    const/4 v4, 0x0

    .line 4678
    .local v4, "out":Ljava/io/BufferedWriter;
    const/16 v5, 0x20

    :try_start_0
    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 4679
    .local v5, "index":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 4680
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    .line 4682
    :cond_1
    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4683
    .local v6, "code":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    long-to-int v7, v7

    .line 4686
    .local v7, "hashCode":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 4687
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object p3, v8

    goto :goto_0

    .line 4689
    :cond_2
    const-string v8, ""

    move-object p3, v8

    .line 4692
    :goto_0
    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4693
    .local v8, "window":Lcom/android/server/wm/WindowState;
    if-nez v8, :cond_6

    .line 4694
    nop

    .line 4722
    if-eqz v2, :cond_3

    .line 4723
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4725
    :cond_3
    if-eqz v3, :cond_4

    .line 4726
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4728
    :cond_4
    if-eqz v4, :cond_5

    .line 4730
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4733
    goto :goto_1

    .line 4731
    :catch_0
    move-exception v9

    .line 4694
    :cond_5
    :goto_1
    return v1

    .line 4697
    :cond_6
    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move-object v2, v9

    .line 4698
    const-string v9, "android.view.IWindow"

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4699
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4700
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4701
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4702
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    invoke-virtual {v10, v2, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    move-object v3, v10

    .line 4706
    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 4708
    .local v10, "binder":Landroid/os/IBinder;
    invoke-interface {v10, v9, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4710
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 4712
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4713
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v1

    .line 4714
    const-string v1, "DONE\n"

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4715
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4722
    .end local v5    # "index":I
    .end local v6    # "code":Ljava/lang/String;
    .end local v7    # "hashCode":I
    .end local v8    # "window":Lcom/android/server/wm/WindowState;
    .end local v10    # "binder":Landroid/os/IBinder;
    :cond_7
    if-eqz v2, :cond_8

    .line 4723
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4725
    :cond_8
    if-eqz v3, :cond_9

    .line 4726
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4728
    :cond_9
    if-eqz v4, :cond_c

    .line 4730
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4733
    :goto_2
    goto :goto_3

    .line 4731
    :catch_1
    move-exception v1

    goto :goto_2

    .line 4722
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 4718
    :catch_2
    move-exception v1

    .line 4719
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not send command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with parameters "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4720
    const/4 v0, 0x0

    .line 4722
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_a

    .line 4723
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4725
    :cond_a
    if-eqz v3, :cond_b

    .line 4726
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4728
    :cond_b
    if-eqz v4, :cond_c

    .line 4730
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 4737
    :cond_c
    :goto_3
    return v0

    .line 4722
    :goto_4
    if-eqz v2, :cond_d

    .line 4723
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4725
    :cond_d
    if-eqz v3, :cond_e

    .line 4726
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4728
    :cond_e
    if-eqz v4, :cond_f

    .line 4730
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4733
    goto :goto_5

    .line 4731
    :catch_3
    move-exception v5

    .line 4733
    :cond_f
    :goto_5
    throw v1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;I)I
    .locals 5
    .param p1, "watcher"    # Landroid/view/IRotationWatcher;
    .param p2, "displayId"    # I

    .line 4325
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4326
    .local v0, "watcherBinder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/wm/WindowManagerService$12;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/WindowManagerService$12;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 4344
    .local v1, "dr":Landroid/os/IBinder$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4346
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4347
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/server/wm/WindowManagerService$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4350
    goto :goto_0

    .line 4353
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 4348
    :catch_0
    move-exception v3

    .line 4352
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 4353
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .locals 6
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/os/IBinder;
    .param p3, "throwOnError"    # Z

    .line 6074
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 6076
    .local v0, "win":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 6077
    if-nez p3, :cond_0

    .line 6081
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up window callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6082
    return-object v1

    .line 6078
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6084
    :cond_1
    if-eqz p1, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v3, p1, :cond_3

    .line 6085
    if-nez p3, :cond_2

    .line 6089
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up window callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6090
    return-object v1

    .line 6086
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6093
    :cond_3
    return-object v0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "throwOnError"    # Z

    .line 6070
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;Z)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "trim"    # Z

    .line 6887
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-wide v1, 0x10b00000001L

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6888
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/wm/RootWindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 6889
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 6890
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6892
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    .line 6893
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const-wide v1, 0x10900000004L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6895
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 6896
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6898
    :cond_2
    const-wide v0, 0x10800000006L

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6899
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 6900
    .local v0, "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    const-wide v1, 0x10500000007L

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6901
    const-wide v1, 0x10500000008L

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6902
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-wide v2, 0x10b00000009L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/AppTransition;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6903
    return-void
.end method
