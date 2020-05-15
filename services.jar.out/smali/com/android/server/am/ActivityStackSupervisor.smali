.class public Lcom/android/server/am/ActivityStackSupervisor;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/server/am/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;,
        Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;,
        Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;,
        Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;,
        Lcom/android/server/am/ActivityStackSupervisor$AnyTaskForIdMatchTaskMode;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final CREATE_IF_NEEDED:Z = true

.field static final DEFER_RESUME:Z = true

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x70

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final MATCH_TASK_IN_STACKS_ONLY:I = 0x0

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS:I = 0x1

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS_AND_RESTORE:I = 0x2

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field static final ON_TOP:Z = true

.field static final PAUSE_IMMEDIATELY:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field static final REMOVE_FROM_RECENTS:Z = true

.field static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0x72

.field static final REPORT_PIP_MODE_CHANGED_MSG:I = 0x73

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z


# instance fields
.field inResumeTopActivity:Z

.field final mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

.field private mAllowDockedStackResize:Z

.field mAppVisibilitiesChangedSinceLastPause:Z

.field private final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field mCurrentUser:I

.field mDefaultMinSizeOfResizeableTask:I

.field private mDeferResumeCount:I

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDockedStackResizing:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedStack:Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasPendingDockedBounds:Z

.field mHomeStack:Lcom/android/server/am/ActivityStack;

.field private mInitialized:Z

.field mIsDockMinimized:Z

.field private mKeyguardController:Lcom/android/server/am/KeyguardController;

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDockedBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field private mPipLastStack:Lcom/android/server/am/ActivityStack;

.field final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

.field private mPowerHintSent:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mResizingTasksDuringAnimation:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTasks:Lcom/android/server/am/RunningTasks;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskLayersChanged:Z

.field private final mTmpActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field public mUxPerf:Landroid/util/BoostFramework;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 239
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 240
    sput-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 241
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

    .line 308
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 312
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 634
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 242
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 243
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    .line 357
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    .line 448
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 452
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    .line 454
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 465
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    .line 466
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 470
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    .line 561
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    invoke-direct {v1}, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    .line 568
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    .line 579
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    .line 588
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipLastStack:Lcom/android/server/am/ActivityStack;

    .line 635
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 636
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 637
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 638
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V

    return-void
.end method

.method private allResumedActivitiesVisible()Z
    .locals 7

    .line 1108
    const/4 v0, 0x0

    .line 1109
    .local v0, "foundResumed":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1110
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1111
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 1112
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1113
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1114
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_2

    .line 1115
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 1118
    :cond_0
    const/4 v0, 0x1

    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_3

    .line 1116
    .restart local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_2
    const/4 v6, 0x0

    return v6

    .line 1111
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1109
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1122
    .end local v1    # "displayNdx":I
    :cond_4
    return v0
.end method

.method private beginDeferResume()V
    .locals 1

    .line 4971
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 4972
    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V
    .locals 2
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;

    .line 4647
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 4648
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 4650
    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .line 2742
    if-nez p1, :cond_0

    .line 2743
    const/4 v0, 0x1

    return v0

    .line 2745
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0
.end method

.method private checkFinishBootingLocked()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2218
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2219
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 2220
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2221
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_0

    .line 2222
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 2223
    const/4 v1, 0x1

    .line 2225
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 2226
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    .line 2228
    :cond_2
    return v0
.end method

.method private cpusetForAntutuTest(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5367
    const-string/jumbo v0, "persist.sys.cpu.cpuset.tnt"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5369
    const-string v0, "com.antutu.ABenchMark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5371
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NX629J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5372
    const-string/jumbo v0, "persist.sys.cpu.governor.tnt"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5374
    :cond_0
    const-string v0, "com.antutu.benchmark.full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5375
    const-string/jumbo v0, "persist.sys.gpu.governor.tnt"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5377
    :cond_1
    const-string/jumbo v0, "persist.sys.cpu.governor.tnt"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5378
    const-string/jumbo v0, "persist.sys.gpu.governor.tnt"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5381
    :cond_2
    :goto_0
    const-string v0, "com.ludashi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "persist.sys.perf.ver"

    .line 5382
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NX629J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5387
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/SurfaceControl;->setActiveConfigg(I)Z

    .line 5390
    :cond_4
    return-void
.end method

.method private displayConfigMatchesGlobal(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .line 544
    if-nez p1, :cond_0

    .line 545
    const/4 v0, 0x1

    return v0

    .line 547
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 548
    const/4 v0, 0x0

    return v0

    .line 550
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 551
    .local v0, "targetDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_2

    .line 554
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    return v1

    .line 552
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z
    .locals 18
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header"    # Ljava/lang/String;
    .param p11, "lastTask"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/am/TaskRecord;",
            ")Z"
        }
    .end annotation

    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p8

    .line 4469
    const/4 v0, 0x0

    .line 4470
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4471
    .local v5, "args":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 4472
    .local v6, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move/from16 v11, p9

    move-object v9, v0

    move-object v10, v5

    move-object/from16 v0, p10

    move-object/from16 v5, p11

    .end local p9    # "needNL":Z
    .end local p10    # "header":Ljava/lang/String;
    .end local p11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v0, "header":Ljava/lang/String;
    .local v5, "lastTask":Lcom/android/server/am/TaskRecord;
    .local v7, "i":I
    .local v9, "innerPrefix":Ljava/lang/String;
    .local v10, "args":[Ljava/lang/String;
    .local v11, "needNL":Z
    :goto_0
    if-ltz v7, :cond_d

    .line 4473
    move-object/from16 v12, p2

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 4474
    .local v13, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    iget-object v14, v13, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 4475
    nop

    .line 4472
    move-object/from16 v17, v5

    move-object/from16 v5, p0

    goto/16 :goto_b

    .line 4477
    :cond_0
    const/4 v14, 0x0

    if-nez v9, :cond_1

    .line 4478
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "      "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4479
    new-array v10, v14, [Ljava/lang/String;

    .line 4481
    :cond_1
    const/4 v6, 0x1

    .line 4482
    if-nez p6, :cond_3

    if-nez p5, :cond_2

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v15

    if-nez v15, :cond_3

    :cond_2
    const/4 v14, 0x1

    nop

    .line 4483
    .local v14, "full":Z
    :cond_3
    if-eqz v11, :cond_4

    .line 4484
    const-string v15, ""

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4485
    const/4 v11, 0x0

    .line 4487
    :cond_4
    if-eqz v0, :cond_5

    .line 4488
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4489
    const/4 v0, 0x0

    .line 4491
    .end local v0    # "header":Ljava/lang/String;
    .local v15, "header":Ljava/lang/String;
    :cond_5
    move-object v15, v0

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eq v5, v0, :cond_8

    .line 4492
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 4493
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4494
    if-eqz v14, :cond_6

    const-string v0, "* "

    goto :goto_1

    :cond_6
    const-string v0, "  "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4495
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4496
    if-eqz v14, :cond_7

    .line 4497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    .line 4498
    :cond_7
    if-eqz p5, :cond_8

    .line 4500
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 4501
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4502
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4506
    :cond_8
    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v14, :cond_9

    const-string v0, "  * "

    goto :goto_3

    :cond_9
    const-string v0, "    "

    :goto_3
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4507
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4508
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4509
    if-eqz v14, :cond_a

    .line 4510
    invoke-virtual {v13, v1, v9}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_4

    .line 4511
    :cond_a
    if-eqz p5, :cond_b

    .line 4513
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4514
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_b

    .line 4515
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4518
    :cond_b
    :goto_4
    if-eqz p7, :cond_c

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_c

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_c

    .line 4521
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 4523
    :try_start_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v0

    .line 4525
    .local v16, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v2, v16

    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .end local v16    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    iget-object v4, v13, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4528
    const-wide/16 v3, 0x7d0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    :try_start_3
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4530
    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v17, "lastTask":Lcom/android/server/am/TaskRecord;
    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 4531
    goto :goto_8

    .line 4530
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    goto :goto_5

    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v16    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v2, v16

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v16    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_5
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4534
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v0

    goto :goto_6

    .line 4532
    :catch_1
    move-exception v0

    goto :goto_7

    .line 4534
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :catch_2
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .line 4535
    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 4532
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :catch_3
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .line 4533
    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4536
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    nop

    .line 4537
    :goto_9
    const/4 v0, 0x1

    .line 4472
    .end local v11    # "needNL":Z
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "full":Z
    .local v0, "needNL":Z
    move v11, v0

    goto :goto_a

    .end local v0    # "needNL":Z
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "needNL":Z
    :cond_c
    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v15    # "header":Ljava/lang/String;
    .local v0, "header":Ljava/lang/String;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_a
    move-object v0, v15

    :goto_b
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v5, v17

    move-object/from16 v2, p3

    move-object/from16 v4, p8

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 4540
    .end local v7    # "i":I
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :cond_d
    move-object/from16 v12, p2

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    return v6
.end method

.method private endDeferResume()V
    .locals 1

    .line 4978
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 4979
    return-void
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 2157
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2158
    return v0

    .line 2161
    :cond_0
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2162
    .local v1, "permission":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2163
    return v0

    .line 2168
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    .line 2169
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2173
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 2172
    nop

    .line 2175
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2176
    return v0

    .line 2179
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v1, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 2180
    const/4 v0, 0x1

    return v0

    .line 2183
    :cond_3
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 2184
    .local v3, "opCode":I
    if-ne v3, v4, :cond_4

    .line 2185
    return v0

    .line 2194
    :cond_4
    return v0

    .line 2170
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "opCode":I
    :catch_0
    move-exception v2

    .line 2171
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find package info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    return v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .locals 7
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    .line 2124
    const/4 v0, -0x1

    if-nez p5, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2127
    const/4 v0, 0x1

    return v0

    .line 2130
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2131
    return v2

    .line 2134
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 2135
    .local v1, "opCode":I
    if-ne v1, v0, :cond_2

    .line 2136
    return v2

    .line 2144
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v1, p4, p2}, Lcom/android/server/AppOpsService;->noteOperationForM(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2147
    if-nez p5, :cond_3

    .line 2148
    const/4 v0, 0x2

    return v0

    .line 2152
    :cond_3
    return v2
.end method

.method private getStack(II)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 2604
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2605
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2606
    .local v1, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v1, :cond_0

    .line 2607
    return-object v1

    .line 2604
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2610
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 13
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 4732
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 4733
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4734
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    new-instance v2, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 4735
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityStack;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 4736
    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 4737
    iget v3, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v3, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 4738
    iget v3, p1, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iput v3, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 4739
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    iput-boolean v4, v2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 4741
    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iput v5, v2, Landroid/app/ActivityManager$StackInfo;->position:I

    .line 4742
    iget-object v5, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4744
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 4745
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4746
    .local v6, "numTasks":I
    new-array v7, v6, [I

    .line 4747
    .local v7, "taskIds":[I
    new-array v8, v6, [Ljava/lang/String;

    .line 4748
    .local v8, "taskNames":[Ljava/lang/String;
    new-array v9, v6, [Landroid/graphics/Rect;

    .line 4749
    .local v9, "taskBounds":[Landroid/graphics/Rect;
    new-array v10, v6, [I

    .line 4750
    .local v10, "taskUserIds":[I
    nop

    .line 4750
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 4751
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 4752
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    iget v12, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v12, v7, v4

    .line 4753
    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_1

    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 4754
    :cond_1
    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_2

    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 4755
    :cond_2
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 4756
    :cond_3
    const-string/jumbo v12, "unknown"

    :goto_2
    aput-object v12, v8, v4

    .line 4757
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    aput-object v12, v9, v4

    .line 4758
    aget-object v12, v9, v4

    invoke-virtual {v11, v12}, Lcom/android/server/am/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 4759
    iget v12, v11, Lcom/android/server/am/TaskRecord;->userId:I

    aput v12, v10, v4

    .line 4750
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4761
    .end local v4    # "i":I
    :cond_4
    iput-object v7, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 4762
    iput-object v8, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 4763
    iput-object v9, v2, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 4764
    iput-object v10, v2, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    .line 4766
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4767
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_5

    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    nop

    :cond_5
    iput-object v3, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 4768
    return-object v2
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 689
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_0

    .line 690
    const-string/jumbo v1, "statusbar"

    .line 691
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 690
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 692
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_0

    .line 693
    const-string v1, "StatusBarManager"

    const-string/jumbo v2, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 697
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private handleDisplayAdded(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 4594
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4595
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    .line 4596
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4597
    return-void

    .line 4596
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private handleDisplayChanged(I)V
    .locals 5
    .param p1, "displayId"    # I

    .line 4672
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4673
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4675
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v1, :cond_2

    .line 4677
    if-eqz p1, :cond_1

    .line 4678
    iget-object v2, v1, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    .line 4679
    .local v2, "displayState":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v3, :cond_0

    .line 4680
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "Display-off"

    .line 4681
    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ActivityManagerService;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0

    .line 4682
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v3, :cond_1

    .line 4684
    iget-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 4685
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 4689
    .end local v2    # "displayState":I
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->updateBounds()V

    .line 4691
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    .line 4692
    .end local v1    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4693
    return-void

    .line 4692
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private handleDisplayRemoved(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 4653
    if-eqz p1, :cond_1

    .line 4657
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4658
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4659
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-nez v1, :cond_0

    .line 4660
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4663
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->remove()V

    .line 4665
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->releaseSleepTokens(Lcom/android/server/am/ActivityDisplay;)V

    .line 4667
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4668
    .end local v1    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4669
    return-void

    .line 4668
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4654
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the primary display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3979
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3980
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3982
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 3983
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, v0}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 3984
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 3985
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 3989
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3990
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 3991
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 3993
    :cond_0
    return-void
.end method

.method private isValidLaunchStack(Lcom/android/server/am/ActivityStack;ILcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "displayId"    # I
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2786
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2791
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 2799
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2800
    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0

    .line 2789
    :pswitch_0
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    return v0

    .line 2788
    :pswitch_1
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    return v0

    .line 2787
    :pswitch_2
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    return v0

    .line 2793
    :pswitch_3
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v0

    return v0

    .line 2796
    :pswitch_4
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    return v0

    .line 2795
    :pswitch_5
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    return v0

    .line 2794
    :pswitch_6
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    return v0

    .line 2792
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 2802
    :cond_0
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isValidLaunchStack: Unexpected stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "considerKeyguardState"    # Z

    .line 1390
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1391
    return v0

    .line 1394
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v1

    .line 1396
    .local v1, "keyguardLocked":Z
    if-nez v1, :cond_1

    .line 1397
    return v0

    .line 1400
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$moveTasksToFullscreenStackLocked$0(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;IZ)V
    .locals 0
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    .line 3069
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;IZ)V

    return-void
.end method

.method public static synthetic lambda$removeStack$1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 3267
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;)V

    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 1846
    const/4 v0, 0x0

    .line 1847
    .local v0, "extrasSize":I
    if-eqz p1, :cond_0

    .line 1848
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1849
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1850
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    .line 1853
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v1

    .line 1854
    .local v1, "icicleSize":I
    :goto_0
    add-int v2, v0, v1

    const v3, 0x30d40

    if-le v2, v3, :cond_2

    .line 1855
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction too large, intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", extras size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", icicle size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_2
    return-void
.end method

.method private moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;IZ)V
    .locals 29
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    move-object/from16 v9, p0

    .line 2993
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2995
    const/4 v10, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2996
    .local v0, "windowingMode":I
    const/4 v1, 0x2

    const/4 v11, 0x0

    if-ne v0, v1, :cond_0

    move v1, v10

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    move/from16 v20, v1

    .line 2997
    .local v20, "inPinnedWindowingMode":Z
    move/from16 v15, p2

    invoke-virtual {v9, v15}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    move-object v14, v1

    .line 2999
    .local v14, "toDisplay":Lcom/android/server/am/ActivityDisplay;
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 3001
    invoke-virtual {v14}, Lcom/android/server/am/ActivityDisplay;->onExitingSplitScreenMode()V

    .line 3005
    invoke-virtual {v14}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v10

    .line 3005
    .local v1, "i":I
    :goto_1
    move v12, v1

    .line 3005
    .end local v1    # "i":I
    .local v12, "i":I
    if-ltz v12, :cond_2

    .line 3006
    invoke-virtual {v14, v12}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v13, v1

    .line 3007
    .local v13, "otherStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3008
    goto :goto_2

    .line 3010
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v13

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 3005
    .end local v13    # "otherStack":Lcom/android/server/am/ActivityStack;
    :goto_2
    add-int/lit8 v1, v12, -0x1

    .line 3005
    .end local v12    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 3018
    .end local v1    # "i":I
    :cond_2
    iput-boolean v11, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3023
    :cond_3
    move/from16 v18, v20

    .line 3024
    .local v18, "schedulePictureInPictureModeChange":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 3026
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3027
    iget-object v2, v9, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v10}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 3028
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v8, v2

    .line 3029
    .local v8, "size":I
    move v2, v11

    .line 3029
    .local v2, "i":I
    :goto_3
    move v12, v2

    .line 3029
    .end local v2    # "i":I
    .restart local v12    # "i":I
    if-ge v12, v8, :cond_6

    .line 3030
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    move-object v13, v2

    .line 3031
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    iget-object v4, v9, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 3032
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    .line 3031
    move-object v2, v14

    move-object v5, v13

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    move-object v3, v13

    move-object v13, v2

    .line 3034
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    .local v13, "toStack":Lcom/android/server/am/ActivityStack;
    if-eqz p3, :cond_5

    .line 3035
    add-int/lit8 v4, v8, -0x1

    if-ne v12, v4, :cond_4

    move/from16 v16, v10

    goto :goto_4

    :cond_4
    move/from16 v16, v11

    .line 3037
    .local v16, "isTopTask":Z
    :goto_4
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v17, 0x1

    const-string/jumbo v19, "moveTasksToFullscreenStack - onTop"

    move v6, v12

    move-object v12, v3

    .line 3037
    .end local v12    # "i":I
    .local v6, "i":I
    move-object v7, v14

    move v14, v4

    .line 3037
    .end local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .local v7, "toDisplay":Lcom/android/server/am/ActivityDisplay;
    move v15, v5

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 3041
    iget-object v4, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iget-object v12, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 3042
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    .line 3041
    invoke-static {v4, v5, v12}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 3043
    .end local v16    # "isTopTask":Z
    goto :goto_5

    .line 3047
    .end local v6    # "i":I
    .end local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .restart local v12    # "i":I
    .restart local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_5
    move v6, v12

    move-object v7, v14

    .line 3047
    .end local v12    # "i":I
    .end local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .restart local v6    # "i":I
    .restart local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    const/16 v23, 0x1

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string/jumbo v28, "moveTasksToFullscreenStack - NOT_onTop"

    move-object/from16 v21, v3

    move-object/from16 v22, v13

    move/from16 v27, v18

    invoke-virtual/range {v21 .. v28}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 3029
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "toStack":Lcom/android/server/am/ActivityStack;
    :goto_5
    add-int/lit8 v3, v6, 0x1

    .line 3029
    .end local v6    # "i":I
    .local v3, "i":I
    move/from16 v15, p2

    move v2, v3

    move-object v14, v7

    goto :goto_3

    .line 3055
    .end local v3    # "i":I
    .end local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .end local v8    # "size":I
    .restart local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_6
    move-object v7, v14

    .line 3055
    .end local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .restart local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    const/4 v3, 0x0

    invoke-virtual {v9, v3, v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3056
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3058
    .end local v0    # "windowingMode":I
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .end local v18    # "schedulePictureInPictureModeChange":Z
    .end local v20    # "inPinnedWindowingMode":Z
    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3059
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3060
    nop

    .line 3061
    return-void

    .line 3058
    :catchall_0
    move-exception v0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3059
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method static nextTaskIdForUser(II)I
    .locals 3
    .param p0, "taskId"    # I
    .param p1, "userId"    # I

    .line 963
    add-int/lit8 v0, p0, 0x1

    .line 964
    .local v0, "nextTaskId":I
    add-int/lit8 v1, p1, 0x1

    const v2, 0x186a0

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 966
    sub-int/2addr v0, v2

    .line 968
    :cond_0
    return v0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .line 4388
    if-eqz p1, :cond_2

    .line 4389
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4390
    :cond_0
    if-eqz p3, :cond_1

    .line 4391
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4393
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4394
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4395
    const/4 v0, 0x1

    return v0

    .line 4398
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private putStacksToSleepLocked(ZZ)Z
    .locals 6
    .param p1, "allowDelay"    # Z
    .param p2, "shuttingDown"    # Z

    .line 3936
    const/4 v0, 0x1

    .line 3937
    .local v0, "allSleep":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3938
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3939
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 3940
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3941
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p1, :cond_0

    .line 3942
    invoke-virtual {v4, p2}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_2

    .line 3944
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 3939
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3937
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3948
    .end local v1    # "displayNdx":I
    :cond_2
    return v0
.end method

.method private readyToResume()Z
    .locals 1

    .line 4985
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private releaseSleepTokens(Lcom/android/server/am/ActivityDisplay;)V
    .locals 3
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;

    .line 4720
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4721
    return-void

    .line 4723
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal$SleepToken;

    .line 4724
    .local v1, "token":Landroid/app/ActivityManagerInternal$SleepToken;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4725
    .end local v1    # "token":Landroid/app/ActivityManagerInternal$SleepToken;
    goto :goto_0

    .line 4726
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4728
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 4729
    return-void
.end method

.method private removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    .locals 2
    .param p1, "token"    # Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    .line 4708
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4710
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->access$000(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4711
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 4712
    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4713
    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4714
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 4717
    :cond_0
    return-void
.end method

.method private removeStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 3233
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 3234
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 3244
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PinnedActivityStack;

    .line 3245
    .local v1, "pinnedStack":Lcom/android/server/am/PinnedActivityStack;
    iput-boolean v2, v1, Lcom/android/server/am/PinnedActivityStack;->mForceHidden:Z

    .line 3246
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/am/PinnedActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3247
    iput-boolean v4, v1, Lcom/android/server/am/PinnedActivityStack;->mForceHidden:Z

    .line 3248
    invoke-virtual {p0, v3, v4, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 3252
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 3253
    .end local v1    # "pinnedStack":Lcom/android/server/am/PinnedActivityStack;
    goto :goto_1

    .line 3254
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .line 3254
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3255
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v4, "remove-stack"

    invoke-virtual {p0, v3, v2, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 3254
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3259
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 21
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p6, "preserveWindows"    # Z
    .param p7, "deferResume"    # Z

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 3106
    iget-boolean v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    if-nez v0, :cond_0

    .line 3108
    return-void

    .line 3111
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 3112
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v11, :cond_1

    .line 3113
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "resizeDockedStackLocked: docked stack not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    return-void

    .line 3117
    :cond_1
    iget-boolean v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    const/4 v12, 0x1

    if-eqz v0, :cond_2

    .line 3118
    iput-boolean v12, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 3119
    invoke-static/range {p1 .. p1}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 3120
    invoke-static/range {p2 .. p2}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 3121
    invoke-static/range {p3 .. p3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 3122
    invoke-static/range {p4 .. p4}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 3123
    invoke-static/range {p5 .. p5}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 3126
    :cond_2
    const-string v0, "am.resizeDockedStack"

    const-wide/16 v13, 0x40

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3127
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3130
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3131
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3132
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v15, p2

    move-object/from16 v8, p3

    :try_start_1
    invoke-virtual {v11, v10, v15, v8}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3136
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v12, :cond_9

    if-nez v10, :cond_3

    .line 3137
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    .line 3150
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    move-object v7, v1

    .line 3151
    .local v7, "display":Lcom/android/server/am/ActivityDisplay;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v1

    .line 3152
    .local v6, "otherTaskRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v12

    .line 3152
    .local v1, "i":I
    :goto_0
    move v5, v1

    .line 3152
    .end local v1    # "i":I
    .local v5, "i":I
    if-ltz v5, :cond_a

    .line 3153
    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v4, v1

    .line 3154
    .local v4, "current":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 3155
    nop

    .line 3152
    .end local v4    # "current":Lcom/android/server/am/ActivityStack;
    .end local v5    # "i":I
    .end local v6    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    .local v17, "i":I
    .local v19, "otherTaskRect":Landroid/graphics/Rect;
    .local v20, "display":Lcom/android/server/am/ActivityDisplay;
    :goto_1
    move/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto :goto_4

    .line 3157
    .end local v17    # "i":I
    .end local v19    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v20    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v4    # "current":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "i":I
    .restart local v6    # "otherTaskRect":Landroid/graphics/Rect;
    .restart local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3158
    goto :goto_1

    .line 3160
    :cond_5
    iget-boolean v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isTopActivityVisible()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3163
    goto :goto_1

    .line 3166
    :cond_6
    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 3167
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object/from16 v3, p4

    invoke-virtual {v4, v3, v1, v6, v12}, Lcom/android/server/am/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 3172
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 3173
    :goto_2
    move-object/from16 v16, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v17, v6

    goto :goto_3

    :cond_8
    move-object/from16 v17, v3

    :goto_3
    const/16 v18, 0x1

    .line 3172
    move-object v1, v9

    move-object v2, v4

    move-object/from16 v3, v16

    move-object/from16 v16, v4

    move-object/from16 v4, v17

    .line 3172
    .end local v4    # "current":Lcom/android/server/am/ActivityStack;
    .local v16, "current":Lcom/android/server/am/ActivityStack;
    move/from16 v17, v5

    move-object/from16 v5, p5

    .line 3172
    .end local v5    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v19, v6

    move/from16 v6, p6

    .line 3172
    .end local v6    # "otherTaskRect":Landroid/graphics/Rect;
    .restart local v19    # "otherTaskRect":Landroid/graphics/Rect;
    move-object/from16 v20, v7

    move/from16 v7, v18

    .line 3172
    .end local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v20    # "display":Lcom/android/server/am/ActivityDisplay;
    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 3152
    .end local v16    # "current":Lcom/android/server/am/ActivityStack;
    :goto_4
    add-int/lit8 v1, v17, -0x1

    .line 3152
    .end local v17    # "i":I
    .restart local v1    # "i":I
    move-object/from16 v8, p3

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_0

    .line 3141
    .end local v1    # "i":I
    .end local v19    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v20    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_9
    :goto_5
    invoke-virtual {v9, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3144
    const/4 v0, 0x0

    .line 3178
    :cond_a
    if-nez p7, :cond_b

    .line 3179
    move/from16 v2, p6

    :try_start_2
    invoke-virtual {v11, v0, v2}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3179
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_6

    .line 3182
    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_b
    move/from16 v2, p6

    :goto_6
    iput-boolean v12, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3183
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3184
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 3185
    nop

    .line 3186
    return-void

    .line 3182
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v15, p2

    :goto_7
    move/from16 v2, p6

    :goto_8
    iput-boolean v12, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3183
    iget-object v3, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3184
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private taskTopActivityIsUser(Lcom/android/server/am/TaskRecord;I)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "userId"    # I

    .line 916
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 917
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 919
    .local v1, "resultTo":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v2, p2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v2, p2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3678
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2

    .line 3679
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3680
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 3681
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3682
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 3684
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

    goto :goto_0

    .line 3687
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

    .line 3690
    :goto_0
    sget v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfHandle:I

    if-lez v0, :cond_1

    .line 3691
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 3693
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    .line 3694
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3693
    invoke-virtual {v0, v4, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 3696
    :cond_2
    return-void
.end method

.method acquireLaunchWakelock()V
    .locals 4

    .line 2205
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2206
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2210
    :cond_0
    return-void
.end method

.method acquireUxPerfLock(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3699
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    .line 3700
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 3702
    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "processPausingActivities"    # Z
    .param p4, "config"    # Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 2237
    move-object/from16 v2, p4

    const/4 v3, 0x0

    .line 2238
    .local v3, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v4, 0x0

    .line 2239
    .local v4, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    const/4 v5, 0x0

    .line 2240
    .local v5, "NS":I
    const/4 v6, 0x0

    .line 2241
    .local v6, "NF":I
    const/4 v7, 0x0

    .line 2242
    .local v7, "booting":Z
    const/4 v8, 0x0

    .line 2244
    .local v8, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 2245
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v10, 0x1

    if-eqz v9, :cond_3

    .line 2248
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v12, 0x64

    invoke-virtual {v11, v12, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2249
    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2250
    if-eqz v1, :cond_0

    .line 2251
    const-wide/16 v11, -0x1

    invoke-virtual {v0, v1, v9, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;J)V

    .line 2259
    :cond_0
    if-eqz v2, :cond_1

    .line 2260
    invoke-virtual {v9, v2}, Lcom/android/server/am/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 2265
    :cond_1
    iput-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 2268
    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v1, :cond_3

    .line 2269
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v7

    .line 2273
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    .line 2274
    if-eqz v9, :cond_4

    .line 2275
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2278
    :cond_4
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2279
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v13, 0x68

    invoke-virtual {v11, v13}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2284
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2286
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v12, v12}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2290
    :cond_6
    move/from16 v11, p3

    invoke-virtual {v0, v9, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;

    move-result-object v13

    .line 2292
    .local v13, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    goto :goto_0

    :cond_7
    move v14, v12

    :goto_0
    move v5, v14

    .line 2293
    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v6, v14

    if-lez v14, :cond_8

    .line 2294
    new-instance v14, Ljava/util/ArrayList;

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v14

    .line 2295
    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2298
    :cond_8
    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 2299
    new-instance v14, Ljava/util/ArrayList;

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v14

    .line 2300
    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2305
    :cond_9
    move-object v14, v9

    move v9, v12

    .local v9, "i":I
    .local v14, "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-ge v9, v5, :cond_c

    .line 2306
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 2307
    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    .line 2308
    .local v15, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_b

    .line 2309
    iget-boolean v10, v14, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_a

    .line 2310
    const-string v10, "activityIdleInternalLocked"

    invoke-virtual {v15, v14, v12, v12, v10}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    .line 2313
    :cond_a
    invoke-virtual {v15, v14}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2305
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_b
    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    goto :goto_1

    .line 2320
    .end local v9    # "i":I
    :cond_c
    move v9, v8

    move v8, v12

    .local v8, "i":I
    .local v9, "activityRemoved":Z
    :goto_3
    if-ge v8, v6, :cond_e

    .line 2321
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 2322
    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 2323
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v10, :cond_d

    .line 2324
    const-string v15, "finish-idle"

    const/4 v12, 0x1

    invoke-virtual {v10, v14, v12, v15}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v15

    or-int/2addr v9, v15

    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_4

    .line 2320
    :cond_d
    const/4 v12, 0x1

    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x0

    goto :goto_3

    .line 2328
    .end local v8    # "i":I
    :cond_e
    if-nez v7, :cond_f

    .line 2330
    if-eqz v4, :cond_f

    .line 2331
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_5
    move/from16 v8, v16

    .end local v16    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_f

    .line 2332
    iget-object v10, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/UserState;

    invoke-virtual {v10, v12}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 2331
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "i":I
    .restart local v16    # "i":I
    goto :goto_5

    .line 2337
    .end local v16    # "i":I
    :cond_f
    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 2341
    if-eqz v9, :cond_10

    .line 2342
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2345
    :cond_10
    return-object v14
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4877
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchingFinished(Landroid/os/IBinder;)V

    .line 4878
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4879
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 4880
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4881
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/ActivityRecord;->setSleeping(ZZ)V

    .line 4884
    :cond_0
    return-void
.end method

.method activityRelaunchingLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4887
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunching(Landroid/os/IBinder;)V

    .line 4888
    return-void
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3901
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3902
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3903
    .local v0, "s":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 3904
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    goto :goto_0

    .line 3906
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3908
    :goto_0
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .locals 4
    .param p1, "taskSwitch"    # Z

    .line 4036
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4037
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4038
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 4039
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4040
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->addStartingWindowsForVisibleActivities(Z)V

    .line 4038
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4036
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4043
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .locals 9

    .line 1194
    const/4 v0, 0x1

    .line 1195
    .local v0, "pausing":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1196
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1197
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1198
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1199
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v5, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1200
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_0

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1206
    const/4 v6, 0x0

    return v6

    .line 1197
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1195
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1211
    .end local v1    # "displayNdx":I
    :cond_2
    return v0
.end method

.method allResumedActivitiesComplete()Z
    .locals 7

    .line 1087
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1088
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1089
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1090
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1091
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1092
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1093
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_0

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1094
    const/4 v1, 0x0

    return v1

    .line 1089
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1087
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1103
    .end local v0    # "displayNdx":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1104
    return v1
.end method

.method allResumedActivitiesIdle()Z
    .locals 7

    .line 1066
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1067
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1068
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 1069
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1070
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_0

    .line 1071
    goto :goto_2

    .line 1073
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1074
    .local v5, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_1

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v6, :cond_2

    .line 1077
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1068
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1066
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1082
    .end local v0    # "displayNdx":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 1083
    return v1
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 1
    .param p1, "id"    # I

    .line 810
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;
    .locals 2
    .param p1, "id"    # I
    .param p2, "matchMode"    # I

    .line 814
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;
    .locals 20
    .param p1, "id"    # I
    .param p2, "matchMode"    # I
    .param p3, "aOptions"    # Landroid/app/ActivityOptions;
    .param p4, "onTop"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 827
    move/from16 v11, p4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 828
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Should not specify activity options for non-restore lookup"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 832
    :cond_1
    :goto_0
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 833
    .local v12, "numDisplays":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "displayNdx":I
    :goto_1
    move v13, v6

    .end local v6    # "displayNdx":I
    .local v13, "displayNdx":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v13, v12, :cond_6

    .line 834
    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/android/server/am/ActivityDisplay;

    .line 835
    .local v14, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v14}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v6

    .local v8, "stackNdx":I
    :goto_2
    move v15, v8

    .end local v8    # "stackNdx":I
    .local v15, "stackNdx":I
    if-ltz v15, :cond_5

    .line 836
    invoke-virtual {v14, v15}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 837
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v10, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 838
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    if-nez v9, :cond_2

    .line 839
    nop

    .line 835
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v8, v15, -0x1

    .end local v15    # "stackNdx":I
    .restart local v8    # "stackNdx":I
    goto :goto_2

    .line 841
    .end local v8    # "stackNdx":I
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "stackNdx":I
    :cond_2
    if-eqz v3, :cond_4

    .line 844
    invoke-virtual {v0, v7, v3, v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 845
    .local v8, "launchStack":Lcom/android/server/am/ActivityStack;
    if-eqz v8, :cond_4

    if-eq v10, v8, :cond_4

    .line 846
    if-eqz v11, :cond_3

    .line 847
    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v4

    .line 848
    .local v7, "reparentMode":I
    :goto_3
    const/16 v16, 0x1

    const/16 v17, 0x1

    const-string v18, "anyTaskForIdLocked"

    move-object v4, v9

    move-object v5, v8

    move v6, v11

    move-object/from16 v19, v8

    move/from16 v8, v16

    .end local v8    # "launchStack":Lcom/android/server/am/ActivityStack;
    .local v19, "launchStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v16, v9

    move/from16 v9, v17

    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .local v16, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v17, v10

    move-object/from16 v10, v18

    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .end local v7    # "reparentMode":I
    .end local v19    # "launchStack":Lcom/android/server/am/ActivityStack;
    goto :goto_4

    .line 852
    .end local v16    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v16    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_4
    return-object v16

    .line 833
    .end local v14    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v15    # "stackNdx":I
    .end local v16    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5
    add-int/lit8 v6, v13, 0x1

    .end local v13    # "displayNdx":I
    .restart local v6    # "displayNdx":I
    goto :goto_1

    .line 857
    .end local v6    # "displayNdx":I
    :cond_6
    if-nez v2, :cond_7

    .line 858
    return-object v7

    .line 864
    :cond_7
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v4, v1}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 866
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    if-nez v4, :cond_8

    .line 871
    return-object v7

    .line 874
    :cond_8
    if-ne v2, v6, :cond_9

    .line 875
    return-object v4

    .line 879
    :cond_9
    invoke-virtual {v0, v4, v3, v11}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    if-nez v5, :cond_a

    .line 882
    return-object v7

    .line 885
    :cond_a
    return-object v4
.end method

.method applySleepTokensLocked(Z)V
    .locals 7
    .param p1, "applyToStacks"    # Z

    .line 3844
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_a

    .line 3846
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3847
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->shouldSleep()Z

    move-result v2

    .line 3848
    .local v2, "displayShouldSleep":Z
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->isSleeping()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3849
    goto/16 :goto_4

    .line 3851
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->setIsSleeping(Z)V

    .line 3853
    if-nez p1, :cond_1

    .line 3854
    goto/16 :goto_4

    .line 3858
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_6

    .line 3860
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 3861
    goto :goto_2

    .line 3865
    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3866
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_3

    .line 3867
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    goto :goto_2

    .line 3869
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 3870
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v5

    iget v6, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3876
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3879
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3880
    const-string v5, "ActivityManager"

    const-string v6, "game pip fromSleepOut"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    const-string v5, "fromSleepOut"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 3858
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3887
    .end local v3    # "stackNdx":I
    :cond_6
    if-nez v2, :cond_9

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3888
    goto :goto_4

    .line 3891
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ActivityRecord;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3892
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3893
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    iget v6, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-ne v5, v6, :cond_8

    .line 3894
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 3896
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8
    goto :goto_3

    .line 3844
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "displayShouldSleep":Z
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ActivityRecord;>;"
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 3898
    .end local v0    # "displayNdx":I
    :cond_a
    return-void
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 17
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1010
    move-object/from16 v2, p1

    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v3, 0x40

    if-eqz v0, :cond_0

    .line 1011
    const-string v0, "ActivityStackSupervisor.attachApplicationLocked"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1014
    :cond_0
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1015
    .local v5, "processName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1016
    .local v0, "didSomething":Z
    iget-object v6, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "displayNdx":I
    :goto_0
    if-ltz v6, :cond_7

    .line 1017
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityDisplay;

    .line 1018
    .local v9, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v9}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v7

    .local v10, "stackNdx":I
    :goto_1
    if-ltz v10, :cond_6

    .line 1019
    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 1020
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1021
    goto/16 :goto_5

    .line 1023
    :cond_1
    iget-object v12, v1, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStack;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 1024
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 1025
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    iget-object v13, v1, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1026
    .local v13, "size":I
    move v14, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v14, "didSomething":Z
    :goto_2
    move v15, v0

    .end local v0    # "i":I
    .local v15, "i":I
    if-ge v15, v13, :cond_5

    .line 1027
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1028
    .local v8, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_4

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v3, :cond_4

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 1029
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1031
    if-ne v12, v8, :cond_2

    move v0, v7

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    :try_start_0
    invoke-virtual {v1, v8, v2, v0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 1033
    const/4 v0, 0x1

    .line 1039
    .end local v14    # "didSomething":Z
    .local v0, "didSomething":Z
    move v14, v0

    .end local v0    # "didSomething":Z
    .restart local v14    # "didSomething":Z
    :cond_3
    goto :goto_4

    .line 1035
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1036
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in new application when starting activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1037
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1036
    const-string v4, "ActivityManager"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    throw v0

    .line 1026
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v8    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_4
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "i":I
    .local v0, "i":I
    const-wide/16 v3, 0x40

    goto :goto_2

    .line 1018
    .end local v0    # "i":I
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "size":I
    :cond_5
    move v0, v14

    .end local v14    # "didSomething":Z
    .local v0, "didSomething":Z
    :goto_5
    add-int/lit8 v10, v10, -0x1

    const-wide/16 v3, 0x40

    goto :goto_1

    .line 1016
    .end local v9    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v10    # "stackNdx":I
    :cond_6
    add-int/lit8 v6, v6, -0x1

    const-wide/16 v3, 0x40

    goto/16 :goto_0

    .line 1044
    .end local v6    # "displayNdx":I
    :cond_7
    if-nez v0, :cond_9

    .line 1046
    sget-boolean v3, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v3, :cond_8

    .line 1047
    const-string v3, "ActivityStackSupervisor.ensureActivitiesVisibleLocked"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_6

    .line 1050
    :cond_8
    const-wide/16 v6, 0x40

    :goto_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1052
    sget-boolean v3, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v3, :cond_a

    .line 1053
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_7

    .line 1058
    :cond_9
    const-wide/16 v6, 0x40

    :cond_a
    :goto_7
    sget-boolean v3, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v3, :cond_b

    .line 1059
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1062
    :cond_b
    return v0
.end method

.method attachDisplay(Lcom/android/server/am/ActivityDisplay;)V
    .locals 2
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4643
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4644
    return-void
.end method

.method canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "resizeable"    # Z
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 515
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 517
    return v0

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 521
    return v2

    .line 523
    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->displayConfigMatchesGlobal(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 525
    return v2

    .line 527
    :cond_2
    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/android/server/am/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 531
    return v2

    .line 533
    :cond_3
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .locals 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 2580
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2583
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_1

    .line 2584
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    nop

    .line 2583
    :cond_3
    return v0

    .line 2581
    :cond_4
    :goto_0
    return v0
.end method

.method cancelInitializingActivities()V
    .locals 4

    .line 1215
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1216
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 1217
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1218
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1219
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    .line 1217
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1215
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1222
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method checkFreeformPauseWhenUnFocused(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1187
    .local v0, "lastStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z

    .line 1190
    :cond_0
    return-void
.end method

.method checkReadyForSleepLocked(Z)V
    .locals 1
    .param p1, "allowDelay"    # Z

    .line 3911
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3913
    return-void

    .line 3916
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->putStacksToSleepLocked(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3917
    return-void

    .line 3921
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 3923
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3925
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3926
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3928
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_3

    .line 3929
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3931
    :cond_3
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "launchingInTask"    # Z
    .param p10, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p11, "resultRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p12, "resultStack"    # Lcom/android/server/am/ActivityStack;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p10

    .line 1951
    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1952
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/am/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v13, v0

    .line 1953
    .local v13, "isCallerRecents":Z
    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.START_ANY_ACTIVITY"

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    .line 1955
    .local v14, "startAnyPerm":I
    if-eqz v14, :cond_9

    if-eqz v13, :cond_1

    if-eqz p9, :cond_1

    goto/16 :goto_3

    .line 1961
    :cond_1
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p7

    move v3, v8

    move v4, v9

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v0

    .line 1963
    .local v0, "componentRestriction":I
    nop

    .line 1964
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1963
    invoke-direct {v6, v1, v2, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 1965
    .local v1, "actionRestriction":I
    if-eq v0, v12, :cond_5

    if-ne v1, v12, :cond_2

    goto/16 :goto_1

    .line 1993
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Appop Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1998
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1997
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1999
    .local v3, "message":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    return v11

    .line 2001
    .end local v3    # "message":Ljava/lang/String;
    :cond_3
    if-ne v0, v3, :cond_4

    .line 2002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Appop Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") requires appop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 2005
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2006
    .restart local v3    # "message":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    return v11

    .line 2010
    .end local v3    # "message":Ljava/lang/String;
    :cond_4
    return v12

    .line 1967
    :cond_5
    :goto_1
    if-eqz p11, :cond_6

    .line 1968
    const/16 v16, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p12

    move-object/from16 v17, p11

    move-object/from16 v18, p3

    move/from16 v19, p4

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1973
    :cond_6
    if-eq v1, v12, :cond_8

    .line 1978
    iget-boolean v4, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v4, :cond_7

    .line 1979
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") not exported from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1984
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1974
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") with revoked permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1977
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1984
    .local v4, "msg":Ljava/lang/String;
    :goto_2
    nop

    .line 1989
    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1959
    .end local v0    # "componentRestriction":I
    .end local v1    # "actionRestriction":I
    .end local v4    # "msg":Ljava/lang/String;
    :cond_9
    :goto_3
    move-object/from16 v2, p7

    return v12
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V
    .locals 16
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3333
    if-eqz p3, :cond_0

    .line 3334
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v0, v2}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 3336
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendActivityStackChangedIntent()V

    .line 3339
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3340
    .local v3, "component":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 3341
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No component for base intent of task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    return-void

    .line 3346
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    new-instance v4, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActiveServices;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 3348
    if-nez p2, :cond_2

    .line 3349
    return-void

    .line 3353
    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3354
    .local v5, "pkg":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 3355
    .local v6, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 3356
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    const/4 v8, 0x0

    .line 3356
    .local v8, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 3358
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 3359
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v10, 0x0

    .line 3359
    .local v10, "j":I
    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 3360
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 3361
    .local v11, "proc":Lcom/android/server/am/ProcessRecord;
    iget v12, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v13, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v12, v13, :cond_3

    .line 3363
    goto :goto_3

    .line 3365
    :cond_3
    iget-object v12, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne v11, v12, :cond_4

    .line 3367
    goto :goto_3

    .line 3369
    :cond_4
    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 3371
    goto :goto_3

    .line 3374
    :cond_5
    const/4 v12, 0x0

    .line 3374
    .local v12, "k":I
    :goto_2
    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 3375
    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 3376
    .local v13, "otherTask":Lcom/android/server/am/TaskRecord;
    iget v14, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v0, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v14, v0, :cond_6

    iget-boolean v0, v13, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_6

    .line 3379
    return-void

    .line 3374
    .end local v13    # "otherTask":Lcom/android/server/am/TaskRecord;
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3383
    .end local v12    # "k":I
    :cond_7
    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eqz v0, :cond_8

    .line 3385
    return-void

    .line 3389
    :cond_8
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3359
    .end local v11    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3356
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v10    # "j":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3394
    .end local v8    # "i":I
    :cond_a
    const/4 v0, 0x0

    .line 3394
    .local v0, "i":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_c

    .line 3395
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3396
    .local v8, "pr":Lcom/android/server/am/ProcessRecord;
    iget v9, v8, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v9, :cond_b

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 3397
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 3398
    const-string/jumbo v9, "remove task"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_5

    .line 3401
    :cond_b
    const-string/jumbo v9, "remove task"

    iput-object v9, v8, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 3394
    .end local v8    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3404
    .end local v0    # "i":I
    :cond_c
    if-eqz p3, :cond_d

    .line 3406
    :try_start_0
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStackSupervisor$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3409
    goto :goto_6

    .line 3407
    :catch_0
    move-exception v0

    .line 3408
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_6
    return-void
.end method

.method cleanupActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1233
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1234
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1236
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1237
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1236
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1241
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 4
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 4065
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4066
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4067
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 4068
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4069
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 4067
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4065
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4072
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 4

    .line 2361
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2362
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2363
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 2364
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2365
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 2363
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2361
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2368
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 1

    .line 3837
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3838
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3839
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3841
    :cond_0
    return-void
.end method

.method continueUpdateBounds(I)V
    .locals 1
    .param p1, "activityType"    # I

    .line 2968
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2969
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 2970
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->continueUpdateBounds()V

    .line 2972
    :cond_0
    return-void
.end method

.method continueUpdateRecentsHomeStackBounds()V
    .locals 1

    .line 2963
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    .line 2964
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    .line 2965
    return-void
.end method

.method createRunningTasks()Lcom/android/server/am/RunningTasks;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 671
    new-instance v0, Lcom/android/server/am/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/am/RunningTasks;-><init>()V

    return-object v0
.end method

.method createSleepTokenLocked(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 4696
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4697
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 4701
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V

    .line 4702
    .local v1, "token":Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4703
    iget-object v2, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4704
    return-object v1

    .line 4698
    .end local v1    # "token":Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method deferUpdateBounds(I)V
    .locals 1
    .param p1, "activityType"    # I

    .line 2956
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2957
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 2958
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferUpdateBounds()V

    .line 2960
    :cond_0
    return-void
.end method

.method deferUpdateRecentsHomeStackBounds()V
    .locals 1

    .line 2951
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateBounds(I)V

    .line 2952
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateBounds(I)V

    .line 2953
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4304
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4305
    const-string v0, " mLastFocusedStack="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4306
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurTaskIdForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4308
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4309
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4309
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4310
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4311
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityDisplay;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4309
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4313
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4314
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWaitingForActivityVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4315
    const/4 v0, 0x0

    .line 4315
    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4316
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4319
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4320
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4322
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4323
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4324
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    .line 4403
    move-object/from16 v14, p5

    const/4 v1, 0x0

    .line 4404
    .local v1, "printed":Z
    const/4 v2, 0x0

    .line 4405
    .local v2, "needSep":Z
    const/4 v3, 0x0

    move v15, v1

    move/from16 v16, v2

    .end local v1    # "printed":Z
    .end local v2    # "needSep":Z
    .local v3, "displayNdx":I
    .local v15, "printed":Z
    .local v16, "needSep":Z
    :goto_0
    move v12, v3

    .end local v3    # "displayNdx":I
    .local v12, "displayNdx":I
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_5

    .line 4406
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/am/ActivityDisplay;

    .line 4407
    .local v11, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    const-string v1, "Display #"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v11, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4408
    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4409
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/am/ActivityDisplay;

    .line 4410
    .local v10, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v10}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_1
    move v9, v1

    .end local v1    # "stackNdx":I
    .local v9, "stackNdx":I
    if-ltz v9, :cond_4

    .line 4411
    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 4412
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stack #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4414
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4415
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4413
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isSleeping="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4419
    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v14

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4422
    iget-object v3, v8, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v4, "    "

    const-string v5, "Run"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v19, "    Running activities (most recent first):"

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v21, v8

    move/from16 v8, v17

    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .local v21, "stack":Lcom/android/server/am/ActivityStack;
    move/from16 v17, v9

    move-object v9, v14

    .end local v9    # "stackNdx":I
    .local v17, "stackNdx":I
    move-object/from16 v22, v10

    move/from16 v10, v18

    .end local v10    # "display":Lcom/android/server/am/ActivityDisplay;
    .local v22, "display":Lcom/android/server/am/ActivityDisplay;
    move-object/from16 v18, v11

    move-object/from16 v11, v19

    .end local v11    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    .local v18, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    move/from16 v19, v12

    move-object/from16 v12, v20

    .end local v12    # "displayNdx":I
    .local v19, "displayNdx":I
    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v1, v15

    .line 4426
    .end local v15    # "printed":Z
    .local v1, "printed":Z
    move v2, v1

    .line 4427
    .end local v16    # "needSep":Z
    .restart local v2    # "needSep":Z
    move-object/from16 v3, v21

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .end local v21    # "stack":Lcom/android/server/am/ActivityStack;
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    const-string v5, "    mPausingActivity: "

    invoke-static {v13, v4, v14, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4429
    .local v4, "pr":Z
    if-eqz v4, :cond_0

    .line 4430
    const/4 v1, 0x1

    .line 4431
    const/4 v2, 0x0

    .line 4433
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    const-string v6, "    mResumedActivity: "

    invoke-static {v13, v5, v14, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4435
    if-eqz v4, :cond_1

    .line 4436
    const/4 v1, 0x1

    .line 4437
    const/4 v2, 0x0

    .line 4439
    :cond_1
    if-eqz p3, :cond_3

    .line 4440
    iget-object v5, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v6, "    mLastPausedActivity: "

    invoke-static {v13, v5, v14, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4442
    if-eqz v4, :cond_2

    .line 4443
    const/4 v1, 0x1

    .line 4444
    const/4 v2, 0x1

    .line 4446
    :cond_2
    iget-object v5, v3, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v6, "    mLastNoHistoryActivity: "

    invoke-static {v13, v5, v14, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 4449
    .end local v1    # "printed":Z
    .restart local v15    # "printed":Z
    :cond_3
    move v15, v1

    move/from16 v16, v15

    .line 4410
    .end local v2    # "needSep":Z
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "pr":Z
    .restart local v16    # "needSep":Z
    add-int/lit8 v1, v17, -0x1

    .end local v17    # "stackNdx":I
    .local v1, "stackNdx":I
    move-object/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v10, v22

    goto/16 :goto_1

    .line 4405
    .end local v1    # "stackNdx":I
    .end local v18    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    .end local v19    # "displayNdx":I
    .end local v22    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v12    # "displayNdx":I
    :cond_4
    move/from16 v19, v12

    .end local v12    # "displayNdx":I
    .restart local v19    # "displayNdx":I
    add-int/lit8 v3, v19, 0x1

    .end local v19    # "displayNdx":I
    .local v3, "displayNdx":I
    goto/16 :goto_0

    .line 4453
    .end local v3    # "displayNdx":I
    :cond_5
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Fin"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting to finish:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4455
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Stop"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting to stop:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4457
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Wait"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting for another to become visible:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4460
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Sleep"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting to sleep:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v1, v15

    .line 4463
    .end local v15    # "printed":Z
    .local v1, "printed":Z
    return v1
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4354
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4355
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4356
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4357
    .local v2, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4358
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4355
    .end local v2    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4360
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public dumpDisplays(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4295
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4296
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4297
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stacks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4298
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->dumpStacks(Ljava/io/PrintWriter;)V

    .line 4299
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4295
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4301
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 1
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 4005
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 4007
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .locals 4
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 4014
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 4017
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4018
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4019
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 4021
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 4022
    goto :goto_2

    .line 4025
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4026
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4019
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4017
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4031
    .end local v0    # "displayNdx":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    .line 4032
    nop

    .line 4033
    return-void

    .line 4031
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z
    .locals 5
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I
    .param p3, "markFrozenIfConfigChanged"    # Z
    .param p4, "deferResume"    # Z

    .line 1807
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 1810
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1812
    return v1

    .line 1816
    :cond_0
    if-eqz p1, :cond_1

    .line 1817
    nop

    .line 1818
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    .line 1817
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->noteUpdateOrientationFromApp(Z)V

    .line 1824
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1825
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    .line 1826
    if-eqz p1, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1827
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    nop

    .line 1824
    :cond_2
    invoke-virtual {v2, v3, v0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;

    move-result-object v0

    .line 1831
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz p1, :cond_3

    .line 1832
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->noteUpdateOrientationFromAppEnd()V

    .line 1836
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    if-eqz v0, :cond_4

    .line 1837
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1841
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, p1, p4, p2}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZI)Z

    move-result v1

    return v1
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 3759
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3760
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3761
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 3762
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3763
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3765
    .local v4, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    .line 3766
    return-object v4

    .line 3761
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3759
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3770
    .end local v0    # "displayNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .locals 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 5083
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 5084
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-nez v0, :cond_0

    .line 5085
    const/4 v1, 0x0

    return-object v1

    .line 5087
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 5088
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v2, p1, :cond_1

    if-lez v1, :cond_1

    .line 5089
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    return-object v2

    .line 5087
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5092
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a stack behind stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .line 3705
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 3706
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 3707
    const/4 v0, 0x0

    .line 3709
    .local v0, "affinityMatch":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_6

    .line 3710
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3711
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_5

    .line 3712
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3713
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3716
    goto :goto_2

    .line 3718
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V

    .line 3724
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_4

    .line 3725
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    if-nez v5, :cond_3

    .line 3726
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_1

    .line 3728
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 3730
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_2

    .line 3732
    const/4 v5, 0x6

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->acquireUxPerfLock(ILjava/lang/String;)V

    .line 3734
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    return-object v5

    .line 3735
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    if-ne v5, p2, :cond_4

    .line 3739
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 3711
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3709
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3749
    .end local v1    # "displayNdx":I
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_8

    .line 3750
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 3754
    :cond_8
    return-object v0
.end method

.method findTaskToMoveToFront(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .locals 19
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "forceNonResizeable"    # Z

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    .line 2511
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 2513
    .local v11, "currentStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2514
    .local v12, "focusedStack":Lcom/android/server/am/ActivityStack;
    const/4 v13, 0x0

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v13

    :goto_0
    move-object v14, v0

    .line 2518
    .local v14, "top_activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_1

    .line 2519
    invoke-virtual {v8, v14}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 2522
    :cond_1
    if-nez v11, :cond_2

    .line 2523
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to front. Stack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    return-void

    .line 2528
    :cond_2
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 2529
    iput-boolean v1, v8, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2532
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 2534
    .local v7, "prev":Lcom/android/server/am/ActivityRecord;
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_4

    if-eqz v7, :cond_5

    .line 2535
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2538
    :cond_4
    const-string v0, "findTaskToMoveToFront"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2541
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2542
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2543
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v9, v6}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2545
    invoke-virtual {v8, v13, v10, v9, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 2547
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v5, v11, :cond_6

    .line 2548
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v15, 0x1

    const-string v16, "findTaskToMoveToFront"

    move-object v0, v9

    move-object v1, v5

    move-object/from16 v17, v5

    move v5, v15

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    move-object v15, v6

    move-object/from16 v6, v16

    .end local v6    # "bounds":Landroid/graphics/Rect;
    .local v15, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2550
    move-object v0, v11

    .line 2554
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    move-object v6, v0

    goto :goto_1

    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "bounds":Landroid/graphics/Rect;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v17, v5

    move-object v15, v6

    move-object/from16 v6, v17

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "bounds":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2555
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v0, v8

    move-object v1, v6

    move-object v2, v15

    move-object/from16 v18, v6

    move/from16 v6, v16

    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v16, v7

    move/from16 v7, v17

    .end local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    .local v16, "prev":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_2

    .line 2562
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_7
    move-object/from16 v18, v6

    move-object/from16 v16, v7

    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->resizeWindowContainer()V

    .end local v15    # "bounds":Landroid/graphics/Rect;
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_2

    .line 2566
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object/from16 v16, v7

    .end local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 2567
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 2568
    if-nez v6, :cond_9

    .line 2567
    move-object v4, v13

    goto :goto_3

    .line 2568
    :cond_9
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2567
    move-object v4, v0

    :goto_3
    move-object v0, v11

    move-object v1, v9

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2573
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v4, v11

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    .line 2575
    return-void
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    .line 2389
    const/4 v1, 0x0

    .line 2390
    .local v1, "didSomething":Z
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2391
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 2392
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 2393
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 2394
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    move-object v5, v11

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2396
    const/4 v1, 0x1

    .line 2392
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2390
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2400
    .end local v2    # "displayNdx":I
    :cond_2
    return v1
.end method

.method finishTopCrashedActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2481
    const/4 v0, 0x0

    .line 2482
    .local v0, "finishedTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2483
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2484
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 2487
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2488
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 2489
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, p2}, Lcom/android/server/am/ActivityStack;->finishTopCrashedActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 2490
    .local v6, "t":Lcom/android/server/am/TaskRecord;
    if-eq v5, v1, :cond_0

    if-nez v0, :cond_1

    .line 2491
    :cond_0
    move-object v0, v6

    .line 2487
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "t":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2483
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2495
    .end local v2    # "displayNdx":I
    :cond_3
    return-object v0
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 5
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2499
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2500
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2501
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    .line 2502
    .local v2, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 2503
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2504
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2502
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2499
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "numStacks":I
    .end local v3    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2507
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;
    .locals 1
    .param p1, "displayId"    # I

    .line 4606
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    return-object v0
.end method

.method getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;
    .locals 3
    .param p1, "displayId"    # I

    .line 4620
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4621
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 4622
    return-object v0

    .line 4624
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4626
    return-object v2

    .line 4628
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 4629
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_2

    .line 4631
    return-object v2

    .line 4634
    :cond_2
    new-instance v2, Lcom/android/server/am/ActivityDisplay;

    invoke-direct {v2, p0, v1}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    move-object v0, v2

    .line 4635
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->attachDisplay(Lcom/android/server/am/ActivityDisplay;)V

    .line 4636
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V

    .line 4637
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    .line 4638
    return-object v0
.end method

.method public getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    return-object v0
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 4795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4796
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4797
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4798
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 4799
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4800
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4798
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4796
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4803
    .end local v1    # "displayNdx":I
    :cond_1
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityDisplay;
    .locals 1
    .param p1, "index"    # I

    .line 486
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;
    .locals 2

    .line 4611
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    return-object v0
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .locals 4
    .param p1, "displayId"    # I

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 496
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    .line 497
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dumpVisibleStacksOnly"    # Z
    .param p3, "dumpFocusedStackOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 4368
    if-eqz p3, :cond_0

    .line 4369
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 4371
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4372
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4373
    .local v1, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 4374
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 4375
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 4376
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4377
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p2, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4378
    :cond_1
    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4375
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4373
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4382
    .end local v2    # "displayNdx":I
    :cond_4
    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 2887
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "userId"    # I

    .line 2891
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 2892
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2893
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 2894
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2895
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2896
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_2

    .line 2897
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2898
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    if-eq p1, v6, :cond_0

    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_1

    .line 2900
    :cond_0
    return-object v5

    .line 2896
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2892
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2905
    .end local v1    # "taskNdx":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getKeyguardController()Lcom/android/server/am/KeyguardController;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    return-object v0
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;
    .locals 1

    .line 2589
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/am/TaskRecord;",
            "Z)TT;"
        }
    .end annotation

    .line 2632
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;
    .locals 16
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "onTop"    # Z
    .param p5, "candidateDisplayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/am/TaskRecord;",
            "ZI)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 2647
    const/4 v1, -0x1

    .line 2648
    .local v1, "taskId":I
    const/4 v2, -0x1

    .line 2652
    .local v2, "displayId":I
    if-eqz v8, :cond_0

    .line 2653
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    .line 2654
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    .line 2661
    .end local v1    # "taskId":I
    .local v10, "taskId":I
    :cond_0
    move v10, v1

    const/4 v1, -0x1

    if-eq v10, v1, :cond_1

    .line 2663
    invoke-virtual {v8, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2664
    const/4 v3, 0x2

    move/from16 v11, p4

    invoke-virtual {v0, v10, v3, v8, v11}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 2666
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8, v10}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2667
    if-eqz v3, :cond_2

    .line 2668
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2672
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    move/from16 v11, p4

    :cond_2
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v12

    .line 2673
    .local v12, "activityType":I
    const/4 v3, 0x0

    .line 2677
    .local v3, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-ne v2, v1, :cond_3

    .line 2678
    move/from16 v2, p5

    .line 2680
    .end local v2    # "displayId":I
    .local v13, "displayId":I
    :cond_3
    move v13, v2

    if-eq v13, v1, :cond_6

    invoke-direct {v0, v7, v13}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2681
    if-eqz v7, :cond_4

    .line 2683
    invoke-virtual {v0, v13, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2684
    if-eqz v3, :cond_4

    .line 2685
    return-object v3

    .line 2688
    :cond_4
    move-object v14, v3

    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .local v14, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v15

    .line 2689
    .local v15, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v15, :cond_5

    .line 2690
    move-object v1, v15

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v12

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2691
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v3, :cond_6

    .line 2692
    return-object v3

    .line 2699
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .end local v15    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_5
    move-object v3, v14

    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_6
    const/4 v1, 0x0

    .line 2700
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .local v1, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    const/4 v2, 0x0

    .line 2701
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v9, :cond_7

    .line 2702
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2704
    :cond_7
    if-nez v1, :cond_8

    if-eqz v7, :cond_8

    .line 2705
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2707
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .restart local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_8
    move-object v14, v1

    if-eqz v14, :cond_a

    .line 2708
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 2709
    if-eqz v2, :cond_a

    iget v1, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-direct {v0, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2710
    nop

    .line 2711
    invoke-virtual {v2, v7, v8, v9, v12}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v1

    .line 2712
    .local v1, "windowingMode":I
    invoke-virtual {v14, v1, v12}, Lcom/android/server/am/ActivityStack;->isCompatible(II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2713
    return-object v14

    .line 2715
    :cond_9
    const/4 v3, 0x4

    if-ne v1, v3, :cond_a

    .line 2716
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v3, v14, :cond_a

    .line 2717
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v9, v3, :cond_a

    .line 2723
    return-object v14

    .line 2728
    .end local v1    # "windowingMode":I
    :cond_a
    if-eqz v2, :cond_c

    iget v1, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    .line 2729
    invoke-direct {v0, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    if-eq v12, v1, :cond_b

    if-eqz v12, :cond_b

    goto :goto_0

    .line 2737
    :cond_b
    move-object v15, v2

    goto :goto_1

    .line 2734
    :cond_c
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    .line 2737
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    move-object v15, v1

    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v15    # "display":Lcom/android/server/am/ActivityDisplay;
    :goto_1
    move-object v1, v15

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v12

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;
    .locals 8
    .param p1, "currentFocus"    # Lcom/android/server/am/ActivityStack;
    .param p2, "ignoreCurrent"    # Z

    .line 2816
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 2818
    if-eqz p1, :cond_0

    .line 2819
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2820
    .local v0, "currentWindowingMode":I
    :goto_0
    const/4 v1, 0x0

    .line 2821
    .local v1, "candidate":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_8

    .line 2822
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 2824
    .local v3, "displayId":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    .line 2825
    .local v4, "display":Lcom/android/server/am/ActivityDisplay;
    if-nez v4, :cond_1

    .line 2827
    goto :goto_4

    .line 2829
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_2
    if-ltz v5, :cond_7

    .line 2830
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2831
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p2, :cond_2

    if-ne v6, p1, :cond_2

    .line 2832
    goto :goto_3

    .line 2834
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2835
    goto :goto_3

    .line 2838
    :cond_3
    const/4 v7, 0x4

    if-ne v0, v7, :cond_4

    if-nez v1, :cond_4

    .line 2839
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2847
    move-object v1, v6

    .line 2848
    goto :goto_3

    .line 2850
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2852
    return-object v1

    .line 2854
    :cond_5
    return-object v6

    .line 2829
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 2821
    .end local v3    # "displayId":I
    .end local v4    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "j":I
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2858
    .end local v2    # "i":I
    :cond_8
    return-object v1
.end method

.method getNextTaskIdForUserLocked(I)I
    .locals 4
    .param p1, "userId"    # I

    .line 972
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 976
    .local v0, "currentTaskId":I
    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 977
    .local v1, "candidateTaskId":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/am/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 978
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 989
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 990
    return v1

    .line 980
    :cond_1
    :goto_1
    invoke-static {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 981
    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 984
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "currentFocus"    # I

    .line 2872
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 2873
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2874
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2875
    .local v1, "displayId":I
    if-ne v1, p2, :cond_0

    .line 2876
    goto :goto_1

    .line 2878
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2879
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_1

    .line 2880
    return-object v2

    .line 2873
    .end local v1    # "displayId":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2883
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 491
    const/4 v0, 0x0

    return-object v0
.end method

.method getReparentTargetStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "toTop"    # Z

    .line 3503
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3504
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    iget v1, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 3505
    .local v1, "stackId":I
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    .line 3508
    .local v2, "inMultiWindowMode":Z
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v1, :cond_0

    .line 3509
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not reparent to same stack, task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already in stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    return-object v0

    .line 3516
    :cond_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3517
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3523
    :cond_2
    :goto_0
    iget v3, p2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    if-eqz v3, :cond_3

    goto :goto_1

    .line 3524
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3529
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v3, :cond_5

    goto :goto_2

    .line 3531
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3537
    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3538
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not move unresizeable task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to multi-window stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Moving to a fullscreen stack instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    if-eqz v0, :cond_7

    .line 3541
    return-object v0

    .line 3543
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x1

    .line 3544
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v5

    .line 3543
    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 3546
    :cond_8
    return-object p2
.end method

.method getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .line 994
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 995
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_0

    .line 996
    const/4 v1, 0x0

    return-object v1

    .line 998
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 999
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_3

    .line 1000
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1001
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_3

    .line 1002
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1005
    :cond_3
    return-object v1
.end method

.method getRunningTasks(ILjava/util/List;IIIZ)V
    .locals 8
    .param p1, "maxNum"    # I
    .param p3, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p4, "ignoreWindowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p5, "callingUid"    # I
    .param p6, "allowed"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 1407
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/am/RunningTasks;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/RunningTasks;->getTasks(ILjava/util/List;IILandroid/util/SparseArray;IZ)V

    .line 1409
    return-void
.end method

.method protected getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 2593
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2594
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2595
    .local v1, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v1, :cond_0

    .line 2596
    return-object v1

    .line 2593
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2599
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stackId"    # I

    .line 4782
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4783
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 4784
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    return-object v1

    .line 4786
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 4790
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4791
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 5216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5218
    .local v0, "topActivityTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 5219
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 5221
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_2

    .line 5222
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 5224
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5225
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5226
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_1

    .line 5227
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, v6, :cond_0

    .line 5228
    const/4 v6, 0x0

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 5230
    :cond_0
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5221
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 5218
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5236
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userId"    # I

    .line 2114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2116
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2116
    return-object v2

    .line 2118
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2756
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 2757
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_4

    .line 2762
    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2763
    return-object v2

    .line 2767
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2768
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2769
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->isValidLaunchStack(Lcom/android/server/am/ActivityStack;ILcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2770
    return-object v4

    .line 2767
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2775
    .end local v1    # "i":I
    :cond_2
    if-eqz p1, :cond_3

    .line 2776
    nop

    .line 2777
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v2

    .line 2776
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2780
    :cond_3
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValidLaunchStackOnDisplay: can\'t launch on displayId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    return-object v2

    .line 2758
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display with displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method goingToSleepLocked()V
    .locals 2

    .line 3784
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 3785
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3786
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3787
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3791
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3792
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 3796
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->applySleepTokensLocked(Z)V

    .line 3798
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3799
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3968
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3969
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3970
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 3971
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3972
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3970
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3968
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3975
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2349
    const/4 v0, 0x0

    .line 2350
    .local v0, "hasVisibleActivities":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2351
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 2352
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 2353
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2354
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2352
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2350
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2357
    .end local v1    # "displayNdx":I
    :cond_1
    return v0
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredDisplayId"    # I
    .param p4, "actualStack"    # Lcom/android/server/am/ActivityStack;

    .line 4808
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    .line 4810
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V
    .locals 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredDisplayId"    # I
    .param p4, "actualStack"    # Lcom/android/server/am/ActivityStack;
    .param p5, "forceNonResizable"    # Z

    .line 4814
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 4821
    .local v2, "isSecondaryDisplayPreferred":Z
    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4822
    invoke-virtual {p4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 4824
    .local v3, "inSplitScreenMode":Z
    :goto_1
    if-nez v3, :cond_2

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    if-eqz v2, :cond_3

    .line 4825
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4826
    :cond_3
    return-void

    .line 4830
    :cond_4
    if-eqz v2, :cond_6

    .line 4831
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 4832
    .local v4, "actualDisplayId":I
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4837
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/am/ActivityManagerService;->setTaskWindowingMode(IIZ)V

    .line 4839
    if-eq p3, v4, :cond_6

    .line 4842
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    .line 4843
    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed()V

    .line 4844
    return-void

    .line 4833
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task resolved to incompatible display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4848
    .end local v4    # "actualDisplayId":I
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p5, :cond_7

    goto :goto_3

    .line 4864
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4865
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v4, :cond_9

    .line 4867
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4868
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 4869
    const/4 v1, 0x2

    goto :goto_2

    .line 4870
    :cond_8
    nop

    .line 4871
    .local v1, "reason":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6, v1, v4}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 4874
    .end local v1    # "reason":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_9
    return-void

    .line 4851
    .end local v0    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_a
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v4}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 4856
    nop

    .line 4857
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4858
    .local v4, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_c

    .line 4859
    if-ne p4, v4, :cond_b

    move v0, v1

    nop

    :cond_b
    invoke-virtual {p0, v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 4861
    :cond_c
    return-void
.end method

.method hasAwakeDisplay()Z
    .locals 4

    .line 3774
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3775
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3776
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->shouldSleep()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3777
    return v1

    .line 3774
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3780
    .end local v0    # "displayNdx":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method initPowerManagement()V
    .locals 3

    .line 679
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 680
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "ActivityManager-Sleep"

    .line 681
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 682
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "*launch*"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 683
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 684
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 641
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 642
    return-void

    .line 645
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInitialized:Z

    .line 646
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->createRunningTasks()Lcom/android/server/am/RunningTasks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/am/RunningTasks;

    .line 647
    new-instance v0, Lcom/android/server/am/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 648
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/ActivityMetricsLogger;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    .line 649
    new-instance v0, Lcom/android/server/am/KeyguardController;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/KeyguardController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    .line 651
    new-instance v0, Lcom/android/server/am/LaunchParamsController;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/LaunchParamsController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    .line 652
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/am/ActivityStackSupervisor;)V

    .line 653
    return-void
.end method

.method invalidateTaskLayers()V
    .locals 1

    .line 4046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 4047
    return-void
.end method

.method isActivityRestrictionStartByPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;Z)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "ignoreTargetSecurity"    # Z

    .line 2017
    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v0

    .line 2019
    .local v0, "componentRestriction":I
    nop

    .line 2020
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2019
    invoke-direct {p0, v1, p5, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 2021
    .local v1, "actionRestriction":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method isActivityRestrictionStartByPermissionAndTimeLock(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;IILjava/lang/String;Z)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "ignoreTargetSecurity"    # Z

    .line 5350
    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v0

    .line 5352
    .local v0, "componentRestriction":I
    nop

    .line 5353
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5352
    invoke-direct {p0, v1, p5, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 5354
    .local v1, "actionRestriction":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 9
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "launchDisplayId"    # I
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 2031
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 2033
    return v1

    .line 2036
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 2037
    .local v2, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 2038
    const-string v0, "ActivityManager"

    const-string v1, "Launch on display check: display not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    return v3

    .line 2044
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    .line 2046
    .local v4, "startAnyPerm":I
    if-nez v4, :cond_2

    .line 2049
    return v1

    .line 2053
    :cond_2
    invoke-virtual {v2, p2}, Lcom/android/server/am/ActivityDisplay;->isUidPresent(I)Z

    move-result v5

    .line 2055
    .local v5, "uidPresentOnDisplay":Z
    iget-object v6, v2, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getOwnerUid()I

    move-result v6

    .line 2056
    .local v6, "displayOwnerUid":I
    iget-object v7, v2, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getType()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_4

    iget-object v7, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v7, :cond_4

    .line 2060
    iget v7, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    .line 2063
    return v3

    .line 2066
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android.permission.ACTIVITY_EMBEDDING"

    invoke-virtual {v7, v8, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v0, :cond_4

    if-nez v5, :cond_4

    .line 2070
    return v3

    .line 2074
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2078
    return v1

    .line 2082
    :cond_5
    if-ne v6, p2, :cond_6

    .line 2085
    return v1

    .line 2088
    :cond_6
    if-eqz v5, :cond_7

    .line 2091
    return v1

    .line 2094
    :cond_7
    const-string v0, "ActivityManager"

    const-string v1, "Launch on display check: denied"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    return v3
.end method

.method isCurrentProfileLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 4188
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4189
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method isDisplayAdded(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 4601
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z
    .locals 2
    .param p1, "container"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "alwaysFocusable"    # Z

    .line 728
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v0, :cond_0

    .line 729
    return v1

    .line 732
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method isFocusedStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 740
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 889
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 890
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 891
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 892
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 893
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 894
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 895
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_0

    .line 896
    return-object v5

    .line 892
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 890
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    .end local v1    # "displayNdx":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method isStoppingNoHistoryActivity()Z
    .locals 3

    .line 4200
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4201
    .local v1, "record":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isNoHistory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4202
    const/4 v0, 0x1

    return v0

    .line 4204
    .end local v1    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_0
    goto :goto_0

    .line 4206
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method lockAllProfileTasks(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 930
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 932
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 933
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 934
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_2

    .line 935
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 936
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 937
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "taskNdx":I
    :goto_2
    if-ltz v5, :cond_1

    .line 938
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 943
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->taskTopActivityIsUser(Lcom/android/server/am/TaskRecord;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 944
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 934
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    .end local v5    # "taskNdx":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 932
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 951
    .end local v0    # "displayNdx":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 952
    nop

    .line 953
    return-void

    .line 951
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method logStackState()V
    .locals 1

    .line 4891
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->logWindowState()V

    .line 4892
    return-void
.end method

.method moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V
    .locals 23
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p3, "aspectRatio"    # F
    .param p4, "reason"    # Ljava/lang/String;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 3578
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3580
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v11

    .line 3581
    .local v11, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v11}, Lcom/android/server/am/ActivityDisplay;->getPinnedStack()Lcom/android/server/am/PinnedActivityStack;

    move-result-object v0

    .line 3585
    .local v0, "stack":Lcom/android/server/am/PinnedActivityStack;
    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 3586
    invoke-virtual {v9, v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 3590
    :cond_0
    const/4 v1, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v2

    const/4 v13, 0x1

    invoke-virtual {v11, v1, v2, v13}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/am/PinnedActivityStack;

    .line 3594
    .end local v0    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .local v15, "stack":Lcom/android/server/am/PinnedActivityStack;
    move/from16 v14, p3

    invoke-virtual {v15, v14}, Lcom/android/server/am/PinnedActivityStack;->getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;

    move-result-object v0

    move-object v8, v0

    .line 3597
    .local v8, "destBounds":Landroid/graphics/Rect;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3601
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object v1, v9

    move-object v2, v15

    move-object/from16 v22, v8

    move/from16 v8, v16

    .end local v8    # "destBounds":Landroid/graphics/Rect;
    .local v22, "destBounds":Landroid/graphics/Rect;
    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 3605
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v1, v13, :cond_1

    .line 3607
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v0

    move-object v1, v15

    .line 3607
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .local v1, "stack":Lcom/android/server/am/PinnedActivityStack;
    move-object/from16 v21, p4

    :try_start_2
    invoke-virtual/range {v14 .. v21}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3631
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    goto :goto_1

    .line 3618
    .end local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    :cond_1
    move-object v1, v15

    .line 3618
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget v3, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3619
    invoke-virtual {v9, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    iget-object v4, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 3618
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 3620
    .local v2, "newTask":Lcom/android/server/am/TaskRecord;
    const v3, 0x7fffffff

    const-string/jumbo v4, "moveActivityToStack"

    invoke-virtual {v10, v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3623
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v21, p4

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 3629
    .end local v2    # "newTask":Lcom/android/server/am/TaskRecord;
    :goto_0
    iput-boolean v12, v10, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3631
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3632
    nop

    .line 3634
    const/4 v0, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-virtual {v1, v2, v3, v0, v13}, Lcom/android/server/am/PinnedActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 3641
    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .local v3, "destBounds":Landroid/graphics/Rect;
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v12, v12}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3644
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0, v10}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/am/ActivityRecord;)V

    .line 3645
    return-void

    .line 3631
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v22    # "destBounds":Landroid/graphics/Rect;
    :catchall_1
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    .line 3631
    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 3631
    .end local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v22    # "destBounds":Landroid/graphics/Rect;
    :catchall_2
    move-exception v0

    move-object/from16 v2, p2

    move-object v1, v15

    move-object/from16 v3, v22

    .line 3631
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .restart local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 3631
    .end local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v8    # "destBounds":Landroid/graphics/Rect;
    .restart local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    :catchall_3
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v8

    move-object v1, v15

    .line 3631
    .end local v8    # "destBounds":Landroid/graphics/Rect;
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    :goto_1
    iget-object v4, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3649
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3655
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 3656
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 3657
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_1

    .line 3658
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveActivityStackToFront: invalid task or stack: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    return v0

    .line 3663
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 3666
    return v0

    .line 3672
    :cond_2
    invoke-virtual {v2, p2, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 3673
    const/4 v0, 0x1

    return v0

    .line 3652
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    :goto_0
    return v0
.end method

.method moveHomeStackTaskToTop(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    .line 783
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 784
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 785
    const/4 v1, 0x0

    return v1

    .line 787
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 788
    const/4 v1, 0x1

    return v1
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 772
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 774
    .local v0, "recentsStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 777
    :cond_0
    return-void
.end method

.method moveStackToDisplayLocked(IIZ)V
    .locals 6
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "onTop"    # Z

    .line 3471
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 3472
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_3

    .line 3476
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3477
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_2

    .line 3482
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 3483
    .local v2, "currentDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v2, :cond_1

    .line 3488
    iget v3, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-eq v3, p2, :cond_0

    .line 3493
    invoke-virtual {v1, v0, p3}, Lcom/android/server/am/ActivityStack;->reparent(Lcom/android/server/am/ActivityDisplay;Z)V

    .line 3495
    return-void

    .line 3489
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to move stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to its current displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3484
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveStackToDisplayLocked: Stack with stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not attached to any display."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3478
    .end local v2    # "currentDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveStackToDisplayLocked: Unknown stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3473
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveStackToDisplayLocked: Unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;IZ)V
    .locals 2
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    .line 3068
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 3070
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V
    .locals 1
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "onTop"    # Z

    .line 3064
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;IZ)V

    .line 3065
    return-void
.end method

.method moveTopStackActivityToPinnedStackLocked(ILandroid/graphics/Rect;)Z
    .locals 6
    .param p1, "stackId"    # I
    .param p2, "destBounds"    # Landroid/graphics/Rect;

    .line 3550
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3551
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2

    .line 3556
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3557
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3558
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTopStackActivityToPinnedStackLocked: No top running activity in stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    return v2

    .line 3563
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3564
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTopStackActivityToPinnedStackLocked: Picture-In-Picture not supported for  r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    return v2

    .line 3570
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "moveTopActivityToPinnedStack"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V

    .line 3572
    const/4 v2, 0x1

    return v2

    .line 3552
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTopStackActivityToPinnedStackLocked: Unknown stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method notifyAppTransitionDone()V
    .locals 4

    .line 2975
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 2976
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2977
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2978
    .local v1, "taskId":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 2979
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_0

    .line 2980
    invoke-virtual {v3, v2}, Lcom/android/server/am/TaskRecord;->setTaskDockedResizing(Z)V

    .line 2976
    .end local v1    # "taskId":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2983
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2984
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 4578
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4579
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 4590
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4591
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 4584
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4585
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/am/TaskRecord;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 3450
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 3451
    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "wasTrimmed"    # Z

    .line 3455
    if-eqz p2, :cond_0

    .line 3458
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "recent-task-trimmed"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 3461
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 3462
    return-void
.end method

.method public onWindowChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 4773
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4774
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onWindowChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4777
    :cond_0
    goto :goto_0

    .line 4776
    :catch_0
    move-exception v0

    .line 4778
    :goto_0
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z
    .locals 6
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "dontWait"    # Z

    .line 1134
    const/4 v0, 0x0

    .line 1135
    .local v0, "someActivityPaused":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1136
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1137
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 1138
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1139
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1143
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->shouldNotPause(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_2

    .line 1145
    .restart local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1137
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1135
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1150
    .end local v1    # "displayNdx":I
    :cond_3
    return v0
.end method

.method prepareForShutdownLocked()V
    .locals 3

    .line 3802
    const/4 v0, 0x0

    .line 3802
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3803
    const-string/jumbo v1, "shutdown"

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->createSleepTokenLocked(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    .line 3802
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3805
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method final processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;
    .locals 8
    .param p1, "idleActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "remove"    # Z
    .param p3, "processPausingActivities"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 4211
    const/4 v0, 0x0

    .line 4213
    .local v0, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v1

    .line 4214
    .local v1, "nowVisible":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_0
    if-ltz v2, :cond_6

    .line 4215
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4216
    .local v3, "s":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 4219
    .local v4, "waitingVisible":Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 4220
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4221
    const/4 v4, 0x0

    .line 4222
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    .line 4229
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4232
    :cond_0
    if-eqz p2, :cond_5

    .line 4233
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4234
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_1

    .line 4235
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v6

    goto :goto_1

    .line 4236
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v6

    .line 4237
    .local v6, "shouldSleepOrShutDown":Z
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v6, :cond_5

    .line 4238
    :cond_2
    if-nez p3, :cond_3

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4241
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4242
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4243
    goto :goto_2

    .line 4247
    :cond_3
    if-nez v0, :cond_4

    .line 4248
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v7

    .line 4250
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4254
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4255
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4214
    .end local v3    # "s":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "waitingVisible":Z
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "shouldSleepOrShutDown":Z
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4260
    .end local v2    # "activityNdx":I
    :cond_6
    return-object v0
.end method

.method rankTaskLayersIfNeeded()V
    .locals 6

    .line 4050
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    if-nez v0, :cond_0

    .line 4051
    return-void

    .line 4053
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 4054
    nop

    .local v0, "displayNdx":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4055
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4056
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v2, 0x0

    .line 4057
    .local v2, "baseLayer":I
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 4058
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4059
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->rankTaskLayers(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 4057
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4054
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "baseLayer":I
    .end local v3    # "stackNdx":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4062
    .end local v0    # "displayNdx":I
    :cond_2
    return-void
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 39
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 1494
    return v4

    .line 1497
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 1498
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 1500
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->beginDeferResume()V

    .line 1503
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1506
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1508
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1510
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v0, :cond_1

    .line 1511
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    goto :goto_0

    .line 1750
    :catchall_0
    move-exception v0

    move-object/from16 v35, v5

    move-object v5, v12

    move-object v12, v3

    goto/16 :goto_11

    .line 1518
    :cond_1
    :goto_0
    const/4 v6, 0x1

    if-eqz p4, :cond_2

    .line 1522
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {v1, v2, v0, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1526
    :cond_2
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, v2, v6, v6}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v0, :cond_3

    .line 1533
    :try_start_3
    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1537
    :cond_3
    :try_start_4
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-eqz v0, :cond_4

    :try_start_5
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    :goto_1
    move v14, v0

    .line 1538
    .local v14, "applicationInfoUid":I
    :try_start_6
    iget v0, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-ne v0, v7, :cond_5

    :try_start_7
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eq v0, v14, :cond_6

    .line 1539
    :cond_5
    :try_start_8
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User ID for activity changing for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " appInfo.uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " info.ai.uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " new="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_6
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1547
    iget v7, v2, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/2addr v7, v6

    iput v7, v2, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1548
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 1551
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->checkStartFromLauncher()V

    .line 1555
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move v15, v7

    .line 1556
    .local v15, "idx":I
    if-gez v15, :cond_7

    .line 1557
    :try_start_9
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1559
    :cond_7
    :try_start_a
    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v3, v6, v0}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1560
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1562
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    move-object v11, v0

    .line 1563
    .local v11, "lockTaskController":Lcom/android/server/am/LockTaskController;
    iget v0, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v0, v9, :cond_8

    :try_start_b
    iget v0, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v8, :cond_8

    iget v0, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v0, v7, :cond_9

    .line 1566
    invoke-virtual {v11}, Lcom/android/server/am/LockTaskController;->getLockTaskModeState()I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-ne v0, v6, :cond_9

    .line 1568
    :cond_8
    :try_start_c
    invoke-virtual {v11, v5, v4, v4}, Lcom/android/server/am/LockTaskController;->startLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 1572
    :cond_9
    :try_start_d
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v0, :cond_1e

    .line 1575
    const/4 v0, 0x0

    .line 1576
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v10, 0x0

    .line 1577
    .local v10, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_a

    .line 1580
    :try_start_e
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v0, v7

    .line 1581
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v10, v7

    goto :goto_3

    .line 1730
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_0
    move-exception v0

    move-object/from16 v35, v5

    move-object/from16 v32, v11

    .line 1730
    .end local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "applicationInfoUid":I
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    .local v32, "lockTaskController":Lcom/android/server/am/LockTaskController;
    .local v34, "applicationInfoUid":I
    .local v35, "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    move-object v5, v12

    move/from16 v34, v14

    move-object v12, v3

    goto/16 :goto_10

    .line 1586
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "applicationInfoUid":I
    .end local v35    # "task":Lcom/android/server/am/TaskRecord;
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "applicationInfoUid":I
    :cond_a
    :goto_3
    move-object v7, v0

    :try_start_f
    new-array v8, v8, [Ljava/lang/Object;

    iget v0, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v4

    .line 1587
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    iget v0, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/16 v16, 0x3

    aput-object v0, v8, v16

    .line 1586
    const/16 v0, 0x7536

    invoke-static {v0, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1588
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-eqz v0, :cond_b

    .line 1590
    :try_start_10
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1592
    :cond_b
    :try_start_11
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v4}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 1594
    iput-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1595
    iput-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 1596
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppWarningsLocked()Lcom/android/server/am/AppWarnings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppWarnings;->onStartActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1597
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1598
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1599
    const/4 v8, 0x0

    .line 1600
    .local v8, "profilerInfo":Landroid/app/ProfilerInfo;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    if-eqz v0, :cond_e

    :try_start_12
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1601
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v3, :cond_e

    .line 1602
    :cond_c
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1603
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    move-object v4, v0

    .line 1604
    .local v4, "profilerInfoSvc":Landroid/app/ProfilerInfo;
    if-eqz v4, :cond_e

    iget-object v0, v4, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1605
    iget-object v0, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v0, :cond_d

    .line 1607
    :try_start_13
    iget-object v0, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1610
    goto :goto_4

    .line 1608
    :catch_1
    move-exception v0

    .line 1609
    .local v0, "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v4}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 1613
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d
    :goto_4
    new-instance v0, Landroid/app/ProfilerInfo;

    invoke-direct {v0, v4}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1618
    .end local v4    # "profilerInfoSvc":Landroid/app/ProfilerInfo;
    .end local v8    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v0, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object v8, v0

    .line 1618
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v8    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_e
    :try_start_15
    iput-boolean v6, v3, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1619
    iput-boolean v6, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1620
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1625
    new-instance v0, Landroid/util/MergedConfiguration;

    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1626
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1627
    .local v0, "mergedConfiguration":Landroid/util/MergedConfiguration;
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 1629
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1631
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    move-object/from16 v32, v11

    :try_start_16
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1632
    .end local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 1633
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v13

    .line 1629
    invoke-static {v4, v6, v9, v11, v13}, Landroid/os/BSPApplicationManager$Trigger;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1636
    sget-boolean v4, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-nez v4, :cond_f

    :try_start_17
    sget-boolean v4, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v4, :cond_10

    goto :goto_5

    .line 1730
    .end local v0    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v8    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_2
    move-exception v0

    move-object/from16 v35, v5

    goto/16 :goto_2

    .line 1636
    .restart local v0    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v8    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_f
    :goto_5
    :try_start_18
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplyInfoTop()I

    move-result v4
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eqz v4, :cond_10

    .line 1637
    :try_start_19
    const-string v4, "SingleModeCtrl"

    const-string/jumbo v6, "startActivity"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/WindowManagerService;->setOverscan(IIIII)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 1642
    :cond_10
    :try_start_1a
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v6, "com.antutu"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    if-nez v4, :cond_11

    :try_start_1b
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v6, "com.ludashi"

    .line 1643
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v6, "com.primatelabs"

    .line 1644
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-eqz v4, :cond_12

    .line 1645
    :cond_11
    :try_start_1c
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->cpusetForAntutuTest(Ljava/lang/String;)V

    .line 1647
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->noteBenchmarkActivityResuming()V

    .line 1650
    :cond_12
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-direct {v1, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1654
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v4, v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v4

    .line 1657
    .local v4, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/BSPApplicationManager$Trigger;->getViewOptimizeInfoByActivityName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1658
    .local v6, "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Landroid/content/Intent;

    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1659
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v18

    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1662
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    .line 1663
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    iget-object v13, v2, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v33, v0

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 1663
    .end local v0    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v33, "mergedConfiguration":Landroid/util/MergedConfiguration;
    move/from16 v34, v14

    :try_start_1d
    iget-object v14, v5, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 1663
    .end local v14    # "applicationInfoUid":I
    .restart local v34    # "applicationInfoUid":I
    move-object/from16 v35, v5

    :try_start_1e
    iget v5, v3, Lcom/android/server/am/ProcessRecord;->repProcState:I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 1663
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v35    # "task":Lcom/android/server/am/TaskRecord;
    :try_start_1f
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_7
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move-object/from16 v36, v12

    :try_start_20
    iget-object v12, v2, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_6
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    .line 1663
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .local v36, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_21
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1665
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v30

    .line 1658
    move-object/from16 v17, v9

    move-object/from16 v19, v11

    move-object/from16 v22, v13

    move-object/from16 v23, v0

    move-object/from16 v24, v14

    move/from16 v25, v5

    move-object/from16 v26, v3

    move-object/from16 v27, v12

    move-object/from16 v28, v7

    move-object/from16 v29, v10

    move-object/from16 v31, v8

    invoke-static/range {v17 .. v31}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 1667
    .local v0, "launchActivityItem":Landroid/app/servertransaction/LaunchActivityItem;
    if-eqz v6, :cond_13

    :try_start_22
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_13

    .line 1668
    invoke-virtual {v0, v6}, Landroid/app/servertransaction/LaunchActivityItem;->setViewOptimizeInfo(Ljava/util/List;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_3
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    goto :goto_8

    .line 1750
    .end local v0    # "launchActivityItem":Landroid/app/servertransaction/LaunchActivityItem;
    .end local v4    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v6    # "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v8    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v15    # "idx":I
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v33    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v34    # "applicationInfoUid":I
    :catchall_1
    move-exception v0

    move-object/from16 v5, v36

    move-object/from16 v2, p1

    .line 1750
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    :goto_6
    move-object/from16 v12, p2

    goto/16 :goto_11

    .line 1730
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "idx":I
    .restart local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "applicationInfoUid":I
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :catch_3
    move-exception v0

    move-object/from16 v5, v36

    move-object/from16 v2, p1

    .line 1730
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_7
    move-object/from16 v12, p2

    goto/16 :goto_10

    .line 1670
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "launchActivityItem":Landroid/app/servertransaction/LaunchActivityItem;
    .restart local v4    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v6    # "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v8    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v33    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_13
    :goto_8
    :try_start_23
    invoke-virtual {v4, v0}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_5
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    .line 1675
    if-eqz p3, :cond_15

    .line 1678
    move-object/from16 v2, p1

    :try_start_24
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_6
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    move-object/from16 v5, v36

    :try_start_25
    iget v9, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1678
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1680
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1681
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 1682
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v11
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_4
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_14

    const/16 v20, 0x1

    goto :goto_9

    :cond_14
    const/16 v20, 0x0

    :goto_9
    move-object/from16 v12, p2

    :try_start_26
    iget v11, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v13, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 1678
    move/from16 v16, v3

    move/from16 v17, v9

    move/from16 v21, v11

    move-object/from16 v22, v13

    invoke-static/range {v16 .. v22}, Lnubia/os/ApplicationManager$Trigger;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 1684
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v3

    invoke-static {v3}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v3

    .line 1684
    .local v3, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_a

    .line 1750
    .end local v0    # "launchActivityItem":Landroid/app/servertransaction/LaunchActivityItem;
    .end local v3    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v4    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v6    # "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v8    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v15    # "idx":I
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v33    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v34    # "applicationInfoUid":I
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 1730
    .restart local v15    # "idx":I
    .restart local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "applicationInfoUid":I
    :catch_4
    move-exception v0

    goto :goto_7

    .line 1688
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "launchActivityItem":Landroid/app/servertransaction/LaunchActivityItem;
    .restart local v4    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v6    # "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v8    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v33    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_15
    move-object/from16 v5, v36

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    .line 1688
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1689
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1690
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 1688
    move/from16 v16, v3

    move/from16 v17, v9

    invoke-static/range {v16 .. v22}, Lnubia/os/ApplicationManager$Trigger;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1692
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v3

    .line 1694
    .restart local v3    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_a
    invoke-virtual {v4, v3}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 1697
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1700
    iget-object v9, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v11, 0x2

    and-int/2addr v9, v11

    if-eqz v9, :cond_17

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v9, :cond_17

    .line 1706
    iget-object v9, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v11, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1707
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_16

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v9, v12, :cond_16

    .line 1709
    const-string v9, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Starting new heavy weight process "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " when already running "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_16
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v12, v9, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1714
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v11, 0x18

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1716
    .local v9, "msg":Landroid/os/Message;
    iput-object v2, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1717
    iget-object v11, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v11, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1721
    .end local v9    # "msg":Landroid/os/Message;
    :cond_17
    if-eqz p3, :cond_19

    .line 1722
    iget-object v9, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1723
    .local v9, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_18

    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    .line 1724
    :cond_18
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v14, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v37, v0

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1724
    .end local v0    # "launchActivityItem":Landroid/app/servertransaction/LaunchActivityItem;
    .local v37, "launchActivityItem":Landroid/app/servertransaction/LaunchActivityItem;
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v38, v3

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1726
    .end local v3    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .local v38, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const/16 v23, 0x1

    .line 1724
    move/from16 v16, v11

    move-object/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    invoke-static/range {v16 .. v23}, Lnubia/os/ApplicationManager$Trigger;->noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_b
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    .line 1748
    .end local v4    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v6    # "viewOptimizeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v8    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v9    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v33    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v37    # "launchActivityItem":Landroid/app/servertransaction/LaunchActivityItem;
    .end local v38    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :cond_19
    nop

    .line 1750
    .end local v15    # "idx":I
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "applicationInfoUid":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    .line 1751
    nop

    .line 1753
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1754
    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1755
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " being launched, but already in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_1a
    if-eqz p3, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1763
    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_b

    .line 1770
    :cond_1b
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "realStartActivityLocked"

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1777
    :goto_b
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1778
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStartController;->startSetupActivity()V

    .line 1783
    :cond_1c
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1d

    .line 1784
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1787
    :cond_1d
    const/4 v3, 0x1

    return v3

    .line 1750
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_3
    move-exception v0

    move-object/from16 v5, v36

    move-object/from16 v2, p1

    goto :goto_c

    .line 1730
    .restart local v15    # "idx":I
    .restart local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "applicationInfoUid":I
    :catch_5
    move-exception v0

    move-object/from16 v5, v36

    move-object/from16 v2, p1

    goto :goto_d

    .line 1750
    .end local v15    # "idx":I
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "applicationInfoUid":I
    :catchall_4
    move-exception v0

    move-object/from16 v5, v36

    :goto_c
    move-object/from16 v12, p2

    .line 1750
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_11

    .line 1730
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "idx":I
    .restart local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "applicationInfoUid":I
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :catch_6
    move-exception v0

    move-object/from16 v5, v36

    :goto_d
    move-object/from16 v12, p2

    .line 1730
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_10

    .line 1750
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "idx":I
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "applicationInfoUid":I
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_5
    move-exception v0

    move-object v5, v12

    move-object/from16 v12, p2

    goto :goto_e

    .line 1730
    .restart local v15    # "idx":I
    .restart local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "applicationInfoUid":I
    :catch_7
    move-exception v0

    move-object v5, v12

    move-object/from16 v12, p2

    goto :goto_f

    .line 1750
    .end local v15    # "idx":I
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "applicationInfoUid":I
    :catchall_6
    move-exception v0

    move-object v5, v12

    move-object v12, v3

    .line 1750
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_e
    goto/16 :goto_11

    .line 1730
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "idx":I
    .restart local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "applicationInfoUid":I
    :catch_8
    move-exception v0

    move-object v5, v12

    move-object v12, v3

    .line 1730
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_f
    goto :goto_10

    .line 1730
    .end local v35    # "task":Lcom/android/server/am/TaskRecord;
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :catch_9
    move-exception v0

    move-object/from16 v35, v5

    move-object v5, v12

    move-object v12, v3

    .line 1730
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    .restart local v35    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_10

    .line 1730
    .end local v34    # "applicationInfoUid":I
    .end local v35    # "task":Lcom/android/server/am/TaskRecord;
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "applicationInfoUid":I
    :catch_a
    move-exception v0

    move-object/from16 v35, v5

    move-object v5, v12

    move/from16 v34, v14

    move-object v12, v3

    .line 1730
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "applicationInfoUid":I
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    .restart local v34    # "applicationInfoUid":I
    .restart local v35    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_10

    .line 1573
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "applicationInfoUid":I
    .end local v35    # "task":Lcom/android/server/am/TaskRecord;
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "applicationInfoUid":I
    :cond_1e
    move-object/from16 v35, v5

    move-object/from16 v32, v11

    move-object v5, v12

    move/from16 v34, v14

    move-object v12, v3

    .line 1573
    .end local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "applicationInfoUid":I
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    .restart local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "applicationInfoUid":I
    .restart local v35    # "task":Lcom/android/server/am/TaskRecord;
    :try_start_27
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_b
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    .line 1730
    :catch_b
    move-exception v0

    goto :goto_10

    .line 1730
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "applicationInfoUid":I
    .end local v35    # "task":Lcom/android/server/am/TaskRecord;
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "applicationInfoUid":I
    :catch_c
    move-exception v0

    move-object/from16 v35, v5

    move-object/from16 v32, v11

    move-object v5, v12

    move/from16 v34, v14

    move-object v12, v3

    .line 1731
    .end local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "applicationInfoUid":I
    .local v0, "e":Landroid/os/RemoteException;
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    .restart local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "applicationInfoUid":I
    .restart local v35    # "task":Lcom/android/server/am/TaskRecord;
    :goto_10
    :try_start_28
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v3, :cond_1f

    .line 1734
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1735
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", giving up"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1734
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1737
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v12}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1738
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "2nd-crash"

    const/4 v11, 0x0

    move-object v6, v5

    move-object/from16 v3, v32

    .line 1738
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .local v3, "lockTaskController":Lcom/android/server/am/LockTaskController;
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    .line 1740
    nop

    .line 1750
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    .line 1740
    const/4 v4, 0x0

    return v4

    .line 1745
    .end local v3    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    :cond_1f
    move-object/from16 v3, v32

    .line 1745
    .end local v32    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v3    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    const/4 v4, 0x1

    :try_start_29
    iput-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1746
    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1747
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    .line 1750
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v15    # "idx":I
    .end local v34    # "applicationInfoUid":I
    :catchall_7
    move-exception v0

    goto :goto_11

    .line 1750
    .end local v35    # "task":Lcom/android/server/am/TaskRecord;
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_8
    move-exception v0

    move-object/from16 v35, v5

    move-object v5, v12

    move-object v12, v3

    .line 1750
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    .restart local v35    # "task":Lcom/android/server/am/TaskRecord;
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    throw v0
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4086
    const/4 v0, 0x0

    .line 4088
    .local v0, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    .line 4090
    .local v1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "firstTask":Lcom/android/server/am/TaskRecord;
    :goto_0
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 4091
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4095
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 4101
    :cond_0
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4102
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4104
    goto :goto_1

    .line 4107
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 4108
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_4

    .line 4111
    if-nez v3, :cond_2

    .line 4112
    move-object v3, v5

    goto :goto_1

    .line 4113
    :cond_2
    if-eq v3, v5, :cond_4

    .line 4114
    if-nez v1, :cond_3

    .line 4115
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v6

    .line 4116
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4118
    :cond_3
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4090
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4097
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    :goto_2
    return-void

    .line 4122
    .end local v0    # "i":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-nez v1, :cond_7

    .line 4124
    return-void

    .line 4128
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4129
    .local v0, "numDisplays":I
    move v4, v2

    .local v4, "displayNdx":I
    :goto_3
    if-ge v4, v0, :cond_a

    .line 4130
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityDisplay;

    .line 4131
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    .line 4133
    .local v6, "stackCount":I
    move v7, v2

    .local v7, "stackNdx":I
    :goto_4
    if-ge v7, v6, :cond_9

    .line 4134
    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 4136
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8, p1, v1, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_8

    .line 4137
    return-void

    .line 4133
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 4129
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "stackCount":I
    .end local v7    # "stackNdx":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4141
    .end local v4    # "displayNdx":I
    :cond_a
    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    .line 4567
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4568
    return-void
.end method

.method removeStack(Lcom/android/server/am/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 3267
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 3268
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 2
    .param p1, "windowingModes"    # [I

    .line 3275
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3276
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->removeStacksInWindowingModes([I)V

    .line 3275
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3278
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 2
    .param p1, "activityTypes"    # [I

    .line 3281
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3282
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->removeStacksWithActivityTypes([I)V

    .line 3281
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3284
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method removeTaskByIdLocked(IZZLjava/lang/String;)Z
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 3291
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeTaskByIdLocked(IZZZLjava/lang/String;)Z
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "pauseImmediately"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 3307
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 3308
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3310
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 3311
    invoke-virtual {v1, p4, p5}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked(ZLjava/lang/String;)V

    goto :goto_0

    .line 3315
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3316
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_1

    .line 3317
    const-string v4, "force-remove-empty-task"

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 3321
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3322
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 3323
    iget-boolean v2, v1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_2

    .line 3324
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 3326
    :cond_2
    return v0

    .line 3328
    :cond_3
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to remove task ignored for non-existent task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    return v2
.end method

.method removeTaskWhenProcessDiedLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pid"    # I

    .line 5333
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 5335
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 5336
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 5337
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 5338
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5339
    goto :goto_2

    .line 5341
    :cond_0
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->removeTaskWhenProcessDiedLocked(Ljava/lang/String;II)V

    .line 5336
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5333
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5344
    .end local v0    # "displayNdx":I
    :cond_2
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4557
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4558
    return-void
.end method

.method removeUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2371
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2372
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;J)V
    .locals 7
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "totalTime"    # J

    .line 1296
    const/4 v0, 0x0

    .line 1297
    .local v0, "changed":Z
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 1298
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v1, :cond_0

    .line 1299
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    .line 1300
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v3, 0x1042

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1303
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v3, 0x3

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    long-to-int v6, p3

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 1307
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 1308
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WaitResult;

    .line 1309
    .local v2, "w":Landroid/app/WaitResult;
    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_3

    .line 1310
    const/4 v0, 0x1

    .line 1311
    iput-boolean p1, v2, Landroid/app/WaitResult;->timeout:Z

    .line 1312
    if-eqz p2, :cond_2

    .line 1313
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1315
    :cond_2
    iput-wide p3, v2, Landroid/app/WaitResult;->totalTime:J

    .line 1307
    .end local v2    # "w":Landroid/app/WaitResult;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1319
    .end local v1    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 1320
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1322
    :cond_5
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1244
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1245
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3953
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3955
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3956
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3957
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3959
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3960
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3961
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 3962
    return v2

    .line 3964
    :cond_1
    return v3
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/am/ActivityRecord;I)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I

    .line 1266
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    return-void

    .line 1270
    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 1271
    return-void

    .line 1274
    :cond_1
    const/4 v1, 0x0

    .line 1276
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1277
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WaitResult;

    .line 1278
    .local v3, "w":Landroid/app/WaitResult;
    iget-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_2

    .line 1279
    const/4 v1, 0x1

    .line 1280
    iput p2, v3, Landroid/app/WaitResult;->result:I

    .line 1284
    if-ne p2, v0, :cond_2

    .line 1285
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1276
    .end local v3    # "w":Landroid/app/WaitResult;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1290
    .end local v2    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 1291
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1293
    :cond_4
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 8
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p6, "preserveWindows"    # Z

    .line 3097
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 3100
    return-void
.end method

.method resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "pinnedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempPinnedTaskBounds"    # Landroid/graphics/Rect;

    .line 3190
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getPinnedStack()Lcom/android/server/am/PinnedActivityStack;

    move-result-object v0

    .line 3191
    .local v0, "stack":Lcom/android/server/am/PinnedActivityStack;
    if-nez v0, :cond_0

    .line 3192
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "resizePinnedStackLocked: pinned stack not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    return-void

    .line 3200
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PinnedStackWindowController;

    .line 3201
    .local v1, "stackController":Lcom/android/server/wm/PinnedStackWindowController;
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackWindowController;->pinnedStackResizeDisallowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3202
    return-void

    .line 3205
    :cond_1
    const-string v2, "am.resizePinnedStack"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3206
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3208
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3209
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v5, 0x0

    .line 3210
    .local v5, "insetBounds":Landroid/graphics/Rect;
    const/4 v6, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3212
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object v5, v7

    .line 3213
    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3214
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3215
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 3216
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 3218
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 3222
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->onPipAnimationEndResize()V

    .line 3224
    :cond_3
    invoke-virtual {v0, p1, p2, v5}, Lcom/android/server/am/PinnedActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3225
    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/PinnedActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3227
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "insetBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3228
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3229
    nop

    .line 3230
    return-void

    .line 3227
    :catchall_0
    move-exception v2

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3228
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    .locals 11
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "tempTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p5, "preserveWindows"    # Z
    .param p6, "allowResizeInDockedMode"    # Z
    .param p7, "deferResume"    # Z

    move-object v9, p0

    move-object v10, p1

    .line 2912
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2913
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v7, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 2915
    return-void

    .line 2918
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v1

    .line 2919
    .local v1, "splitScreenActive":Z
    if-nez p6, :cond_1

    .line 2920
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 2923
    return-void

    .line 2926
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am.resizeStack_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2927
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2929
    :try_start_0
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2930
    if-nez p2, :cond_2

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2932
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    goto :goto_0

    .line 2933
    :cond_2
    if-eqz v1, :cond_3

    .line 2936
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 2939
    :cond_3
    :goto_0
    invoke-virtual {v10, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2940
    if-nez p7, :cond_4

    .line 2941
    nop

    .line 2942
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2941
    move/from16 v7, p5

    :try_start_1
    invoke-virtual {v10, v0, v7}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2945
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    move/from16 v7, p5

    :goto_1
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2946
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2947
    nop

    .line 2948
    return-void

    .line 2945
    :catchall_1
    move-exception v0

    move/from16 v7, p5

    :goto_2
    iget-object v8, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2946
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 1413
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1414
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v0, :cond_5

    .line 1419
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1423
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1424
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    .line 1425
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1428
    :cond_1
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_2

    .line 1429
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1432
    :cond_2
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_3

    .line 1433
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1436
    :cond_3
    if-eqz p4, :cond_4

    .line 1437
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 1440
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object v1

    .line 1441
    .local v1, "intentLaunchToken":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 1442
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 1445
    .end local v1    # "intentLaunchToken":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I
    .param p6, "filterCallingUid"    # I

    .line 1480
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1481
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;

    .line 2617
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2618
    .local v0, "activityType":I
    :goto_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 2619
    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    .line 2621
    :cond_1
    if-eqz v0, :cond_2

    .line 2622
    return v0

    .line 2624
    :cond_2
    if-eqz p2, :cond_3

    .line 2625
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 2627
    :cond_3
    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "filterCallingUid"    # I

    move-object v1, p0

    .line 1450
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    const-wide/16 v3, 0x40

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1452
    const-string/jumbo v0, "resolveIntent"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1453
    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    .line 1455
    .local v0, "modifiedFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1456
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_1

    .line 1457
    :cond_0
    const/high16 v5, 0x800000

    or-int/2addr v0, v5

    .line 1465
    .end local v0    # "modifiedFlags":I
    .local v12, "modifiedFlags":I
    :cond_1
    move v12, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v13, v5

    .line 1467
    .local v13, "token":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    const/4 v10, 0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move v8, v12

    move/from16 v9, p3

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1470
    :try_start_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1473
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1467
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 1470
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1473
    .end local v12    # "modifiedFlags":I
    .end local v13    # "token":J
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1475
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "aOptions"    # Landroid/app/ActivityOptions;
    .param p3, "onTop"    # Z

    .line 3423
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3424
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3425
    .local v1, "currentStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3427
    if-ne v1, v0, :cond_0

    .line 3429
    return v2

    .line 3433
    :cond_0
    const-string/jumbo v3, "restoreRecentTaskLocked"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 3436
    :cond_1
    const-string/jumbo v3, "restoreRecentTask"

    invoke-virtual {v0, p1, p3, v3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 3438
    invoke-virtual {p1, p3, v2}, Lcom/android/server/am/TaskRecord;->createWindowContainer(ZZ)V

    .line 3441
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3442
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .line 3442
    .local v4, "activityNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 3443
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 3442
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3445
    .end local v4    # "activityNdx":I
    :cond_2
    return v2
.end method

.method resumeFocusedStackTopActivityLocked()Z
    .locals 1

    .line 2439
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 4
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/app/ActivityOptions;

    .line 2445
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2446
    return v1

    .line 2449
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2450
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 2453
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2454
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 2456
    :cond_2
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2458
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p3}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    goto :goto_1

    .line 2455
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2461
    :cond_4
    :goto_1
    return v1
.end method

.method resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 4
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 792
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v0, :cond_0

    .line 794
    const/4 v0, 0x0

    return v0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    .line 798
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 799
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resumeHomeStackTask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "myReason":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 803
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 804
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 806
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4075
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4076
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4077
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 4078
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4079
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4077
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4075
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4082
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .line 4551
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4552
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 4546
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4547
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4548
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3996
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3997
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    .line 4561
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4562
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4564
    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    .line 4571
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 4572
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4573
    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 4897
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4898
    return-void

    .line 4901
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4902
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4903
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1

    .line 4904
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4901
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4908
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4909
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4911
    :cond_3
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;

    .line 4924
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4925
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4926
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 4927
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4931
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4924
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4934
    .end local v0    # "i":I
    :cond_1
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    .line 4936
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4937
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4939
    :cond_2
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/am/ActivityStack;

    .line 4914
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4915
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    .line 4916
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4920
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 4921
    return-void

    .line 4917
    :cond_1
    :goto_0
    return-void
.end method

.method sendActivityStackChangedIntent()V
    .locals 3

    .line 5360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5361
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5362
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .locals 3

    .line 1941
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1943
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    .line 1945
    :cond_0
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "forceSend"    # Z
    .param p2, "targetActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 1922
    move v0, p1

    .line 1924
    .local v0, "sendHint":Z
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1928
    .local v2, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1930
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    move v0, v3

    .line 1933
    .end local v2    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_3

    .line 1934
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1935
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    .line 1937
    :cond_3
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1248
    const/4 v0, 0x0

    .line 1249
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1250
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    .line 1251
    .local v2, "w":Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1252
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v3

    .line 1253
    .local v3, "result":Landroid/app/WaitResult;
    const/4 v0, 0x1

    .line 1254
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/WaitResult;->timeout:Z

    .line 1255
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/WaitResult;->totalTime:J

    .line 1257
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1249
    .end local v2    # "w":Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
    .end local v3    # "result":Landroid/app/WaitResult;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1260
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1261
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1263
    :cond_2
    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .locals 4
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 504
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 505
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 510
    return-void

    .line 506
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setDockedStackMinimized(Z)V
    .locals 2
    .param p1, "minimized"    # Z

    .line 4952
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    .line 4953
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v0, :cond_0

    .line 4954
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4955
    .local v0, "current":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4958
    const-string/jumbo v1, "setDockedStackMinimized"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    .line 4961
    .end local v0    # "current":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-void
.end method

.method setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "focusCandidate"    # Lcom/android/server/am/ActivityStack;

    .line 745
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq p2, v0, :cond_3

    .line 751
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 752
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 754
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 755
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 756
    move v1, v2

    goto :goto_0

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 756
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    .line 754
    :goto_1
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/am/EventLogTags;->writeAmFocusedStack(IIILjava/lang/String;)V

    .line 759
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 760
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v1, :cond_5

    .line 761
    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-eqz v1, :cond_5

    .line 762
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    .line 765
    :cond_5
    return-void
.end method

.method setLaunchSource(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 2198
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2199
    return-void
.end method

.method setNextTaskIdForUserLocked(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 956
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 957
    .local v0, "currentTaskId":I
    if-le p1, v0, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 960
    :cond_0
    return-void
.end method

.method setRecentTasks(Lcom/android/server/am/RecentTasks;)V
    .locals 1
    .param p1, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .line 665
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 666
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/am/RecentTasks;->registerCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V

    .line 667
    return-void
.end method

.method setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 5102
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5103
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setTaskDockedResizing(Z)V

    .line 5104
    return-void
.end method

.method setSplitScreenResizing(Z)V
    .locals 8
    .param p1, "resizing"    # Z

    .line 3073
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-ne p1, v0, :cond_0

    .line 3074
    return-void

    .line 3077
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    .line 3078
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V

    .line 3080
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    if-eqz v0, :cond_1

    .line 3081
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 3085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 3086
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 3087
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 3088
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 3089
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 3090
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 3092
    :cond_1
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 8
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 701
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 702
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 703
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 705
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "display"

    .line 706
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 707
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 708
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 710
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 711
    .local v1, "displays":[Landroid/view/Display;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 712
    aget-object v4, v1, v2

    .line 713
    .local v4, "display":Landroid/view/Display;
    new-instance v5, Lcom/android/server/am/ActivityDisplay;

    invoke-direct {v5, p0, v4}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    .line 714
    .local v5, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 715
    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V

    .line 711
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 718
    .end local v2    # "displayNdx":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v3}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 720
    .end local v1    # "displays":[Landroid/view/Display;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 721
    return-void

    .line 720
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shouldNotPause(Lcom/android/server/am/ActivityStack;)Z
    .locals 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1156
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1158
    .local v1, "lastStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipLastStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 1162
    :cond_0
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipLastStack:Lcom/android/server/am/ActivityStack;

    .line 1165
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1166
    const-string v3, "ActivityManager"

    const-string v4, "game pip last freeform"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return v2

    .line 1169
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1170
    return v2

    .line 1173
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1174
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v4, :cond_3

    .line 1177
    invoke-static {v2}, Lnubia/os/ApplicationManager$Trigger;->change4DNode(Z)V

    .line 1179
    const-string v2, "ActivityManager"

    const-string v4, "current focus freeform, not pause back"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const/4 v2, 0x1

    return v2

    .line 1182
    :cond_3
    return v2
.end method

.method shutdownLocked(I)Z
    .locals 7
    .param p1, "timeout"    # I

    .line 3808
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 3810
    const/4 v0, 0x0

    .line 3811
    .local v0, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 3813
    .local v1, "endTime":J
    :goto_0
    const/4 v3, 0x1

    invoke-direct {p0, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->putStacksToSleepLocked(ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 3815
    .local v3, "timeRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 3817
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3818
    :catch_0
    move-exception v5

    .line 3819
    .end local v3    # "timeRemaining":J
    :goto_1
    nop

    .line 3825
    goto :goto_0

    .line 3821
    .restart local v3    # "timeRemaining":J
    :cond_0
    const-string v5, "ActivityManager"

    const-string v6, "Activity manager shutdown timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    const/4 v0, 0x1

    .line 3823
    nop

    .line 3831
    .end local v3    # "timeRemaining":J
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3833
    return v0
.end method

.method startActivityFromRecents(IIILcom/android/server/am/SafeActivityOptions;)I
    .locals 28
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "taskId"    # I
    .param p4, "options"    # Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v1, p0

    move/from16 v2, p3

    .line 5108
    move-object/from16 v14, p4

    const/4 v3, 0x0

    .line 5112
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    const/4 v0, 0x0

    .line 5113
    .local v0, "activityType":I
    const/4 v4, 0x0

    .line 5114
    .local v4, "windowingMode":I
    const/4 v5, 0x0

    if-eqz v14, :cond_0

    .line 5115
    invoke-virtual {v14, v1}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_0

    .line 5116
    :cond_0
    move-object v6, v5

    :goto_0
    move-object v13, v6

    .line 5117
    .local v13, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v13, :cond_1

    .line 5118
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 5119
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    .line 5121
    .end local v0    # "activityType":I
    .end local v4    # "windowingMode":I
    .local v11, "windowingMode":I
    .local v12, "activityType":I
    :cond_1
    move v12, v0

    move v11, v4

    const/4 v4, 0x2

    if-eq v12, v4, :cond_a

    const/4 v10, 0x3

    if-eq v12, v10, :cond_a

    .line 5126
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 5128
    const/4 v9, 0x4

    const/4 v8, 0x0

    if-ne v11, v10, :cond_2

    .line 5129
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 5130
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result v6

    .line 5129
    invoke-virtual {v0, v6, v5}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 5135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateRecentsHomeStackBounds()V

    .line 5136
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x13

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 5184
    :catchall_0
    move-exception v0

    move-object v6, v3

    .line 5184
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    .local v26, "activityType":I
    .local v27, "activityOptions":Landroid/app/ActivityOptions;
    :goto_1
    move v5, v10

    move v4, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    move v10, v8

    move v8, v9

    goto/16 :goto_5

    .line 5139
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v26    # "activityType":I
    .end local v27    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_2
    :goto_2
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1, v2, v4, v13, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v6, v5

    .line 5141
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_8

    .line 5148
    if-eq v11, v10, :cond_3

    .line 5152
    :try_start_2
    const-string/jumbo v3, "startActivityFromRecents"

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 5184
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 5157
    :cond_3
    :goto_3
    :try_start_3
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v5, v6, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v3, :cond_5

    .line 5158
    :try_start_4
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 5159
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 5161
    .local v3, "targetActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 5162
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5164
    :try_start_5
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v7, v8, v14, v0}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFrontLocked(IILcom/android/server/am/SafeActivityOptions;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 5167
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 5169
    nop

    .line 5170
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v0

    .line 5171
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5172
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 5170
    invoke-virtual {v0, v5, v4, v7}, Lcom/android/server/am/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5173
    nop

    .line 5184
    if-ne v11, v10, :cond_4

    if-eqz v6, :cond_4

    .line 5188
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 5190
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 5191
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 5192
    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 5193
    .local v5, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5199
    const-string/jumbo v7, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5204
    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 5207
    .end local v0    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5173
    return v4

    .line 5167
    :catchall_2
    move-exception v0

    :try_start_7
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5175
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :cond_5
    :try_start_8
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 5176
    .local v7, "callingPackage":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 5177
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5178
    iget v15, v6, Lcom/android/server/am/TaskRecord;->userId:I

    .line 5179
    .local v15, "userId":I
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v3

    iget v4, v6, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string/jumbo v21, "startActivityFromRecents"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v5, p1

    move-object/from16 v24, v6

    move/from16 v6, p2

    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .local v24, "task":Lcom/android/server/am/TaskRecord;
    move-object v8, v0

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move/from16 v25, v11

    move-object/from16 v11, v18

    .line 5179
    .end local v11    # "windowingMode":I
    .local v25, "windowingMode":I
    move/from16 v26, v12

    move/from16 v12, v19

    .line 5179
    .end local v12    # "activityType":I
    .restart local v26    # "activityType":I
    move-object/from16 v27, v13

    move/from16 v13, v20

    .line 5179
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v27    # "activityOptions":Landroid/app/ActivityOptions;
    move-object/from16 v14, p4

    move-object/from16 v16, v24

    move-object/from16 v17, v21

    move/from16 v18, v22

    move-object/from16 v19, v23

    :try_start_9
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;)I

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 5184
    move/from16 v4, v25

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 5184
    .end local v25    # "windowingMode":I
    .restart local v4    # "windowingMode":I
    move-object/from16 v6, v24

    if-eqz v6, :cond_7

    .line 5188
    .end local v24    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 5190
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    .line 5191
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 5192
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 5193
    .local v8, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 5199
    const-string/jumbo v9, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5204
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 5204
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v8    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    goto :goto_4

    .line 5207
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v24    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    move-object/from16 v6, v24

    .line 5207
    .end local v24    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_7
    :goto_4
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5179
    return v3

    .line 5184
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v15    # "userId":I
    .restart local v24    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v25    # "windowingMode":I
    :catchall_3
    move-exception v0

    move-object/from16 v6, v24

    move/from16 v4, v25

    const/4 v5, 0x3

    const/4 v8, 0x4

    const/4 v10, 0x0

    .line 5184
    .end local v24    # "task":Lcom/android/server/am/TaskRecord;
    .end local v25    # "windowingMode":I
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_5

    .line 5184
    .end local v4    # "windowingMode":I
    .end local v26    # "activityType":I
    .end local v27    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_4
    move-exception v0

    move v5, v10

    move v4, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    move v10, v8

    move v8, v9

    goto :goto_5

    .line 5142
    :cond_8
    move v5, v10

    move v4, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    move v10, v8

    move v8, v9

    .line 5142
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v26    # "activityType":I
    .restart local v27    # "activityOptions":Landroid/app/ActivityOptions;
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 5143
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 5144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivityFromRecents: Task "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not found."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 5184
    :catchall_5
    move-exception v0

    goto :goto_5

    .line 5184
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v26    # "activityType":I
    .end local v27    # "activityOptions":Landroid/app/ActivityOptions;
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_6
    move-exception v0

    move v5, v10

    move v4, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    move v10, v8

    move v8, v9

    move-object v6, v3

    .line 5184
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v26    # "activityType":I
    .restart local v27    # "activityOptions":Landroid/app/ActivityOptions;
    :goto_5
    if-ne v4, v5, :cond_9

    if-eqz v6, :cond_9

    .line 5188
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 5190
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    .line 5191
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 5192
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 5193
    .local v5, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5199
    const-string/jumbo v7, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5204
    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 5207
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    :cond_9
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 5122
    .end local v4    # "windowingMode":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v26    # "activityType":I
    .end local v27    # "activityOptions":Landroid/app/ActivityOptions;
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_a
    move v4, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    .line 5122
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "windowingMode":I
    .restart local v26    # "activityType":I
    .restart local v27    # "activityOptions":Landroid/app/ActivityOptions;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startActivityFromRecents: Task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " can\'t be launch in the home/recents stack."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 19
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1863
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 1866
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_4

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4

    .line 1868
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->appLaunchBoosted:Z

    if-nez v0, :cond_0

    const-string v0, "0"

    const-string/jumbo v4, "persist.sys.nubia.cts.mode"

    const-string v6, "0"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1870
    .local v0, "systemserverPid":I
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "/dev/cpuset/systemserver/cpus"

    const-string v7, "0-6"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->cpusetForColdAPP(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "/dev/cpuset/systemserver/cgroup.procs"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->cpusetForColdAPP(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "/dev/stune/foreground/cgroup.procs"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->cpusetForColdAPP(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "/dev/stune/top-app/schedtune.boost"

    const-string v7, "100"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->cpusetForColdAPP(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0x259

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1875
    .local v4, "msg":Landroid/os/Message;
    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 1876
    iget-object v6, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1877
    iget-object v6, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v5, v6, Lcom/android/server/am/ActivityManagerService;->appLaunchBoosted:Z

    .line 1881
    .end local v0    # "systemserverPid":I
    .end local v4    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_0
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_1

    const-string v0, "android"

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1882
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1887
    :cond_1
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v0, v6, v7, v4}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1890
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3

    .line 1891
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Process "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Already Exists in BG. So sending its PID: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v4, 0x1081

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v8, 0x65

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1894
    :cond_3
    move/from16 v4, p2

    move/from16 v6, p3

    :try_start_1
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1895
    return-void

    .line 1896
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v4, p2

    move/from16 v6, p3

    .line 1897
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when starting activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1898
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1897
    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1897
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1910
    :cond_4
    move/from16 v4, p2

    move/from16 v6, p3

    :goto_1
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v14, "activity"

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1911
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 1910
    invoke-virtual/range {v9 .. v18}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1912
    .local v0, "newApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_5

    .line 1913
    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->processStartedForActivity:Z

    .line 1915
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->isPreStart:Z

    .line 1919
    :cond_5
    return-void
.end method

.method switchUserLocked(ILcom/android/server/am/UserState;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 4144
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    .line 4146
    .local v0, "focusStackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 4147
    .local v1, "dockedStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4148
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 4153
    :cond_1
    new-array v4, v3, [I

    const/4 v5, 0x2

    aput v5, v4, v2

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeStacksInWindowingModes([I)V

    .line 4155
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 4156
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4157
    .local v2, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 4159
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4160
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 4160
    .local v4, "displayNdx":I
    :goto_1
    if-ltz v4, :cond_4

    .line 4161
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityDisplay;

    .line 4162
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    .line 4162
    .local v6, "stackNdx":I
    :goto_2
    if-ltz v6, :cond_3

    .line 4163
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 4164
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 4165
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 4166
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_2

    .line 4167
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 4162
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 4160
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "stackNdx":I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4172
    .end local v4    # "displayNdx":I
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4173
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_5

    .line 4174
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 4176
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    .line 4177
    .local v4, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4178
    const-string/jumbo v5, "switchUserOnHomeDisplay"

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_3

    .line 4181
    :cond_6
    const/4 v5, 0x0

    const-string/jumbo v6, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 4183
    :goto_3
    return v4
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 1325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .param p1, "considerKeyguardState"    # Z

    .line 1337
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1338
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1339
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1340
    return-object v1

    .line 1344
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 1346
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 1347
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1348
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityDisplay;

    .line 1352
    .local v4, "display":Lcom/android/server/am/ActivityDisplay;
    if-nez v4, :cond_1

    .line 1353
    goto :goto_1

    .line 1358
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 1361
    .local v5, "topStack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v5, v0, :cond_2

    .line 1362
    goto :goto_1

    .line 1365
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 1368
    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_3

    .line 1369
    goto :goto_1

    .line 1376
    :cond_3
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1377
    return-object v6

    .line 1346
    .end local v3    # "displayId":I
    .end local v4    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1381
    .end local v2    # "i":I
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2465
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2466
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2467
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 2468
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2469
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2467
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2465
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2472
    .end local v0    # "displayNdx":I
    :cond_1
    return-void
.end method

.method updatePictureInPictureMode(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p3, "forceUpdate"    # Z

    .line 4942
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4943
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4944
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4945
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    .line 4946
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 4943
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4949
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2411
    const/4 v0, 0x0

    .line 2412
    .local v0, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2413
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 2414
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 2415
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2416
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2417
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2418
    .local v5, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_0

    .line 2419
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .line 2420
    :cond_0
    iget-object v6, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_2

    .line 2421
    iget-object v6, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .line 2414
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2412
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2430
    .end local v1    # "displayNdx":I
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v1, v0, :cond_4

    iget-wide v1, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v1, v2, :cond_4

    .line 2433
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 2434
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 2436
    :cond_4
    return-void
.end method

.method updateUIDsPresentOnDisplay()V
    .locals 5

    .line 2100
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2101
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2102
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2104
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2105
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    .line 2106
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v4

    .line 2105
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2101
    .end local v1    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2110
    .end local v0    # "displayNdx":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 2111
    return-void
.end method

.method updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 2379
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-eq p1, v0, :cond_1

    .line 2380
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2382
    :cond_1
    return-void
.end method

.method validateTopActivitiesLocked()V
    .locals 10

    .line 4264
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4264
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_9

    .line 4265
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4266
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 4266
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_8

    .line 4267
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4268
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4269
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v4, :cond_0

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    .line 4270
    .local v5, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4271
    if-nez v4, :cond_1

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateTop...: null top activity, stack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4274
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 4275
    .local v6, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_2

    if-ne v6, v4, :cond_2

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    :cond_2
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v7, :cond_3

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v7, :cond_3

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: activity in front not resumed r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4281
    .end local v6    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_3
    goto :goto_3

    .line 4283
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 4284
    .local v6, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_5

    if-ne v6, v4, :cond_5

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    :cond_5
    if-eqz v4, :cond_7

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v7, :cond_6

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_7

    :cond_6
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: activity in back resumed r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v6    # "resumed":Lcom/android/server/am/ActivityRecord;
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 4264
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 4292
    .end local v0    # "displayNdx":I
    :cond_9
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/app/WaitResult;
    .param p3, "startTimeMs"    # J

    .line 1225
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V

    .line 1226
    .local v0, "waitInfo":Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 4964
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.server.am:TURN_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 4965
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 4327
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4328
    .local v0, "token":J
    const/4 v2, 0x0

    const-wide v3, 0x10b00000001L

    invoke-super {p0, p1, v3, v4, v2}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 4329
    nop

    .local v2, "displayNdx":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4330
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 4331
    .local v3, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    const-wide v4, 0x20b00000002L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/ActivityDisplay;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4329
    .end local v3    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4333
    .end local v2    # "displayNdx":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/KeyguardController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4334
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const-wide v3, 0x10500000004L

    if-eqz v2, :cond_2

    .line 4335
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4336
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4337
    .local v2, "focusedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    .line 4338
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4340
    .end local v2    # "focusedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    goto :goto_1

    .line 4341
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4343
    :goto_1
    const-wide v2, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 4344
    invoke-virtual {v4, v5}, Lcom/android/server/am/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v4

    .line 4343
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4345
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4346
    return-void
.end method
