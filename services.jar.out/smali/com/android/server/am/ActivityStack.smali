.class Lcom/android/server/am/ActivityStack;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityStack.java"

# interfaces
.implements Lcom/android/server/wm/StackWindowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/wm/StackWindowController;",
        ">",
        "Lcom/android/server/wm/ConfigurationContainer;",
        "Lcom/android/server/wm/StackWindowListener;"
    }
.end annotation


# static fields
.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field private static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field private static final FIT_WITHIN_BOUNDS_DIVIDER:I = 0x3

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field private static final MAX_STOPPING_TO_FORCE:I = 0x3

.field private static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field protected static final REMOVE_TASK_MODE_DESTROYING:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final REMOVE_TASK_MODE_MOVING:I = 0x1

.field static final REMOVE_TASK_MODE_MOVING_TO_TOP:I = 0x2

.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field private static final STOP_TIMEOUT:I = 0x2af8

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CLEANUP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityManager"

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field private static final mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field private mBackTaskActivity:Lcom/android/server/am/ActivityRecord;

.field private mBackTaskActivityWithTimeApp:Lcom/android/server/am/ActivityRecord;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field private final mDeferredBounds:Landroid/graphics/Rect;

.field private final mDeferredTaskBounds:Landroid/graphics/Rect;

.field private final mDeferredTaskInsetBounds:Landroid/graphics/Rect;

.field mDisplayId:I

.field private mFinishPasswordActivity:Lcom/android/server/am/ActivityRecord;

.field private mFinishPasswordActivityWithTimeApp:Lcom/android/server/am/ActivityRecord;

.field mForceHidden:Z

.field final mHandler:Landroid/os/Handler;

.field private mInLockedResumeProcess:Z

.field private mInLockedResumeProcessWithTimeApp:Z

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field private mLockedResumeResult:I

.field private mLockedResumeResultWithTimeApp:I

.field private mPasswordRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

.field private mPasswordRecordWithTimeApp:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field public mPerf:Landroid/util/BoostFramework;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field protected final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpInsetBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private mTopActivityOccludesKeyguard:Z

.field private mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateBoundsDeferred:Z

.field private mUpdateBoundsDeferredCalled:Z

.field mWindowContainerController:Lcom/android/server/wm/StackWindowController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 394
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    .line 396
    new-instance v0, Lcom/android/server/am/ActivityPluginDelegate;

    invoke-direct {v0}, Lcom/android/server/am/ActivityPluginDelegate;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;IIZ)V
    .locals 3
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;
    .param p2, "stackId"    # I
    .param p3, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p4, "windowingMode"    # I
    .param p5, "activityType"    # I
    .param p6, "onTop"    # Z

    .line 472
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 309
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 316
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 323
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 328
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 336
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 348
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    .line 352
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 353
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    .line 354
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    .line 362
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    .line 363
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    .line 364
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 365
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    .line 2450
    iput v1, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResult:I

    .line 5957
    iput v1, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResultWithTimeApp:I

    .line 473
    iput-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 474
    iget-object v1, p3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 475
    new-instance v1, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 476
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 477
    iput p2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 478
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 479
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 482
    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 483
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStack;->setActivityType(I)V

    .line 484
    invoke-virtual {p0, p4}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 485
    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p6, v2}, Lcom/android/server/am/ActivityStack;->createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 487
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    :goto_0
    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/am/ActivityStack;->postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V

    .line 488
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStack;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "x2"    # Ljava/lang/String;

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method private adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "allowFocusSelf"    # Z

    .line 3822
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3823
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3824
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocusToNextFocusableStack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3825
    .local v1, "myReason":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3826
    const/4 v2, 0x0

    return v2

    .line 3829
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3831
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v3, :cond_2

    .line 3834
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 3837
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3838
    const/4 v3, 0x1

    return v3
.end method

.method private adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3776
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3781
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3782
    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3784
    .local v1, "myReason":Ljava/lang/String;
    if-ne v0, p1, :cond_1

    .line 3785
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3786
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3785
    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 3787
    return-void

    .line 3790
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3792
    return-void

    .line 3797
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 3799
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_4

    .line 3804
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3805
    return-void

    .line 3809
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 3810
    return-void

    .line 3800
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity no longer associated with task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3778
    .end local v0    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "myReason":Ljava/lang/String;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    :goto_0
    return-void
.end method

.method private appLockerProcessAfterResume()V
    .locals 3

    .line 2487
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isAppLockerOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2488
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mInLockedResumeProcess:Z

    if-eqz v0, :cond_0

    .line 2489
    return-void

    .line 2491
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mInLockedResumeProcess:Z

    .line 2492
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResult:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2502
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mFinishPasswordActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    .line 2503
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mFinishPasswordActivity:Lcom/android/server/am/ActivityRecord;

    const-string v2, "appLockerProcessAfterResume"

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 2498
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mBackTaskActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    .line 2499
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mBackTaskActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mBackTaskActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(I)Z

    goto :goto_0

    .line 2494
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPasswordRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    if-eqz v0, :cond_1

    .line 2495
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPasswordRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityLockHelper;->startUnlockAppActivity(Lcom/android/server/am/ActivityLockHelper$VerifyRecord;)V

    .line 2508
    :cond_1
    :goto_0
    iput v1, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2510
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mInLockedResumeProcess:Z

    .line 2511
    goto :goto_1

    .line 2510
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mInLockedResumeProcess:Z

    throw v0

    .line 2513
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private appLockerProcessWithTimeAppAfterResume()V
    .locals 3

    .line 5994
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isAppTimeLockerOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5995
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mInLockedResumeProcessWithTimeApp:Z

    if-eqz v0, :cond_0

    .line 5996
    return-void

    .line 5998
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mInLockedResumeProcessWithTimeApp:Z

    .line 5999
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResultWithTimeApp:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6009
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mFinishPasswordActivityWithTimeApp:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    .line 6010
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mFinishPasswordActivityWithTimeApp:Lcom/android/server/am/ActivityRecord;

    const-string v2, "appLockerProcessWithTimeAppAfterResume"

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 6005
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mBackTaskActivityWithTimeApp:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    .line 6006
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mBackTaskActivityWithTimeApp:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mBackTaskActivityWithTimeApp:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(I)Z

    goto :goto_0

    .line 6001
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPasswordRecordWithTimeApp:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    if-eqz v0, :cond_1

    .line 6002
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPasswordRecordWithTimeApp:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityTimeLockHelper;->startUnlockAppActivity(Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;)V

    .line 6015
    :cond_1
    :goto_0
    iput v1, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResultWithTimeApp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6017
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mInLockedResumeProcessWithTimeApp:Z

    .line 6018
    goto :goto_1

    .line 6017
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mInLockedResumeProcessWithTimeApp:Z

    throw v0

    .line 6020
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bottomTask()Lcom/android/server/am/TaskRecord;
    .locals 2

    .line 978
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    const/4 v0, 0x0

    return-object v0

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 3
    .param p1, "pipCandidate"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "toFrontTask"    # Lcom/android/server/am/TaskRecord;
    .param p3, "toFrontActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "opts"    # Landroid/app/ActivityOptions;

    .line 3397
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3399
    return v0

    .line 3401
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3405
    :cond_1
    if-eqz p2, :cond_2

    .line 3406
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3407
    .local v1, "targetStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3409
    return v0

    .line 3411
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 3403
    .end local v1    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    :goto_1
    return v0
.end method

.method private canShowWithInsecureKeyguard()Z
    .locals 4

    .line 2245
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 2246
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_1

    .line 2251
    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    .line 2252
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 2247
    .end local v1    # "flags":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack is not attached to any display, stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;

    .line 2256
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p1, :cond_1

    .line 2257
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2258
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 2260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2261
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2265
    :cond_1
    return-void
.end method

.method private cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .line 4503
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 4505
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 4506
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 4508
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 4510
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v3, "cleanupActivityLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4512
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4516
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->cleanupActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 4520
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v2, :cond_3

    .line 4521
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 4522
    .local v3, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 4523
    .local v4, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v4, :cond_1

    .line 4524
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 4526
    .end local v3    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_1
    goto :goto_0

    .line 4527
    :cond_2
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4530
    :cond_3
    if-eqz p2, :cond_4

    .line 4531
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4535
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4538
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchesCleared(Landroid/os/IBinder;)V

    .line 4539
    return-void
.end method

.method private cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4607
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 4608
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4609
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4610
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 4611
    .local v1, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 4612
    .end local v1    # "c":Lcom/android/server/am/ConnectionRecord;
    goto :goto_0

    .line 4613
    :cond_0
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 4615
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method private clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1317
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1319
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1321
    :cond_0
    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p1, "resumeNext"    # Z
    .param p2, "resuming"    # Lcom/android/server/am/ActivityRecord;

    .line 1683
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1686
    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 1687
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1688
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v4

    .line 1689
    .local v4, "wasStopping":Z
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "completePausedLocked"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1690
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    .line 1692
    const/4 v5, 0x2

    const-string v6, "completedPausedLocked"

    invoke-virtual {p0, v0, v5, v3, v6}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0

    .line 1694
    :cond_0
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    .line 1697
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1701
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v5, :cond_1

    .line 1704
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_0

    .line 1706
    :cond_1
    if-eqz v4, :cond_2

    .line 1710
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "completePausedLocked"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_0

    .line 1711
    :cond_2
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1713
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1716
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_0

    .line 1720
    :cond_4
    const/4 v0, 0x0

    .line 1725
    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    .line 1726
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1728
    :cond_6
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1731
    .end local v4    # "wasStopping":Z
    :cond_7
    if-eqz p1, :cond_a

    .line 1732
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1733
    .local v4, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1734
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_1

    .line 1736
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    .line 1737
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1738
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_9

    if-eqz v0, :cond_a

    if-eq v1, v0, :cond_a

    .line 1743
    :cond_9
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1748
    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_a
    :goto_1
    if-eqz v0, :cond_d

    .line 1749
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1751
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_c

    iget-wide v6, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1752
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1753
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long/2addr v6, v8

    .line 1755
    .local v6, "diff":J
    cmp-long v1, v6, v4

    if-lez v1, :cond_c

    .line 1756
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    .line 1757
    .local v1, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v1

    .line 1758
    :try_start_0
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1759
    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v8

    .line 1761
    .local v8, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v8, :cond_b

    .line 1762
    invoke-virtual {v8, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1764
    .end local v8    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_b
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1767
    .end local v1    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v6    # "diff":J
    :cond_c
    :goto_2
    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1773
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->hasPinnedStack()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    move v2, v3

    :goto_3
    move v1, v2

    .line 1774
    .local v1, "hasPinnedStack":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v2, :cond_f

    if-eqz v1, :cond_10

    .line 1776
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v2}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1777
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1780
    :cond_10
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p2, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1781
    return-void
.end method

.method private containsActivityFromStack(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1431
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1432
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 1433
    const/4 v0, 0x1

    return v0

    .line 1435
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    goto :goto_0

    .line 1436
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private cpusetForAntutuTest(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5902
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const-string/jumbo v0, "persist.sys.cpu.cpuset.tnt"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5904
    const-string v0, "com.antutu.ABenchMark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5906
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NX629J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5907
    const-string/jumbo v0, "persist.sys.cpu.governor.tnt"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5909
    :cond_0
    const-string v0, "com.antutu.benchmark.full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5910
    const-string/jumbo v0, "persist.sys.gpu.governor.tnt"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5912
    :cond_1
    const-string/jumbo v0, "persist.sys.cpu.governor.tnt"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5913
    const-string/jumbo v0, "persist.sys.gpu.governor.tnt"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5916
    :cond_2
    :goto_0
    const-string v0, "com.ludashi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "persist.sys.perf.ver"

    .line 5917
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

    .line 5922
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/SurfaceControl;->setActiveConfigg(I)Z

    .line 5925
    :cond_4
    return-void
.end method

.method private cpusetRestoreForAntutuTest(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5928
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const-string/jumbo v0, "persist.sys.cpu.cpuset.tnt"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5930
    const-string v0, "com.antutu.ABenchMark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5932
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NX629J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5933
    const-string/jumbo v0, "persist.sys.cpu.governor.tnt"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5935
    :cond_0
    const-string v0, "com.antutu.benchmark.full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5936
    const-string/jumbo v0, "persist.sys.gpu.governor.tnt"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5938
    :cond_1
    const-string/jumbo v0, "persist.sys.cpu.governor.tnt"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5939
    const-string/jumbo v0, "persist.sys.gpu.governor.tnt"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5942
    :cond_2
    :goto_0
    const-string v0, "com.ludashi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "persist.sys.perf.ver"

    .line 5943
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

    .line 5948
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->setActiveConfigg(I)Z

    .line 5951
    :cond_4
    return-void
.end method

.method private destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 8
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4624
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .line 4625
    .local v0, "lastIsOpaque":Z
    const/4 v1, 0x0

    .line 4626
    .local v1, "activityRemoved":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_6

    .line 4627
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4628
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "activityNdx":I
    :goto_1
    if-ltz v5, :cond_5

    .line 4629
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4630
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_0

    .line 4631
    goto :goto_2

    .line 4633
    :cond_0
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_1

    .line 4634
    const/4 v0, 0x1

    .line 4636
    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v7, p1, :cond_2

    .line 4637
    goto :goto_2

    .line 4639
    :cond_2
    if-nez v0, :cond_3

    .line 4640
    goto :goto_2

    .line 4642
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4647
    invoke-virtual {p0, v6, v3, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4648
    const/4 v1, 0x1

    .line 4628
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4626
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4653
    .end local v2    # "taskNdx":I
    :cond_6
    if-eqz v1, :cond_7

    .line 4654
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4656
    :cond_7
    return-void
.end method

.method private finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 4066
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4067
    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 4071
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_0

    .line 4072
    if-eqz p3, :cond_0

    .line 4073
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 4076
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_1

    .line 4077
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4079
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4077
    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 4081
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4083
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4090
    :cond_2
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4091
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4092
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4093
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4094
    return-void
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .line 5299
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5303
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_5

    .line 5304
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 5305
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 5306
    .local v0, "maxRight":I
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 5307
    .local v1, "horizontalDiff":I
    if-gez v1, :cond_2

    iget v2, p0, Landroid/graphics/Rect;->left:I

    if-ge v2, v0, :cond_3

    :cond_2
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_4

    .line 5309
    :cond_3
    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v2

    .line 5311
    :cond_4
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 5312
    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 5315
    .end local v0    # "maxRight":I
    .end local v1    # "horizontalDiff":I
    :cond_5
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_6

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_a

    .line 5316
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5317
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 5318
    .local v0, "maxBottom":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 5319
    .local v1, "verticalDiff":I
    if-gez v1, :cond_7

    iget v2, p0, Landroid/graphics/Rect;->top:I

    if-ge v2, v0, :cond_8

    :cond_7
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_9

    .line 5321
    :cond_8
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v2

    .line 5323
    :cond_9
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 5324
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 5326
    .end local v0    # "maxBottom":I
    .end local v1    # "verticalDiff":I
    :cond_a
    return-void

    .line 5300
    :cond_b
    :goto_0
    return-void
.end method

.method private getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "targetTask"    # Lcom/android/server/am/TaskRecord;

    .line 3165
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3166
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 3167
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3168
    .local v1, "numTasks":I
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3169
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3170
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, v5, :cond_0

    .line 3171
    return-object v3

    .line 3168
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3175
    .end local v1    # "numTasks":I
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 3234
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3235
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 3236
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3237
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3238
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3240
    return-void
.end method

.method private insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I

    .line 3207
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    .line 3208
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 3209
    return-void

    .line 3210
    :cond_0
    if-gtz p2, :cond_1

    .line 3211
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V

    .line 3212
    return-void

    .line 3214
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    .line 3215
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3216
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3217
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackWindowController;->positionChildAt(Lcom/android/server/wm/TaskWindowContainerController;I)V

    .line 3218
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3219
    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "starting"    # Lcom/android/server/am/ActivityRecord;

    .line 3223
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3225
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 3226
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3227
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3228
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3230
    return-void
.end method

.method private isATopFinishingTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 3761
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 3762
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3763
    .local v3, "current":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3764
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    .line 3766
    return v2

    .line 3768
    :cond_0
    if-ne v3, p1, :cond_1

    .line 3769
    return v1

    .line 3761
    .end local v3    # "current":Lcom/android/server/am/TaskRecord;
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3772
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method private isAppLockerOpen()Z
    .locals 1

    .line 2454
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-boolean v0, Lcom/android/server/am/AppLockerConfig;->ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityLockHelper;->isLockedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAppTimeLockerOpen()Z
    .locals 1

    .line 5961
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-boolean v0, Lcom/android/server/am/AppTimeLockConfig;->ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityTimeLockHelper;->isLockedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemOrNubiaApp(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;

    .line 4105
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "cn.nubia"

    .line 4107
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 4105
    :cond_1
    :goto_0
    return v1
.end method

.method private isTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "topFocusedActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 3416
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .line 5189
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5190
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5192
    .local v1, "strData":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 5193
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5194
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5195
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5192
    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5196
    return-void
.end method

.method private makeInvisible(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2294
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_0

    .line 2296
    return-void

    .line 2302
    :cond_0
    :try_start_0
    const-string/jumbo v0, "makeInvisible"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    .line 2311
    .local v0, "canEnterPictureInPicture":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2312
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 2313
    .local v3, "deferHidingClient":Z
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityRecord;->setDeferHidingClient(Z)V

    .line 2314
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 2316
    sget-object v4, Lcom/android/server/am/ActivityStack$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2316
    .end local v0    # "canEnterPictureInPicture":Z
    .end local v3    # "deferHidingClient":Z
    goto :goto_1

    .line 2335
    .restart local v0    # "canEnterPictureInPicture":Z
    .restart local v3    # "deferHidingClient":Z
    :pswitch_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2337
    goto :goto_1

    .line 2319
    :pswitch_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_2

    .line 2322
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2323
    invoke-static {v2}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v6

    .line 2322
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2328
    :cond_2
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2329
    nop

    .line 2345
    .end local v0    # "canEnterPictureInPicture":Z
    .end local v3    # "deferHidingClient":Z
    :goto_1
    goto :goto_2

    .line 2342
    :catch_0
    move-exception v0

    .line 2344
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown making hidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2346
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "isTop"    # Z
    .param p4, "andResume"    # Z
    .param p5, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2273
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-boolean v1, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v1, :cond_4

    .line 2277
    :cond_0
    if-eq p5, p1, :cond_1

    .line 2278
    iget-object v1, p5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p5, v1, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2280
    :cond_1
    iget-boolean v1, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_3

    .line 2282
    :cond_2
    invoke-virtual {p5, v2}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 2284
    :cond_3
    if-eq p5, p1, :cond_4

    .line 2285
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p5, p4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2286
    return v2

    .line 2289
    :cond_4
    return v0
.end method

.method private postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "schedulePictureInPictureModeChange"    # Z

    .line 5779
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 5780
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    goto :goto_0

    .line 5781
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    .line 5783
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5785
    goto :goto_0

    .line 5784
    :catch_0
    move-exception v0

    .line 5787
    :cond_1
    :goto_0
    return-void
.end method

.method private postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V
    .locals 8
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityDisplay;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "onTop"    # Z

    .line 739
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 740
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 741
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->onParentChanged()V

    .line 743
    if-eqz p3, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ActivityDisplay;->addChild(Lcom/android/server/am/ActivityStack;I)V

    .line 744
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 748
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 747
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 750
    :cond_1
    return-void
.end method

.method private preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "toTop"    # Z

    .line 5764
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 5765
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 5766
    nop

    .line 5767
    if-eqz p3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5766
    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 5769
    :cond_1
    return-object v0
.end method

.method private prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "transit"    # I

    .line 4216
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4217
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4218
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 4219
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4220
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4222
    :cond_0
    return-void
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4550
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4551
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4555
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 4556
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4559
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "removeActivityFromHistoryLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4561
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4562
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeWindowContainer()V

    .line 4563
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4564
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 4567
    .local v2, "lastActivity":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 4568
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    .line 4570
    .local v3, "onlyHasTaskOverlays":Z
    :goto_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_4

    .line 4580
    :cond_2
    if-eqz v3, :cond_3

    .line 4588
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 4594
    :cond_3
    if-eqz v2, :cond_4

    .line 4595
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 4598
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4599
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 4600
    return-void
.end method

.method private removeFromDisplay()V
    .locals 2

    .line 757
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 758
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->removeChild(Lcom/android/server/am/ActivityStack;)V

    .line 761
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 762
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4854
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4857
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 4858
    add-int/lit8 v0, v0, -0x1

    .line 4859
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4861
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    .line 4863
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4864
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4866
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    goto :goto_0

    .line 4867
    :cond_1
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 18
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4870
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    .line 4870
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mLRUActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4871
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mStoppingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4873
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mGoingToSleepActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4875
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    const-string/jumbo v3, "mActivitiesWaitingForVisibleActivity"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4877
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mFinishingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4880
    const/4 v2, 0x0

    .line 4883
    .local v2, "hasVisibleActivities":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    .line 4886
    .local v3, "i":I
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 4886
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_9

    .line 4887
    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4888
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 4889
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4891
    :goto_1
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 4892
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .line 4893
    .local v7, "targetIndex":I
    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 4897
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v9, v1, :cond_7

    .line 4898
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_0

    .line 4899
    const/4 v2, 0x1

    .line 4902
    :cond_0
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-nez v9, :cond_1

    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v9, :cond_2

    :cond_1
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_3

    .line 4905
    :cond_2
    const/4 v9, 0x1

    .line 4905
    .local v9, "remove":Z
    :goto_2
    goto :goto_3

    .line 4906
    .end local v9    # "remove":Z
    :cond_3
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v9, :cond_4

    iget v9, v8, Lcom/android/server/am/ActivityRecord;->launchCount:I

    if-le v9, v10, :cond_4

    iget-wide v12, v8, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 4907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0xea60

    sub-long v14, v14, v16

    cmp-long v9, v12, v14

    if-lez v9, :cond_4

    .line 4913
    const/4 v9, 0x1

    goto :goto_2

    .line 4916
    :cond_4
    move v9, v11

    .line 4918
    .restart local v9    # "remove":Z
    :goto_3
    if-eqz v9, :cond_5

    .line 4925
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_6

    .line 4926
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Force removing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": app died, no saved state"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4927
    const/16 v12, 0x7531

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    iget v14, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4928
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    .line 4929
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x3

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v14, v13, v10

    const/4 v10, 0x4

    const-string/jumbo v14, "proc died without state saved"

    aput-object v14, v13, v10

    .line 4927
    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4931
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v10

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v12, :cond_6

    .line 4932
    iget-object v10, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v8, v11}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    goto :goto_4

    .line 4941
    :cond_5
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4946
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    iput-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4947
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v11, :cond_6

    .line 4950
    iput-object v10, v8, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4953
    :cond_6
    :goto_4
    invoke-direct {v0, v8, v5, v5}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4954
    if-eqz v9, :cond_7

    .line 4955
    const-string v10, "appDied"

    invoke-direct {v0, v8, v10}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4958
    .end local v7    # "targetIndex":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "remove":Z
    :cond_7
    goto/16 :goto_1

    .line 4886
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 4961
    .end local v4    # "taskNdx":I
    :cond_9
    return v2
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .locals 30
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .line 3584
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p2

    .line 3584
    const/4 v1, -0x1

    .line 3585
    .local v1, "replyChainEnd":I
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3586
    .local v2, "taskId":I
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 3588
    .local v3, "taskAffinity":Ljava/lang/String;
    move-object/from16 v4, p1

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3589
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3590
    .local v6, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v7

    .line 3593
    .local v7, "rootActivityNdx":I
    add-int/lit8 v8, v6, -0x1

    move v9, v1

    move/from16 v1, p5

    .line 3593
    .end local p5    # "taskInsertionPoint":I
    .local v1, "taskInsertionPoint":I
    .local v8, "i":I
    .local v9, "replyChainEnd":I
    :goto_0
    if-le v8, v7, :cond_f

    .line 3594
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 3595
    .local v10, "target":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v10, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v11, :cond_0

    .line 3596
    nop

    .line 3681
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    goto/16 :goto_b

    .line 3598
    :cond_0
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3599
    .local v11, "flags":I
    and-int/lit8 v12, v11, 0x2

    const/4 v13, 0x0

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    move v12, v13

    .line 3600
    .local v12, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v15, v11, 0x40

    if-eqz v15, :cond_2

    const/4 v13, 0x1

    nop

    .line 3602
    .local v13, "allowTaskReparenting":Z
    :cond_2
    iget-object v15, v10, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v15, :cond_4

    .line 3609
    if-gez v9, :cond_3

    .line 3610
    move v9, v8

    .line 3593
    .end local v2    # "taskId":I
    .end local v3    # "taskAffinity":Ljava/lang/String;
    .end local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "flags":I
    .end local v12    # "finishOnTaskLaunch":Z
    .end local v13    # "allowTaskReparenting":Z
    .local v16, "taskId":I
    .local v20, "taskAffinity":Ljava/lang/String;
    :cond_3
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    goto/16 :goto_a

    .line 3612
    .end local v16    # "taskId":I
    .end local v20    # "taskAffinity":Ljava/lang/String;
    .restart local v2    # "taskId":I
    .restart local v3    # "taskAffinity":Ljava/lang/String;
    .restart local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v11    # "flags":I
    .restart local v12    # "finishOnTaskLaunch":Z
    .restart local v13    # "allowTaskReparenting":Z
    :cond_4
    if-eqz p3, :cond_e

    if-eqz v13, :cond_e

    if-eqz v3, :cond_e

    iget-object v14, v10, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3615
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 3626
    if-nez p4, :cond_9

    if-eqz v12, :cond_5

    .line 3627
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    goto/16 :goto_5

    .line 3639
    :cond_5
    if-gez v1, :cond_6

    .line 3640
    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3640
    .end local v2    # "taskId":I
    .restart local v16    # "taskId":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_2

    .line 3644
    .end local v16    # "taskId":I
    .restart local v2    # "taskId":I
    :cond_6
    move/from16 v16, v2

    .line 3644
    .end local v2    # "taskId":I
    .restart local v16    # "taskId":I
    :goto_2
    if-ltz v9, :cond_7

    move v2, v9

    goto :goto_3

    :cond_7
    move v2, v8

    .line 3648
    .local v2, "start":I
    :goto_3
    move/from16 v17, v2

    .line 3648
    .local v17, "srcPos":I
    :goto_4
    move/from16 v18, v17

    .line 3648
    .end local v17    # "srcPos":I
    .local v18, "srcPos":I
    move/from16 v19, v2

    move/from16 v2, v18

    if-lt v2, v8, :cond_8

    .line 3649
    .end local v18    # "srcPos":I
    .local v2, "srcPos":I
    .local v19, "start":I
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v3

    move-object/from16 v3, v17

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3650
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "taskAffinity":Ljava/lang/String;
    const-string/jumbo v4, "resetAffinityTaskIfNeededLocked"

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3648
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v17, v2, -0x1

    .line 3648
    .end local v2    # "srcPos":I
    .restart local v17    # "srcPos":I
    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, p1

    goto :goto_4

    .line 3658
    .end local v17    # "srcPos":I
    .end local v20    # "taskAffinity":Ljava/lang/String;
    .local v3, "taskAffinity":Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v3

    .line 3658
    .end local v3    # "taskAffinity":Ljava/lang/String;
    .restart local v20    # "taskAffinity":Ljava/lang/String;
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 3659
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v4

    .line 3658
    move/from16 v27, v1

    const/4 v1, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3665
    .end local v1    # "taskInsertionPoint":I
    .local v27, "taskInsertionPoint":I
    iget-object v3, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v3, v1, :cond_d

    .line 3666
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3667
    .local v1, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3668
    .local v3, "targetNdx":I
    if-lez v3, :cond_d

    .line 3669
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3670
    .local v4, "p":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object/from16 v28, v1

    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3670
    .end local v1    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v28, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3671
    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string/jumbo v25, "replace"

    const/16 v26, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .end local v3    # "targetNdx":I
    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "start":I
    .end local v28    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto :goto_9

    .line 3627
    .end local v16    # "taskId":I
    .end local v20    # "taskAffinity":Ljava/lang/String;
    .end local v27    # "taskInsertionPoint":I
    .local v1, "taskInsertionPoint":I
    .local v2, "taskId":I
    .local v3, "taskAffinity":Ljava/lang/String;
    :cond_9
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    .line 3627
    .end local v2    # "taskId":I
    .end local v3    # "taskAffinity":Ljava/lang/String;
    .restart local v16    # "taskId":I
    .restart local v20    # "taskAffinity":Ljava/lang/String;
    :goto_5
    if-ltz v9, :cond_a

    move v0, v9

    goto :goto_6

    :cond_a
    move v0, v8

    .line 3630
    .local v0, "start":I
    :goto_6
    move v3, v0

    .line 3630
    .local v3, "srcPos":I
    :goto_7
    if-lt v3, v8, :cond_c

    .line 3631
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3632
    .restart local v4    # "p":Lcom/android/server/am/ActivityRecord;
    move/from16 v29, v0

    iget-boolean v0, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 3632
    .end local v0    # "start":I
    .local v29, "start":I
    if-eqz v0, :cond_b

    .line 3633
    goto :goto_8

    .line 3635
    :cond_b
    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string/jumbo v25, "move-affinity"

    const/16 v26, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    :goto_8
    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v29

    goto :goto_7

    .line 3638
    .end local v3    # "srcPos":I
    .end local v29    # "start":I
    :cond_c
    nop

    .line 3678
    move/from16 v27, v1

    .line 3678
    .end local v1    # "taskInsertionPoint":I
    .restart local v27    # "taskInsertionPoint":I
    :cond_d
    :goto_9
    const/4 v0, -0x1

    .line 3593
    .end local v9    # "replyChainEnd":I
    .end local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "flags":I
    .end local v12    # "finishOnTaskLaunch":Z
    .end local v13    # "allowTaskReparenting":Z
    .local v0, "replyChainEnd":I
    move v9, v0

    move/from16 v1, v27

    goto :goto_a

    .line 3593
    .end local v0    # "replyChainEnd":I
    .end local v16    # "taskId":I
    .end local v20    # "taskAffinity":Ljava/lang/String;
    .end local v27    # "taskInsertionPoint":I
    .restart local v1    # "taskInsertionPoint":I
    .restart local v2    # "taskId":I
    .local v3, "taskAffinity":Ljava/lang/String;
    .restart local v9    # "replyChainEnd":I
    :cond_e
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    .line 3593
    .end local v2    # "taskId":I
    .end local v3    # "taskAffinity":Ljava/lang/String;
    .restart local v16    # "taskId":I
    .restart local v20    # "taskAffinity":Ljava/lang/String;
    :goto_a
    add-int/lit8 v8, v8, -0x1

    move/from16 v2, v16

    move-object/from16 v3, v20

    move-object/from16 v0, p2

    move-object/from16 v4, p1

    goto/16 :goto_0

    .line 3681
    .end local v8    # "i":I
    .end local v16    # "taskId":I
    .end local v20    # "taskAffinity":Ljava/lang/String;
    .restart local v2    # "taskId":I
    .restart local v3    # "taskAffinity":Ljava/lang/String;
    :cond_f
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    .line 3681
    .end local v2    # "taskId":I
    .end local v3    # "taskAffinity":Ljava/lang/String;
    .restart local v16    # "taskId":I
    .restart local v20    # "taskAffinity":Ljava/lang/String;
    :goto_b
    return v1
.end method

.method private resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .locals 26
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    .line 3432
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 3432
    const/4 v0, 0x0

    .line 3434
    .local v0, "topOptions":Landroid/app/ActivityOptions;
    const/4 v1, -0x1

    .line 3435
    .local v1, "replyChainEnd":I
    const/4 v2, 0x1

    .line 3439
    .local v2, "canMoveOptions":Z
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3440
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3441
    .local v10, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v11

    .line 3442
    .local v11, "rootActivityNdx":I
    add-int/lit8 v3, v10, -0x1

    move-object v12, v0

    move v13, v1

    move v14, v2

    .line 3442
    .end local v0    # "topOptions":Landroid/app/ActivityOptions;
    .end local v1    # "replyChainEnd":I
    .end local v2    # "canMoveOptions":Z
    .local v3, "i":I
    .local v12, "topOptions":Landroid/app/ActivityOptions;
    .local v13, "replyChainEnd":I
    .local v14, "canMoveOptions":Z
    :goto_0
    move v15, v3

    .line 3442
    .end local v3    # "i":I
    .local v15, "i":I
    if-le v15, v11, :cond_15

    .line 3443
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 3444
    .local v6, "target":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_0

    .line 3445
    goto/16 :goto_10

    .line 3447
    :cond_0
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3448
    .local v5, "flags":I
    and-int/lit8 v0, v5, 0x2

    const/16 v16, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move/from16 v0, v16

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    move/from16 v17, v0

    .line 3450
    .local v17, "finishOnTaskLaunch":Z
    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_2

    move/from16 v0, v16

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    move/from16 v18, v0

    .line 3452
    .local v18, "allowTaskReparenting":Z
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3453
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    move/from16 v0, v16

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    move/from16 v19, v0

    .line 3455
    .local v19, "clearWhenTaskReset":Z
    if-nez v17, :cond_4

    if-nez v19, :cond_4

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_4

    .line 3464
    if-gez v13, :cond_14

    .line 3465
    move v0, v15

    .line 3442
    .end local v5    # "flags":I
    .end local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "finishOnTaskLaunch":Z
    .end local v18    # "allowTaskReparenting":Z
    .end local v19    # "clearWhenTaskReset":Z
    :goto_4
    move v13, v0

    goto/16 :goto_f

    .line 3467
    .restart local v5    # "flags":I
    .restart local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v17    # "finishOnTaskLaunch":Z
    .restart local v18    # "allowTaskReparenting":Z
    .restart local v19    # "clearWhenTaskReset":Z
    :cond_4
    if-nez v17, :cond_b

    if-nez v19, :cond_b

    if-eqz v18, :cond_b

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 3471
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3480
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3481
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    move-object v3, v0

    .line 3482
    .local v3, "bottom":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_6

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3483
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3487
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3499
    .local v0, "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v23, v3

    move/from16 v20, v5

    move-object v8, v6

    goto :goto_6

    .line 3491
    .end local v0    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3492
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 3491
    move-object v0, v7

    move-object/from16 v23, v3

    move-object/from16 v3, v16

    .line 3491
    .end local v3    # "bottom":Lcom/android/server/am/ActivityRecord;
    .local v23, "bottom":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v4, v20

    move/from16 v20, v5

    move-object/from16 v5, v21

    .line 3491
    .end local v5    # "flags":I
    .local v20, "flags":I
    move-object v8, v6

    move/from16 v6, v22

    .line 3491
    .end local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .local v8, "target":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3494
    .restart local v0    # "targetTask":Lcom/android/server/am/TaskRecord;
    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 3499
    :goto_6
    move v1, v14

    .line 3500
    .local v1, "noOptions":Z
    if-gez v13, :cond_7

    move v2, v15

    goto :goto_7

    :cond_7
    move v2, v13

    .line 3501
    .local v2, "start":I
    :goto_7
    move v3, v1

    move v1, v2

    .line 3501
    .local v1, "srcPos":I
    .local v3, "noOptions":Z
    :goto_8
    if-lt v1, v15, :cond_a

    .line 3502
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3503
    .local v4, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_8

    .line 3504
    nop

    .line 3501
    move v5, v14

    const/4 v14, 0x0

    goto :goto_9

    .line 3507
    :cond_8
    const/4 v5, 0x0

    .line 3508
    .end local v14    # "canMoveOptions":Z
    .local v5, "canMoveOptions":Z
    if-eqz v3, :cond_9

    if-nez v12, :cond_9

    .line 3509
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v12

    .line 3510
    if-eqz v12, :cond_9

    .line 3511
    const/4 v3, 0x0

    .line 3519
    :cond_9
    const-string/jumbo v6, "resetTargetTaskIfNeeded"

    const/4 v14, 0x0

    invoke-virtual {v4, v0, v14, v6}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3501
    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    :goto_9
    add-int/lit8 v1, v1, -0x1

    move v14, v5

    goto :goto_8

    .line 3522
    .end local v1    # "srcPos":I
    .end local v5    # "canMoveOptions":Z
    .restart local v14    # "canMoveOptions":Z
    :cond_a
    const/4 v1, 0x0

    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 3523
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    .line 3522
    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3524
    const/4 v0, -0x1

    .line 3525
    .end local v2    # "start":I
    .end local v3    # "noOptions":Z
    .end local v13    # "replyChainEnd":I
    .end local v23    # "bottom":Lcom/android/server/am/ActivityRecord;
    .local v0, "replyChainEnd":I
    goto/16 :goto_4

    .line 3525
    .end local v0    # "replyChainEnd":I
    .end local v8    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "flags":I
    .local v5, "flags":I
    .restart local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "replyChainEnd":I
    :cond_b
    move/from16 v20, v5

    move-object v8, v6

    .line 3525
    .end local v5    # "flags":I
    .end local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "flags":I
    if-nez p2, :cond_d

    if-nez v17, :cond_d

    if-eqz v19, :cond_c

    goto :goto_a

    .line 3567
    :cond_c
    const/4 v0, -0x1

    .line 3567
    .end local v8    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "replyChainEnd":I
    .end local v17    # "finishOnTaskLaunch":Z
    .end local v18    # "allowTaskReparenting":Z
    .end local v19    # "clearWhenTaskReset":Z
    .end local v20    # "flags":I
    .restart local v0    # "replyChainEnd":I
    goto/16 :goto_4

    .line 3531
    .end local v0    # "replyChainEnd":I
    .restart local v8    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "replyChainEnd":I
    .restart local v17    # "finishOnTaskLaunch":Z
    .restart local v18    # "allowTaskReparenting":Z
    .restart local v19    # "clearWhenTaskReset":Z
    .restart local v20    # "flags":I
    :cond_d
    :goto_a
    if-eqz v19, :cond_e

    .line 3535
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3535
    .local v0, "end":I
    :goto_b
    goto :goto_c

    .line 3536
    .end local v0    # "end":I
    :cond_e
    if-gez v13, :cond_f

    .line 3537
    move v0, v15

    goto :goto_b

    .line 3539
    :cond_f
    move v0, v13

    .line 3541
    .restart local v0    # "end":I
    :goto_c
    move v1, v14

    .line 3542
    .local v1, "noOptions":Z
    move-object v2, v12

    move v12, v0

    move v0, v15

    .line 3542
    .local v0, "srcPos":I
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    .local v12, "end":I
    :goto_d
    move v5, v0

    .line 3542
    .end local v0    # "srcPos":I
    .local v5, "srcPos":I
    if-gt v5, v12, :cond_13

    .line 3543
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3544
    .restart local v4    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_10

    .line 3545
    goto :goto_e

    .line 3547
    :cond_10
    const/4 v14, 0x0

    .line 3548
    if-eqz v1, :cond_11

    if-nez v2, :cond_11

    .line 3549
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 3550
    if-eqz v2, :cond_11

    .line 3551
    const/4 v1, 0x0

    .line 3556
    .end local v1    # "noOptions":Z
    .end local v2    # "topOptions":Landroid/app/ActivityOptions;
    .local v21, "topOptions":Landroid/app/ActivityOptions;
    .local v22, "noOptions":Z
    :cond_11
    move/from16 v22, v1

    move-object/from16 v21, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v23, "reset-task"

    const/16 v24, 0x0

    move-object v0, v7

    move-object v1, v4

    move-object/from16 v25, v4

    move-object/from16 v4, v23

    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    .local v25, "p":Lcom/android/server/am/ActivityRecord;
    move/from16 v23, v5

    move/from16 v5, v24

    .line 3556
    .end local v5    # "srcPos":I
    .local v23, "srcPos":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3558
    add-int/lit8 v12, v12, -0x1

    .line 3559
    add-int/lit8 v5, v23, -0x1

    .line 3542
    .end local v23    # "srcPos":I
    .end local v25    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "srcPos":I
    move-object/from16 v2, v21

    move/from16 v1, v22

    goto :goto_e

    .line 3542
    .end local v5    # "srcPos":I
    .restart local v23    # "srcPos":I
    :cond_12
    move-object/from16 v2, v21

    move/from16 v1, v22

    move/from16 v5, v23

    .line 3542
    .end local v21    # "topOptions":Landroid/app/ActivityOptions;
    .end local v22    # "noOptions":Z
    .end local v23    # "srcPos":I
    .restart local v1    # "noOptions":Z
    .restart local v2    # "topOptions":Landroid/app/ActivityOptions;
    .restart local v5    # "srcPos":I
    :goto_e
    add-int/lit8 v0, v5, 0x1

    .line 3542
    .end local v5    # "srcPos":I
    .restart local v0    # "srcPos":I
    goto :goto_d

    .line 3562
    .end local v0    # "srcPos":I
    :cond_13
    const/4 v0, -0x1

    .line 3563
    .end local v1    # "noOptions":Z
    .end local v12    # "end":I
    .end local v13    # "replyChainEnd":I
    .local v0, "replyChainEnd":I
    nop

    .line 3442
    move v13, v0

    move-object v12, v2

    .line 3442
    .end local v0    # "replyChainEnd":I
    .end local v2    # "topOptions":Landroid/app/ActivityOptions;
    .end local v8    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "finishOnTaskLaunch":Z
    .end local v18    # "allowTaskReparenting":Z
    .end local v19    # "clearWhenTaskReset":Z
    .end local v20    # "flags":I
    .local v12, "topOptions":Landroid/app/ActivityOptions;
    .restart local v13    # "replyChainEnd":I
    :cond_14
    :goto_f
    add-int/lit8 v3, v15, -0x1

    .line 3442
    .end local v15    # "i":I
    .local v3, "i":I
    move-object/from16 v8, p1

    goto/16 :goto_0

    .line 3571
    .end local v3    # "i":I
    :cond_15
    :goto_10
    return-object v12
.end method

.method private resumeLockedAppProcess(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 2458
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isAppLockerOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2459
    const/4 v0, 0x0

    .line 2460
    .local v0, "isLocked":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2461
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    .line 2463
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/ActivityLockHelper;->onTopActivityResume(Lcom/android/server/am/ActivityRecord;Z)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResult:I

    .line 2464
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResult:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2465
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityLockHelper;->getResumeStartRecord()Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPasswordRecord:Lcom/android/server/am/ActivityLockHelper$VerifyRecord;

    goto :goto_0

    .line 2466
    :cond_1
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResult:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2467
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mBackTaskActivity:Lcom/android/server/am/ActivityRecord;

    .line 2470
    .end local v0    # "isLocked":Z
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/am/AppLockerConfig;->ENABLE:Z

    if-eqz v0, :cond_3

    .line 2471
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityLockHelper;->setCallFromMoveToTaskFront(Z)V

    .line 2473
    :cond_3
    return-void
.end method

.method private resumeLockedAppProcessWithTimeApp(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 5965
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isAppTimeLockerOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5966
    const/4 v0, 0x0

    .line 5967
    .local v0, "isLocked":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5968
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    .line 5970
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/am/ActivityTimeLockHelper;->onTopActivityResume(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResultWithTimeApp:I

    .line 5971
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResultWithTimeApp:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5972
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityTimeLockHelper;->getResumeStartRecord()Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPasswordRecordWithTimeApp:Lcom/android/server/am/ActivityTimeLockHelper$VerifyRecord;

    goto :goto_0

    .line 5973
    :cond_1
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResultWithTimeApp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5974
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mBackTaskActivityWithTimeApp:Lcom/android/server/am/ActivityRecord;

    .line 5977
    .end local v0    # "isLocked":Z
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/am/AppTimeLockConfig;->ENABLE:Z

    if-eqz v0, :cond_3

    .line 5978
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityTimeLockHelper;->setCallFromMoveToTaskFront(Z)V

    .line 5980
    :cond_3
    return-void
.end method

.method private resumeTopActivityInNextFocusableStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Ljava/lang/String;)Z
    .locals 3
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "reason"    # Ljava/lang/String;

    .line 3142
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3144
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3155
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3160
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3161
    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3160
    :goto_0
    return v0

    .line 3150
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3151
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    .line 3150
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 35
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2593
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2593
    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    const/4 v10, 0x0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v0, :cond_0

    .line 2595
    return v10

    .line 2601
    :cond_0
    const/4 v11, 0x1

    invoke-direct {v7, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 2603
    .local v12, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_1

    move v0, v11

    goto :goto_0

    :cond_1
    move v0, v10

    :goto_0
    move v13, v0

    .line 2606
    .local v13, "hasRunningActivity":Z
    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2607
    return v10

    .line 2610
    :cond_2
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->cancelInitializingActivities()V

    .line 2614
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2615
    .local v0, "userLeaving":Z
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v10, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2617
    const/4 v14, 0x2

    if-nez v13, :cond_4

    .line 2619
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v1

    if-ne v1, v14, :cond_3

    .line 2620
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v2, "relunch launcher"

    invoke-virtual {v1, v8, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2624
    :cond_3
    const-string/jumbo v1, "noMoreActivities"

    invoke-direct {v7, v8, v9, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInNextFocusableStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2627
    :cond_4
    iput-boolean v10, v12, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2630
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v12, :cond_5

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2631
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2634
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2638
    return v10

    .line 2643
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v12, :cond_6

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2645
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2648
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2652
    return v10

    .line 2658
    :cond_6
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v2, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2659
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping resume of top activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    return v10

    .line 2667
    :cond_7
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2668
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2669
    iput-boolean v10, v12, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2670
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2671
    iput-boolean v11, v12, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 2675
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v1, :cond_8

    .line 2676
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 2680
    :cond_8
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eqz v1, :cond_a

    .line 2681
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2682
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v11, :cond_9

    move v2, v11

    goto :goto_1

    :cond_9
    move v2, v10

    :goto_1
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 2687
    :cond_a
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2691
    return v10

    .line 2694
    :cond_b
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setLaunchSource(I)V

    .line 2696
    const/4 v1, 0x0

    .line 2697
    .local v1, "lastResumedCanPip":Z
    const/4 v2, 0x0

    .line 2698
    .local v2, "lastResumed":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    .line 2699
    .local v15, "lastFocusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_e

    if-eq v15, v7, :cond_e

    .line 2702
    iget-object v2, v15, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2703
    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v15, v12}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2708
    const/4 v0, 0x0

    .line 2710
    :cond_c
    if-eqz v2, :cond_d

    const-string/jumbo v3, "resumeTopActivity"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v11

    goto :goto_2

    :cond_d
    move v3, v10

    :goto_2
    move v1, v3

    .line 2717
    .end local v0    # "userLeaving":Z
    .end local v1    # "lastResumedCanPip":Z
    .end local v2    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .local v5, "lastResumed":Lcom/android/server/am/ActivityRecord;
    .local v6, "userLeaving":Z
    .local v16, "lastResumedCanPip":Z
    :cond_e
    move v6, v0

    move/from16 v16, v1

    move-object v5, v2

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_f

    if-nez v16, :cond_f

    move v0, v11

    goto :goto_3

    :cond_f
    move v0, v10

    :goto_3
    move/from16 v17, v0

    .line 2720
    .local v17, "resumeWhilePausing":Z
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v6, v12, v10}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v0

    .line 2721
    .local v0, "pausing":Z
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_10

    .line 2724
    invoke-virtual {v7, v6, v10, v12, v10}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2726
    .end local v0    # "pausing":Z
    .local v18, "pausing":Z
    :cond_10
    move/from16 v18, v0

    const/4 v4, 0x0

    if-eqz v18, :cond_13

    if-nez v17, :cond_13

    .line 2733
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_11

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_11

    .line 2734
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, v11, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2737
    :cond_11
    if-eqz v5, :cond_12

    .line 2738
    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 2740
    :cond_12
    return v11

    .line 2741
    :cond_13
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v12, :cond_14

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2742
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2748
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2752
    return v11

    .line 2758
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_15

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_15

    .line 2762
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string/jumbo v19, "resume-no-history"

    const/16 v20, 0x0

    move-object v1, v7

    move-object v14, v4

    move-object v4, v0

    move-object/from16 v22, v5

    move-object/from16 v5, v19

    .end local v5    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .local v22, "lastResumed":Lcom/android/server/am/ActivityRecord;
    move/from16 v19, v6

    move/from16 v6, v20

    .line 2762
    .end local v6    # "userLeaving":Z
    .local v19, "userLeaving":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2764
    iput-object v14, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_4

    .line 2767
    .end local v19    # "userLeaving":Z
    .end local v22    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "userLeaving":Z
    :cond_15
    move-object v14, v4

    move-object/from16 v22, v5

    move/from16 v19, v6

    .line 2767
    .end local v5    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "userLeaving":Z
    .restart local v19    # "userLeaving":Z
    .restart local v22    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    :goto_4
    if-eqz v8, :cond_17

    if-eq v8, v12, :cond_17

    .line 2768
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v12, :cond_16

    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_16

    .line 2771
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->isTopRunningActivity()Z

    move-result v0

    .line 2770
    invoke-virtual {v7, v12, v11, v0}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2772
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2784
    :cond_16
    iget-boolean v0, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_17

    .line 2785
    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2803
    :cond_17
    :goto_5
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v0, v1, v10, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 2806
    :catch_0
    move-exception v0

    .line 2807
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed trying to unstop package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_7

    .line 2805
    :catch_1
    move-exception v0

    .line 2809
    :goto_6
    nop

    .line 2814
    :goto_7
    const/4 v0, 0x1

    .line 2815
    .local v0, "anim":Z
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-nez v1, :cond_18

    .line 2816
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 2818
    :cond_18
    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eqz v8, :cond_21

    .line 2819
    iget-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v4, 0x5

    const-wide/16 v5, 0x3e8

    if-eqz v3, :cond_1c

    .line 2822
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2823
    const/4 v0, 0x0

    .line 2824
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_9

    .line 2826
    :cond_19
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    if-ne v3, v14, :cond_1a

    .line 2827
    const/4 v3, 0x7

    goto :goto_8

    .line 2828
    :cond_1a
    const/16 v3, 0x9

    .line 2826
    :goto_8
    invoke-virtual {v1, v3, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2829
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eq v1, v3, :cond_1b

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_1b

    .line 2834
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 2836
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2834
    invoke-static {v1, v3, v2, v5, v6}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    goto :goto_9

    .line 2840
    :cond_1b
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 2842
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 2840
    invoke-static {v1, v3, v4, v5, v6}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 2848
    :goto_9
    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    goto :goto_b

    .line 2852
    :cond_1c
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2853
    const/4 v0, 0x0

    .line 2854
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_b

    .line 2856
    :cond_1d
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    if-ne v14, v11, :cond_1e

    .line 2857
    goto :goto_a

    .line 2858
    :cond_1e
    iget-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_1f

    .line 2859
    const/16 v1, 0x10

    goto :goto_a

    .line 2860
    :cond_1f
    const/16 v1, 0x8

    .line 2856
    :goto_a
    invoke-virtual {v3, v1, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2861
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eq v1, v3, :cond_20

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_20

    .line 2866
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 2868
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2866
    invoke-static {v1, v3, v2, v5, v6}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    goto :goto_b

    .line 2872
    :cond_20
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 2874
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 2872
    invoke-static {v1, v3, v4, v5, v6}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    goto :goto_b

    .line 2883
    :cond_21
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2884
    const/4 v0, 0x0

    .line 2885
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2891
    .end local v0    # "anim":Z
    .local v11, "anim":Z
    :goto_b
    move v11, v0

    goto :goto_c

    .line 2887
    .end local v11    # "anim":Z
    .restart local v0    # "anim":Z
    :cond_22
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_b

    .line 2891
    .end local v0    # "anim":Z
    .restart local v11    # "anim":Z
    :goto_c
    if-eqz v11, :cond_23

    .line 2892
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    goto :goto_d

    .line 2894
    :cond_23
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 2897
    :goto_d
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2899
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v14

    .line 2900
    .local v14, "lastStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3c

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_3c

    .line 2911
    if-eqz v14, :cond_25

    .line 2912
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v14, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_25

    iget-object v0, v14, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_25

    :cond_24
    const/4 v0, 0x1

    goto :goto_e

    :cond_25
    move v0, v10

    :goto_e
    move/from16 v20, v0

    .line 2921
    .local v20, "lastActivityTranslucent":Z
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2923
    :try_start_1
    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v0, :cond_26

    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v0, :cond_26

    if-eqz v20, :cond_27

    .line 2924
    :cond_26
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2928
    :cond_27
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2931
    if-nez v14, :cond_28

    const/4 v4, 0x0

    goto :goto_f

    :cond_28
    iget-object v4, v14, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :goto_f
    move-object v3, v4

    .line 2932
    .local v3, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    move-object v4, v0

    .line 2934
    .local v4, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2939
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v5, "resumeTopActivityInnerLocked"

    invoke-virtual {v12, v0, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2941
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2942
    invoke-virtual {v7, v12}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2943
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2947
    const/4 v0, 0x1

    .line 2949
    .local v0, "notUpdated":Z
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2958
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v6, 0x1

    invoke-virtual {v2, v12, v5, v6, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z

    move-result v2

    xor-int/2addr v2, v6

    move v0, v2

    goto :goto_10

    .line 2962
    :cond_29
    move v2, v0

    .line 2962
    .end local v0    # "notUpdated":Z
    .local v2, "notUpdated":Z
    :goto_10
    if-eqz v2, :cond_2d

    .line 2968
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2972
    .local v0, "nextNext":Lcom/android/server/am/ActivityRecord;
    if-eq v0, v12, :cond_2a

    .line 2974
    iget-object v5, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2976
    :cond_2a
    iget-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_2c

    iget-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_2b

    goto :goto_11

    .line 2979
    :cond_2b
    const/4 v5, 0x1

    goto :goto_12

    .line 2977
    :cond_2c
    :goto_11
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2979
    :goto_12
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V

    .line 2981
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v5

    .line 2985
    .end local v0    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_2d
    :try_start_2
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v0, v5}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 2988
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2989
    .local v5, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v5, :cond_2e

    .line 2990
    :try_start_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2991
    .local v6, "N":I
    iget-boolean v10, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v10, :cond_2e

    if-lez v6, :cond_2e

    .line 2994
    invoke-static {v5}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2994
    .end local v6    # "N":I
    goto :goto_13

    .line 3068
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_2
    move-exception v0

    move/from16 v25, v2

    goto/16 :goto_15

    .line 2998
    .restart local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_2e
    :goto_13
    :try_start_4
    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2f

    .line 2999
    :try_start_5
    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v6, v10}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3005
    :cond_2f
    :try_start_6
    iget-boolean v6, v12, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {v12, v6}, Lcom/android/server/am/ActivityRecord;->notifyAppResumed(Z)V

    .line 3007
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    iget v6, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v24, 0x0

    aput-object v6, v10, v24

    .line 3008
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v23, 0x1

    aput-object v6, v10, v23

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v21, 0x2

    aput-object v6, v10, v21

    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/16 v24, 0x3

    aput-object v6, v10, v24

    .line 3007
    const/16 v6, 0x7537

    invoke-static {v6, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3012
    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v10, v7, Lcom/android/server/am/ActivityStack;->mStackId:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v25, v2

    :try_start_7
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 3014
    .end local v2    # "notUpdated":Z
    .local v25, "notUpdated":Z
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v5

    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 3015
    .end local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .local v26, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 3016
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v9

    .line 3012
    invoke-static {v6, v10, v2, v5, v9}, Landroid/os/BSPApplicationManager$Trigger;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 3020
    sget-boolean v2, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z

    if-nez v2, :cond_30

    sget-boolean v2, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z

    if-eqz v2, :cond_31

    :cond_30
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplyInfoTop()I

    move-result v2

    if-eqz v2, :cond_31

    .line 3021
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v32}, Lcom/android/server/wm/WindowManagerService;->setOverscan(IIIII)V

    .line 3025
    :cond_31
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v5, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 3027
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v29

    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 3028
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    .line 3029
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_32

    const/16 v31, 0x1

    goto :goto_14

    :cond_32
    const/16 v31, 0x0

    :goto_14
    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v9, v12, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 3025
    move/from16 v27, v2

    move/from16 v28, v5

    move/from16 v32, v6

    move-object/from16 v33, v9

    invoke-static/range {v27 .. v33}, Lnubia/os/ApplicationManager$Trigger;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 3033
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v5, "com.antutu"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v5, "com.ludashi"

    .line 3034
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v5, "com.primatelabs"

    .line 3035
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3036
    :cond_33
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {v7, v2}, Lcom/android/server/am/ActivityStack;->cpusetForAntutuTest(Ljava/lang/String;)V

    .line 3038
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->noteBenchmarkActivityResuming()V

    .line 3041
    :cond_34
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 3042
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppWarningsLocked()Lcom/android/server/am/AppWarnings;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/server/am/AppWarnings;->onResumeActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3043
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v12}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3044
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 3045
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 3046
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 3047
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iget-object v5, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3049
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v5

    .line 3048
    invoke-static {v2, v5}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v2

    .line 3047
    invoke-virtual {v0, v2}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3050
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 3053
    if-eqz v8, :cond_35

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 3054
    :cond_35
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v9, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 3056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const/16 v34, 0x0

    .line 3054
    move/from16 v27, v2

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    invoke-static/range {v27 .. v34}, Lnubia/os/ApplicationManager$Trigger;->noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 3060
    :cond_36
    if-eqz v8, :cond_37

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 3061
    :cond_37
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v9, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 3063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const/16 v34, 0x0

    .line 3061
    move/from16 v27, v2

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    invoke-static/range {v27 .. v34}, Landroid/os/BSPApplicationManager$Trigger;->noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3090
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v26    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_38
    nop

    .line 3091
    .end local v3    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v25    # "notUpdated":Z
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3096
    :try_start_9
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V

    .line 3098
    invoke-direct {v7, v12}, Lcom/android/server/am/ActivityStack;->resumeLockedAppProcess(Lcom/android/server/am/ActivityRecord;)V

    .line 3101
    invoke-direct {v7, v8, v12}, Lcom/android/server/am/ActivityStack;->resumeLockedAppProcessWithTimeApp(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 3111
    nop

    .line 3112
    .end local v20    # "lastActivityTranslucent":Z
    nop

    .line 3137
    const/4 v1, 0x1

    goto/16 :goto_18

    .line 3103
    .restart local v20    # "lastActivityTranslucent":Z
    :catch_3
    move-exception v0

    .line 3106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during resume of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3107
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "resume-exception"

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3110
    const/4 v1, 0x1

    return v1

    .line 3068
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v25    # "notUpdated":Z
    :catch_4
    move-exception v0

    goto :goto_15

    .line 3068
    .end local v25    # "notUpdated":Z
    .restart local v2    # "notUpdated":Z
    :catch_5
    move-exception v0

    move/from16 v25, v2

    .line 3072
    .end local v2    # "notUpdated":Z
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v25    # "notUpdated":Z
    :goto_15
    :try_start_a
    const-string/jumbo v2, "resumeTopActivityInnerLocked"

    invoke-virtual {v12, v4, v2}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3075
    if-eqz v3, :cond_39

    .line 3076
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v5, "resumeTopActivityInnerLocked"

    invoke-virtual {v3, v2, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3079
    :cond_39
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restarting because process died: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    iget-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v2, :cond_3a

    .line 3081
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_16

    .line 3082
    :cond_3a
    if-eqz v14, :cond_3b

    .line 3083
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3084
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v2, v2}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3087
    :cond_3b
    :goto_16
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v12, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3089
    monitor-exit v1

    return v6

    .line 3091
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v25    # "notUpdated":Z
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0

    .line 3114
    .end local v20    # "lastActivityTranslucent":Z
    :cond_3c
    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_3d

    .line 3115
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_17

    .line 3118
    :cond_3d
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v2, v2}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3124
    :goto_17
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v12, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3126
    invoke-direct {v7, v12}, Lcom/android/server/am/ActivityStack;->resumeUnLockActivityProcess(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3127
    return v1

    .line 3130
    :cond_3e
    invoke-direct {v7, v12}, Lcom/android/server/am/ActivityStack;->resumeUnLockActivityProcessWithTimeApp(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3131
    return v1

    .line 3137
    :cond_3f
    :goto_18
    return v1
.end method

.method private resumeUnLockActivityProcess(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 2476
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isAppLockerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    .line 2477
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityLockHelper;->needDestroy(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2478
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResult:I

    .line 2479
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mFinishPasswordActivity:Lcom/android/server/am/ActivityRecord;

    .line 2480
    const/4 v0, 0x1

    return v0

    .line 2482
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resumeUnLockActivityProcessWithTimeApp(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 5983
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isAppTimeLockerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    .line 5984
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityTimeLockHelper;->needDestroy(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5985
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mLockedResumeResultWithTimeApp:I

    .line 5986
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mFinishPasswordActivityWithTimeApp:Lcom/android/server/am/ActivityRecord;

    .line 5987
    const/4 v0, 0x1

    return v0

    .line 5989
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private returnsToHomeStack()Z
    .locals 2

    .line 1059
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1060
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1061
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->returnsToHomeStack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1059
    :cond_0
    return v1
.end method

.method private schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1444
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1445
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1447
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1449
    return-void
.end method

.method private setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2577
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_0

    .line 2578
    return-void

    .line 2583
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2585
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    .line 2586
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->noteResumedActivity(Ljava/lang/String;)V

    .line 2589
    :cond_1
    return-void
.end method

.method private topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "focusableOnly"    # Z

    .line 885
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 886
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 887
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 888
    :cond_0
    return-object v1

    .line 885
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 891
    .end local v0    # "taskNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateBehindFullscreen(ZZLcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "stackInvisible"    # Z
    .param p2, "behindFullscreenActivity"    # Z
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2350
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 2355
    const/4 p2, 0x1

    .line 2357
    :cond_0
    return p2
.end method

.method private updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    .line 4977
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_0

    .line 4978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4982
    if-nez p2, :cond_0

    .line 4983
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4986
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->invalidateTaskLayers()V

    .line 4987
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 4965
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p2, :cond_1

    .line 4966
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4967
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4968
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_0

    .line 4970
    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 4973
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4974
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4823
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4825
    .local v0, "origId":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->activityDestroyedLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4827
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4828
    nop

    .line 4829
    return-void

    .line 4827
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method final activityDestroyedLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4836
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_0

    .line 4837
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4842
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4843
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4844
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4845
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4849
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4850
    return-void
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .line 1635
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-boolean v0, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_0

    .line 1636
    const-string v0, "activityPausedLocked"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1642
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1643
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 1644
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1646
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/am/ActivityRecord;->lastPauseTime:J

    .line 1648
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v6, 0x1

    if-ne v5, v0, :cond_1

    .line 1651
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1653
    :try_start_0
    invoke-direct {p0, v6, v3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1656
    nop

    .line 1657
    return-void

    .line 1655
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    .line 1659
    :cond_1
    const/16 v5, 0x753c

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1660
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v7, v8

    const/4 v6, 0x3

    .line 1661
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_2

    .line 1662
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v9, "(none)"

    :goto_0
    aput-object v9, v7, v6

    .line 1659
    invoke-static {v5, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1663
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1664
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "activityPausedLocked"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1665
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_3

    .line 1668
    const-string v5, "activityPausedLocked"

    invoke-virtual {p0, v0, v8, v4, v5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 1674
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v3, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1676
    sget-boolean v3, Landroid/os/NubiaDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v3, :cond_4

    .line 1677
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1680
    :cond_4
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .locals 2
    .param p1, "taskSwitch"    # Z

    .line 2138
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2139
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->addStartingWindowsForVisibleActivities(Z)V

    .line 2138
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2141
    .end local v0    # "taskNdx":I
    :cond_0
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I
    .param p3, "schedulePictureInPictureModeChange"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 5720
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5721
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    .line 5722
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5723
    .local v0, "toTop":Z
    :goto_0
    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/am/ActivityStack;->preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 5725
    .local v1, "prevStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5726
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5728
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5730
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 5731
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5707
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V

    .line 5708
    if-eqz p2, :cond_1

    .line 5710
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 5713
    :cond_1
    return-void
.end method

.method addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "scheduleIdle"    # Z
    .param p3, "idleDelayed"    # Z

    .line 1784
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 1791
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-gt v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1803
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    nop

    :cond_2
    :goto_0
    move v0, v2

    .line 1804
    .local v0, "forceIdle":Z
    if-nez p2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1813
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    goto :goto_2

    .line 1807
    :cond_4
    :goto_1
    if-nez p3, :cond_5

    .line 1808
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_2

    .line 1810
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1815
    :goto_2
    return-void
.end method

.method adjustFocusToNextFocusableStack(Ljava/lang/String;)Z
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 3814
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method affectedBySplitScreenResize()Z
    .locals 3

    .line 2167
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2168
    return v1

    .line 2170
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2171
    .local v0, "windowingMode":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method awakeFromSleepingLocked()V
    .locals 6

    .line 1325
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1326
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1327
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 1328
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1327
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1325
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1331
    .end local v0    # "taskNdx":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    .line 1332
    const-string v0, "ActivityManager"

    const-string v2, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1335
    :cond_2
    return-void
.end method

.method cancelInitializingActivities()V
    .locals 8

    .line 2415
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2416
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x1

    .line 2419
    .local v1, "aboveTop":Z
    const/4 v2, 0x0

    .line 2421
    .local v2, "behindFullscreenActivity":Z
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2424
    const/4 v1, 0x0

    .line 2425
    const/4 v2, 0x1

    .line 2428
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 2429
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2430
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_1
    if-ltz v5, :cond_3

    .line 2431
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 2432
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    .line 2433
    if-ne v6, v0, :cond_1

    .line 2434
    const/4 v1, 0x0

    .line 2436
    :cond_1
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    or-int/2addr v2, v7

    .line 2437
    goto :goto_2

    .line 2440
    :cond_2
    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityRecord;->removeOrphanedStartingWindow(Z)V

    .line 2441
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    or-int/2addr v2, v7

    .line 2430
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2428
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2444
    .end local v3    # "taskNdx":I
    :cond_4
    return-void
.end method

.method checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "shouldBeVisible"    # Z
    .param p3, "isTop"    # Z

    .line 2189
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2190
    .local v0, "displayId":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    .line 2191
    invoke-virtual {v2, v0}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v2

    .line 2192
    .local v2, "keyguardOrAodShowing":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v3

    .line 2197
    .local v3, "keyguardLocked":Z
    const/4 v4, 0x1

    if-eqz p2, :cond_4

    .line 2199
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->hasDismissKeyguardWindows()Z

    move-result v5

    .line 2201
    .local v5, "dismissKeyguard":Z
    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_1

    .line 2202
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 2207
    :cond_1
    if-eqz p3, :cond_2

    .line 2209
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v6

    .line 2211
    .local v6, "showWhenLocked":Z
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr v7, v6

    iput-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2214
    .end local v6    # "showWhenLocked":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2215
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v1

    .line 2216
    .local v6, "canShowWithKeyguard":Z
    :goto_1
    if-eqz v6, :cond_4

    .line 2217
    return v4

    .line 2220
    .end local v5    # "dismissKeyguard":Z
    .end local v6    # "canShowWithKeyguard":Z
    :cond_4
    if-eqz v2, :cond_6

    .line 2224
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->hasDismissKeyguardWindows()Z

    move-result v5

    .line 2226
    .restart local v5    # "dismissKeyguard":Z
    if-eqz p2, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v6

    .line 2227
    invoke-virtual {v6, p1, v5}, Lcom/android/server/am/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2226
    move v1, v4

    goto :goto_2

    .line 2227
    :cond_5
    nop

    .line 2226
    :goto_2
    return v1

    .line 2228
    .end local v5    # "dismissKeyguard":Z
    :cond_6
    if-eqz v3, :cond_8

    .line 2230
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v5

    .line 2231
    .local v5, "showWhenLocked":Z
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->hasDismissKeyguardWindows()Z

    move-result v6

    .line 2233
    .local v6, "dismissKeyguard":Z
    if-eqz p2, :cond_7

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v7

    if-eqz v7, :cond_7

    move v1, v4

    nop

    :cond_7
    return v1

    .line 2236
    .end local v5    # "showWhenLocked":Z
    .end local v6    # "dismissKeyguard":Z
    :cond_8
    return p2
.end method

.method checkReadyForSleep()V
    .locals 2

    .line 1354
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1357
    :cond_0
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 2367
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2368
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 2369
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2370
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 2371
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2372
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v5, p1, :cond_0

    .line 2373
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2370
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2367
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2377
    .end local v0    # "taskNdx":I
    :cond_2
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 10

    .line 5351
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 5352
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5353
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 5354
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5355
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_0

    .line 5356
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "close-sys"

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5353
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5351
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5360
    .end local v0    # "taskNdx":I
    :cond_2
    return-void
.end method

.method continueUpdateBounds()V
    .locals 5

    .line 835
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 836
    .local v0, "wasDeferred":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 837
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    if-eqz v1, :cond_3

    .line 838
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 839
    move-object v1, v2

    goto :goto_0

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 839
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 840
    move-object v3, v2

    goto :goto_1

    .line 839
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    .line 840
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    .line 838
    :goto_2
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 842
    :cond_3
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2361
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2362
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2363
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2364
    return-void
.end method

.method createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "onTop"    # Z
    .param p3, "outBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 491
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v7, Lcom/android/server/wm/StackWindowController;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object v0, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    return-object v7
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .locals 10
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    .line 5678
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;
    .locals 15
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z
    .param p7, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p8, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p9, "options"    # Landroid/app/ActivityOptions;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p6

    .line 5686
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v2, p1

    move-object v3, v7

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 5689
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    const-string v2, "createTaskRecord"

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 5690
    iget v2, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_0

    :cond_0
    move v2, v3

    .line 5691
    .local v2, "displayId":I
    :goto_0
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v4

    .line 5692
    invoke-virtual {v4, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    .line 5693
    .local v4, "isLockscreenShown":Z
    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 5694
    move-object v10, v1

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5695
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    .line 5696
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 5698
    :cond_1
    iget v5, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    invoke-virtual {v1, v8, v3}, Lcom/android/server/am/TaskRecord;->createWindowContainer(ZZ)V

    .line 5699
    return-object v1
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .locals 1

    .line 815
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method deferUpdateBounds()V
    .locals 1

    .line 823
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    if-nez v0, :cond_0

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 827
    :cond_0
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 4724
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4727
    return v1

    .line 4730
    :cond_0
    const/16 v0, 0x7542

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4731
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 4732
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    .line 4730
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4734
    const/4 v0, 0x0

    .line 4736
    .local v0, "removedFromHistory":Z
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4738
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    move v2, v4

    .line 4740
    .local v2, "hadApp":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 4741
    if-eqz p2, :cond_3

    .line 4742
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4743
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, v5, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 4744
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 4745
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 4748
    :cond_2
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4751
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4753
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4754
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4758
    :cond_3
    move v4, v1

    .line 4762
    .local v4, "skipDestroy":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4763
    invoke-static {v8, v9}, Landroid/app/servertransaction/DestroyActivityItem;->obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object v8

    .line 4762
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4774
    goto :goto_1

    .line 4764
    :catch_0
    move-exception v5

    .line 4769
    .local v5, "e":Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_4

    .line 4770
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " exceptionInScheduleDestroy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4771
    const/4 v0, 0x1

    .line 4772
    const/4 v4, 0x1

    .line 4776
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4785
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    .line 4788
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v5, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {p1, v3, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4790
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v3, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4791
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4792
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 4795
    :cond_5
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4798
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4800
    .end local v4    # "skipDestroy":Z
    :goto_2
    goto :goto_3

    .line 4802
    :cond_6
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_7

    .line 4803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hadNoApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4804
    const/4 v0, 0x1

    goto :goto_3

    .line 4807
    :cond_7
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v5, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4809
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4813
    :goto_3
    iput v1, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4815
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    .line 4816
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " being finished, but not in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    :cond_8
    return v0
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    .line 5533
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5534
    const/4 v1, 0x0

    return v1

    .line 5536
    :cond_0
    const-string v14, "    "

    .line 5537
    .local v14, "prefix":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    .local v1, "taskNdx":I
    :goto_0
    move v12, v1

    .end local v1    # "taskNdx":I
    .local v12, "taskNdx":I
    if-ltz v12, :cond_2

    .line 5538
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 5539
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-eqz p6, :cond_1

    .line 5540
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5542
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Task id #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mLastNonFullscreenBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5548
    const-string v1, "      "

    invoke-virtual {v11, v13, v1}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5549
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string v4, "    "

    const-string v5, "Hist"

    const/4 v6, 0x1

    xor-int/lit8 v7, p3, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .local v17, "task":Lcom/android/server/am/TaskRecord;
    move/from16 v16, v12

    move-object/from16 v12, v17

    .end local v12    # "taskNdx":I
    .local v16, "taskNdx":I
    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    .line 5537
    .end local v17    # "task":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v1, v16, -0x1

    .end local v16    # "taskNdx":I
    .restart local v1    # "taskNdx":I
    goto/16 :goto_0

    .line 5552
    .end local v1    # "taskNdx":I
    :cond_2
    return v15
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 1
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 1991
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 1993
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .locals 25
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2003
    move/from16 v9, p4

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2004
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 2005
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 2007
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    move-object v11, v1

    .line 2010
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_0

    .line 2011
    invoke-direct {v7, v11}, Lcom/android/server/am/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V

    .line 2016
    :cond_0
    const/4 v12, 0x1

    if-eqz v11, :cond_1

    move v1, v12

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2017
    .local v1, "aboveTop":Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    move v13, v2

    .line 2018
    .local v13, "stackShouldBeVisible":Z
    if-nez v13, :cond_2

    move v2, v12

    goto :goto_1

    :cond_2
    move v2, v0

    .line 2019
    .local v2, "behindFullscreenActivity":Z
    :goto_1
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2020
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v12

    goto :goto_2

    :cond_3
    move v3, v0

    .line 2021
    .local v3, "resumeNextActivity":Z
    :goto_2
    nop

    .line 2022
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityDisplay;->isTopNotPinnedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v12

    goto :goto_3

    :cond_4
    move v4, v0

    :goto_3
    move v14, v4

    .line 2023
    .local v14, "isTopNotPinnedStack":Z
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v4, v12

    move/from16 v5, p2

    .end local p2    # "configChanges":I
    .local v4, "taskNdx":I
    .local v5, "configChanges":I
    :goto_4
    move v15, v4

    .end local v4    # "taskNdx":I
    .local v15, "taskNdx":I
    if-ltz v15, :cond_1b

    .line 2024
    :try_start_1
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    move-object v6, v4

    .line 2025
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2026
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v3

    move/from16 v18, v5

    .end local v3    # "resumeNextActivity":Z
    .end local v5    # "configChanges":I
    .local v16, "activityNdx":I
    .local v17, "resumeNextActivity":Z
    .local v18, "configChanges":I
    :goto_5
    move/from16 v5, v16

    .end local v16    # "activityNdx":I
    .local v5, "activityNdx":I
    if-ltz v5, :cond_17

    .line 2027
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2028
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v10, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_5

    .line 2029
    goto :goto_7

    .line 2031
    :cond_5
    if-ne v3, v11, :cond_6

    move v10, v12

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    .line 2032
    .local v10, "isTop":Z
    :goto_6
    if-eqz v1, :cond_7

    if-nez v10, :cond_7

    .line 2033
    nop

    .line 2026
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "isTop":Z
    :goto_7
    move-object v0, v4

    move-object/from16 v20, v6

    move v3, v12

    goto/16 :goto_12

    .line 2035
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "isTop":Z
    :cond_7
    const/16 v16, 0x0

    .line 2038
    .end local v1    # "aboveTop":Z
    .local v16, "aboveTop":Z
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityRecord;->shouldBeVisibleIgnoringKeyguard(Z)Z

    move-result v1

    .line 2040
    .local v1, "visibleIgnoringKeyguard":Z
    iput-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 2043
    if-eqz v10, :cond_8

    if-eqz v14, :cond_8

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v7, v3, v1, v12}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v12

    .line 2046
    .local v12, "reallyVisible":Z
    if-eqz v10, :cond_a

    if-eqz v14, :cond_a

    if-eqz v1, :cond_a

    .line 2047
    iget v0, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move-object/from16 v20, v4

    const/4 v4, -0x1

    if-eq v0, v4, :cond_9

    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v20, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget v0, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    .line 2048
    .local v0, "displayId":I
    :goto_9
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v4

    .line 2049
    invoke-virtual {v4, v0}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    .line 2050
    .local v4, "keyguardOrAodShowing":Z
    move/from16 v21, v0

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .end local v0    # "displayId":I
    .local v21, "displayId":I
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    .line 2051
    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->isKeyguardAllowPreTransparent()Z

    move-result v0

    .line 2052
    .local v0, "keyguardAllowPreTransparent":Z
    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    .line 2053
    const/4 v12, 0x1

    .end local v0    # "keyguardAllowPreTransparent":Z
    .end local v4    # "keyguardOrAodShowing":Z
    .end local v21    # "displayId":I
    goto :goto_a

    .line 2058
    .end local v20    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_a
    move-object/from16 v20, v4

    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v20    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_b
    :goto_a
    if-eqz v1, :cond_d

    .line 2059
    if-nez v13, :cond_c

    const/4 v0, 0x1

    goto :goto_b

    :cond_c
    const/4 v0, 0x0

    :goto_b
    invoke-direct {v7, v0, v2, v3}, Lcom/android/server/am/ActivityStack;->updateBehindFullscreen(ZZLcom/android/server/am/ActivityRecord;)Z

    move-result v0

    move v2, v0

    goto :goto_c

    .line 2062
    :cond_d
    move v0, v2

    .end local v2    # "behindFullscreenActivity":Z
    .local v0, "behindFullscreenActivity":Z
    :goto_c
    if-eqz v12, :cond_16

    .line 2067
    if-eq v3, v8, :cond_e

    if-eqz v9, :cond_e

    .line 2068
    move/from16 v4, p3

    move/from16 v22, v0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v4, v2}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .end local v0    # "behindFullscreenActivity":Z
    .local v22, "behindFullscreenActivity":Z
    goto :goto_d

    .line 2072
    .end local v22    # "behindFullscreenActivity":Z
    .restart local v0    # "behindFullscreenActivity":Z
    :cond_e
    move/from16 v4, p3

    move/from16 v22, v0

    const/4 v0, 0x0

    .end local v0    # "behindFullscreenActivity":Z
    .restart local v22    # "behindFullscreenActivity":Z
    :goto_d
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_13

    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_f

    goto :goto_e

    .line 2082
    :cond_f
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_11

    .line 2087
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v2, :cond_10

    if-eqz v9, :cond_10

    .line 2088
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->makeClientVisible()V

    .line 2091
    :cond_10
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->handleAlreadyVisible()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2092
    const/4 v2, 0x0

    .line 2098
    .end local v17    # "resumeNextActivity":Z
    .local v2, "resumeNextActivity":Z
    move/from16 v19, v1

    move/from16 v17, v2

    move-object/from16 v23, v3

    move-object/from16 v0, v20

    const/4 v3, 0x1

    move-object/from16 v20, v6

    goto :goto_10

    .line 2095
    .end local v2    # "resumeNextActivity":Z
    .restart local v17    # "resumeNextActivity":Z
    :cond_11
    invoke-virtual {v3, v8, v9}, Lcom/android/server/am/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2098
    :cond_12
    move/from16 v19, v1

    move-object/from16 v23, v3

    move v8, v5

    move-object/from16 v0, v20

    const/4 v3, 0x1

    move-object/from16 v20, v6

    goto :goto_f

    .line 2073
    :cond_13
    :goto_e
    move/from16 v19, v1

    move-object v1, v7

    .end local v1    # "visibleIgnoringKeyguard":Z
    .local v19, "visibleIgnoringKeyguard":Z
    move-object v2, v8

    move-object/from16 v23, v3

    move/from16 v3, v18

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .local v23, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v20

    move v4, v10

    .end local v20    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move v8, v5

    move/from16 v5, v17

    .end local v5    # "activityNdx":I
    .local v8, "activityNdx":I
    move-object/from16 v20, v6

    move-object/from16 v6, v23

    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .local v20, "task":Lcom/android/server/am/TaskRecord;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2075
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v8, v1, :cond_14

    .line 2077
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 2098
    .end local v8    # "activityNdx":I
    .local v1, "activityNdx":I
    move v5, v1

    goto :goto_10

    .line 2079
    .end local v1    # "activityNdx":I
    .restart local v8    # "activityNdx":I
    :cond_14
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2098
    .end local v17    # "resumeNextActivity":Z
    .local v1, "resumeNextActivity":Z
    move/from16 v17, v1

    goto :goto_f

    .end local v1    # "resumeNextActivity":Z
    .restart local v17    # "resumeNextActivity":Z
    :cond_15
    const/4 v3, 0x1

    .end local v8    # "activityNdx":I
    .restart local v5    # "activityNdx":I
    :goto_f
    move v5, v8

    :goto_10
    move-object/from16 v1, v23

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .end local v23    # "r":Lcom/android/server/am/ActivityRecord;
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    or-int v18, v18, v2

    goto :goto_11

    .line 2105
    .end local v19    # "visibleIgnoringKeyguard":Z
    .end local v22    # "behindFullscreenActivity":Z
    .local v0, "behindFullscreenActivity":Z
    .local v1, "visibleIgnoringKeyguard":Z
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .local v20, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_16
    move/from16 v22, v0

    move/from16 v19, v1

    move-object v1, v3

    move v8, v5

    move-object/from16 v0, v20

    const/4 v3, 0x1

    move-object/from16 v20, v6

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "activityNdx":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "activityNdx":I
    .restart local v19    # "visibleIgnoringKeyguard":Z
    .local v20, "task":Lcom/android/server/am/TaskRecord;
    .restart local v22    # "behindFullscreenActivity":Z
    invoke-direct {v7, v1}, Lcom/android/server/am/ActivityStack;->makeInvisible(Lcom/android/server/am/ActivityRecord;)V

    .line 2026
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "isTop":Z
    .end local v12    # "reallyVisible":Z
    .end local v19    # "visibleIgnoringKeyguard":Z
    move v5, v8

    .end local v8    # "activityNdx":I
    .end local v16    # "aboveTop":Z
    .end local v22    # "behindFullscreenActivity":Z
    .local v1, "aboveTop":Z
    .local v2, "behindFullscreenActivity":Z
    .restart local v5    # "activityNdx":I
    :goto_11
    move/from16 v1, v16

    move/from16 v2, v22

    :goto_12
    const/4 v4, -0x1

    add-int/lit8 v16, v5, -0x1

    .end local v5    # "activityNdx":I
    .local v16, "activityNdx":I
    move-object v4, v0

    move v12, v3

    move-object/from16 v6, v20

    const/4 v0, 0x0

    move-object/from16 v8, p1

    const/4 v10, 0x0

    goto/16 :goto_5

    .line 2133
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "stackShouldBeVisible":Z
    .end local v14    # "isTopNotPinnedStack":Z
    .end local v15    # "taskNdx":I
    .end local v16    # "activityNdx":I
    .end local v17    # "resumeNextActivity":Z
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v0

    goto :goto_15

    .line 2108
    .restart local v1    # "aboveTop":Z
    .restart local v2    # "behindFullscreenActivity":Z
    .restart local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "stackShouldBeVisible":Z
    .restart local v14    # "isTopNotPinnedStack":Z
    .restart local v15    # "taskNdx":I
    .restart local v17    # "resumeNextActivity":Z
    :cond_17
    move-object v0, v4

    move-object/from16 v20, v6

    move v3, v12

    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v20    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    .line 2109
    .local v4, "windowingMode":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_19

    .line 2113
    if-nez v13, :cond_18

    move v5, v3

    goto :goto_13

    :cond_18
    const/4 v5, 0x0

    :goto_13
    move v2, v5

    goto :goto_14

    .line 2114
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1a

    .line 2123
    const/4 v0, 0x1

    .line 2023
    .end local v2    # "behindFullscreenActivity":Z
    .end local v4    # "windowingMode":I
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .local v0, "behindFullscreenActivity":Z
    move v2, v0

    .end local v0    # "behindFullscreenActivity":Z
    .restart local v2    # "behindFullscreenActivity":Z
    :cond_1a
    :goto_14
    add-int/lit8 v4, v15, -0x1

    .end local v15    # "taskNdx":I
    .local v4, "taskNdx":I
    move v12, v3

    move/from16 v3, v17

    move/from16 v5, v18

    const/4 v0, 0x0

    move-object/from16 v8, p1

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 2133
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v4    # "taskNdx":I
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "stackShouldBeVisible":Z
    .end local v14    # "isTopNotPinnedStack":Z
    .end local v17    # "resumeNextActivity":Z
    .end local v18    # "configChanges":I
    .local v5, "configChanges":I
    :catchall_1
    move-exception v0

    move/from16 v18, v5

    goto :goto_15

    .line 2127
    .restart local v1    # "aboveTop":Z
    .restart local v2    # "behindFullscreenActivity":Z
    .local v3, "resumeNextActivity":Z
    .restart local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "stackShouldBeVisible":Z
    .restart local v14    # "isTopNotPinnedStack":Z
    :cond_1b
    :try_start_3
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1c

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2128
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2130
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2133
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v3    # "resumeNextActivity":Z
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "stackShouldBeVisible":Z
    .end local v14    # "isTopNotPinnedStack":Z
    :cond_1c
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    .line 2134
    nop

    .line 2135
    return-void

    .line 2133
    .end local v5    # "configChanges":I
    .restart local p2    # "configChanges":I
    :catchall_2
    move-exception v0

    move/from16 v18, p2

    .end local p2    # "configChanges":I
    .restart local v18    # "configChanges":I
    :goto_15
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 9
    .param p1, "start"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 5202
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_0

    goto :goto_4

    .line 5206
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 5207
    .local v0, "startTask":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    .line 5208
    .local v1, "behindFullscreen":Z
    const/4 v2, 0x0

    .line 5210
    .local v2, "updatedConfig":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .local v3, "taskIndex":I
    :goto_0
    if-ltz v3, :cond_5

    .line 5211
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5212
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5214
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-ne v6, v4, :cond_1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 5215
    .local v6, "activityIndex":I
    :goto_1
    if-ltz v6, :cond_3

    .line 5216
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 5217
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, p2}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 5219
    iget-boolean v8, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v8, :cond_2

    .line 5220
    const/4 v1, 0x1

    .line 5221
    goto :goto_2

    .line 5215
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 5224
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 5225
    goto :goto_3

    .line 5210
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "activityIndex":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5228
    .end local v3    # "taskIndex":I
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 5231
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5233
    :cond_6
    return-void

    .line 5203
    .end local v0    # "startTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "behindFullscreen":Z
    .end local v2    # "updatedConfig":Z
    :cond_7
    :goto_4
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 5834
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 5835
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5836
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 1247
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1248
    .local v0, "cls":Landroid/content/ComponentName;
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1249
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1251
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1253
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_5

    .line 1254
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 1255
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1257
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_1
    if-ltz v5, :cond_4

    .line 1258
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 1259
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1260
    goto :goto_2

    .line 1262
    :cond_1
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_3

    iget v7, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, v1, :cond_3

    .line 1263
    if-eqz p3, :cond_2

    .line 1264
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1265
    return-object v6

    .line 1268
    :cond_2
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1269
    return-object v6

    .line 1257
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1253
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1276
    .end local v2    # "taskNdx":I
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V
    .locals 20
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1149
    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1150
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1151
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1152
    .local v5, "cls":Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1153
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 1155
    :cond_0
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1156
    .local v6, "userId":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    move v9, v7

    goto :goto_0

    :cond_1
    move v9, v8

    :goto_0
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v10

    and-int/2addr v9, v10

    .line 1158
    .local v9, "isDocument":Z
    if-eqz v9, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 1161
    .local v11, "documentData":Landroid/net/Uri;
    :goto_1
    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .local v12, "taskNdx":I
    :goto_2
    if-ltz v12, :cond_f

    .line 1162
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 1163
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v14, v13, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v14, :cond_4

    .line 1166
    nop

    .line 1161
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    :goto_3
    move v0, v7

    goto/16 :goto_6

    .line 1168
    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    iget v14, v13, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v14, v6, :cond_5

    .line 1171
    goto :goto_3

    .line 1175
    :cond_5
    invoke-virtual {v13, v8}, Lcom/android/server/am/TaskRecord;->getTopActivity(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 1176
    .local v14, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_3

    iget-boolean v15, v14, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v15, :cond_3

    iget v15, v14, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v15, v6, :cond_3

    iget v15, v14, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v10, 0x3

    if-ne v15, v10, :cond_6

    .line 1179
    goto :goto_3

    .line 1181
    :cond_6
    invoke-virtual {v14, v1}, Lcom/android/server/am/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1183
    goto :goto_3

    .line 1186
    :cond_7
    iget-object v10, v13, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1187
    .local v10, "taskIntent":Landroid/content/Intent;
    iget-object v15, v13, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 1190
    .local v15, "affinityIntent":Landroid/content/Intent;
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1191
    const/16 v16, 0x1

    .line 1192
    .local v16, "taskIsDocument":Z
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .local v17, "taskDocumentData":Landroid/net/Uri;
    :goto_4
    goto :goto_5

    .line 1193
    .end local v16    # "taskIsDocument":Z
    .end local v17    # "taskDocumentData":Landroid/net/Uri;
    :cond_8
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Landroid/content/Intent;->isDocument()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1194
    const/16 v16, 0x1

    .line 1195
    .restart local v16    # "taskIsDocument":Z
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    goto :goto_4

    .line 1197
    .end local v16    # "taskIsDocument":Z
    :cond_9
    const/16 v16, 0x0

    .line 1198
    .restart local v16    # "taskIsDocument":Z
    const/16 v17, 0x0

    .restart local v17    # "taskDocumentData":Landroid/net/Uri;
    :goto_5
    move-object/from16 v18, v17

    .line 1206
    .end local v17    # "taskDocumentData":Landroid/net/Uri;
    .local v18, "taskDocumentData":Landroid/net/Uri;
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 1207
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v7

    if-nez v7, :cond_a

    .line 1208
    move-object/from16 v7, v18

    invoke-static {v11, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    .end local v18    # "taskDocumentData":Landroid/net/Uri;
    .local v7, "taskDocumentData":Landroid/net/Uri;
    if-eqz v17, :cond_b

    .line 1213
    iput-object v14, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1214
    iput-boolean v8, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 1215
    goto :goto_7

    .line 1216
    .end local v7    # "taskDocumentData":Landroid/net/Uri;
    .restart local v18    # "taskDocumentData":Landroid/net/Uri;
    :cond_a
    move-object/from16 v7, v18

    .end local v18    # "taskDocumentData":Landroid/net/Uri;
    .restart local v7    # "taskDocumentData":Landroid/net/Uri;
    :cond_b
    if-eqz v15, :cond_d

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_d

    .line 1217
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v8

    if-nez v8, :cond_c

    .line 1218
    invoke-static {v11, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1223
    iput-object v14, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1224
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 1225
    goto :goto_7

    .line 1226
    :cond_c
    const/4 v8, 0x0

    :cond_d
    if-nez v9, :cond_e

    if-nez v16, :cond_e

    iget-object v8, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_e

    iget-object v8, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v8, :cond_e

    .line 1228
    iget-object v8, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1233
    iput-object v14, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1234
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .end local v7    # "taskDocumentData":Landroid/net/Uri;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "affinityIntent":Landroid/content/Intent;
    .end local v16    # "taskIsDocument":Z
    goto :goto_6

    .line 1161
    :cond_e
    const/4 v0, 0x1

    :goto_6
    add-int/lit8 v12, v12, -0x1

    move v7, v0

    move-object/from16 v0, p0

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1238
    .end local v12    # "taskNdx":I
    :cond_f
    :goto_7
    return-void
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4053
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4054
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4054
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4055
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4056
    .local v2, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4057
    goto :goto_1

    .line 4059
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "request-affinity"

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4054
    .end local v2    # "cur":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4061
    .end local v1    # "index":I
    :cond_1
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .line 4101
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .locals 15
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z
    .param p6, "pauseImmediately"    # Z

    .line 4117
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    .line 4117
    iget-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 4118
    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate finish request for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    return v4

    .line 4122
    :cond_0
    const-string/jumbo v0, "recent-task-trimmed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isSystemOrNubiaApp(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4123
    return v4

    .line 4126
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 4128
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4129
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4130
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    const/16 v5, 0x7531

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget v7, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 4132
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const/4 v7, 0x3

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v10, v6, v7

    const/4 v7, 0x4

    aput-object v3, v6, v7

    .line 4130
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4133
    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4134
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 4135
    .local v6, "index":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    .line 4136
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 4137
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v10, 0x80000

    and-int/2addr v7, v10

    if-eqz v7, :cond_2

    .line 4141
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 4142
    .local v7, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4146
    .end local v7    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 4148
    const-string v7, "finishActivity"

    invoke-direct {v1, v2, v7}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4150
    invoke-direct/range {p0 .. p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4152
    if-gtz v6, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isClearingToReuseTask()Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    move v7, v4

    .line 4153
    .local v7, "endTask":Z
    :goto_0
    if-eqz v7, :cond_4

    const/16 v10, 0x9

    goto :goto_1

    :cond_4
    const/4 v10, 0x7

    .line 4154
    .local v10, "transit":I
    :goto_1
    iget-object v11, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v11, v2, :cond_7

    .line 4157
    if-eqz v7, :cond_5

    .line 4158
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v9, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskRemovalStarted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4161
    :cond_5
    :try_start_1
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v10, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4164
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4166
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_6

    .line 4170
    const/4 v8, 0x0

    move/from16 v11, p6

    :try_start_2
    invoke-virtual {v1, v4, v4, v8, v11}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    goto :goto_2

    .line 4173
    :cond_6
    move/from16 v11, p6

    :goto_2
    if-eqz v7, :cond_e

    .line 4174
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    goto :goto_6

    .line 4211
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "index":I
    .end local v7    # "endTask":Z
    .end local v10    # "transit":I
    :catchall_0
    move-exception v0

    move/from16 v11, p6

    goto :goto_7

    .line 4176
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "index":I
    .restart local v7    # "endTask":Z
    .restart local v10    # "transit":I
    :cond_7
    move/from16 v11, p6

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v12}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 4180
    iget-boolean v12, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v12, :cond_8

    .line 4181
    invoke-direct {v1, v2, v10}, Lcom/android/server/am/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V

    .line 4184
    :cond_8
    iget-boolean v12, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v12, :cond_a

    iget-boolean v12, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v12, :cond_9

    goto :goto_3

    .line 4185
    :cond_9
    move v9, v8

    goto :goto_4

    .line 4184
    :cond_a
    :goto_3
    nop

    .line 4185
    :goto_4
    nop

    .line 4186
    .local v9, "finishMode":I
    const-string v12, "finishActivityLocked"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v13, p5

    :try_start_3
    invoke-virtual {v1, v2, v9, v13, v12}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_b

    move v4, v8

    nop

    .line 4196
    .local v4, "removedActivity":Z
    :cond_b
    invoke-virtual {v0, v8}, Lcom/android/server/am/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 4197
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    .line 4198
    .local v12, "taskOverlay":Lcom/android/server/am/ActivityRecord;
    iget-boolean v14, v12, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v14, :cond_c

    .line 4199
    goto :goto_5

    .line 4201
    :cond_c
    invoke-direct {v1, v12, v10}, Lcom/android/server/am/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4202
    .end local v12    # "taskOverlay":Lcom/android/server/am/ActivityRecord;
    goto :goto_5

    .line 4204
    :cond_d
    nop

    .line 4211
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4204
    return v4

    .line 4211
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "removedActivity":Z
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "index":I
    .end local v7    # "endTask":Z
    .end local v9    # "finishMode":I
    .end local v10    # "transit":I
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 4209
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "index":I
    .restart local v7    # "endTask":Z
    .restart local v10    # "transit":I
    :cond_e
    :goto_6
    move/from16 v13, p5

    .line 4211
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4209
    return v4

    .line 4211
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "index":I
    .end local v7    # "endTask":Z
    .end local v10    # "transit":I
    :catchall_2
    move-exception v0

    :goto_7
    move/from16 v13, p5

    goto :goto_8

    :catchall_3
    move-exception v0

    move/from16 v13, p5

    move/from16 v11, p6

    :goto_8
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 8
    .param p1, "immediately"    # Z

    .line 4315
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    .line 4316
    .local v0, "noActivitiesInStack":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4317
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4318
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 4319
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4320
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    .line 4321
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    .line 4322
    goto :goto_2

    .line 4324
    :cond_0
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    const-string v5, "finishAllActivitiesLocked"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v6, v5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 4318
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4316
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4329
    .end local v1    # "taskNdx":I
    :cond_2
    if-eqz v0, :cond_3

    .line 4330
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->remove()V

    .line 4332
    :cond_3
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 4237
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4240
    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_5

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_0

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_5

    :cond_0
    if-eqz v0, :cond_5

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v4, :cond_5

    .line 4242
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4243
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4248
    :cond_1
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-eqz v2, :cond_3

    .line 4249
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4250
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    if-ne v4, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-static {v2, v1, v3}, Lcom/android/server/am/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 4253
    :cond_3
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v2, "finishCurrentActivityLocked"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4254
    if-eqz p3, :cond_4

    .line 4255
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4258
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->releasePerfLockHandlerIfNeeded()V

    .line 4260
    return-object p1

    .line 4264
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4265
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4266
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4267
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v4

    .line 4270
    .local v4, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v5, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eqz v5, :cond_7

    .line 4271
    sget-object v5, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4272
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v6

    if-ne v6, v1, :cond_6

    move v6, v1

    goto :goto_1

    :cond_6
    move v6, v3

    :goto_1
    invoke-static {v5, v6, v3}, Lcom/android/server/am/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 4275
    :cond_7
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "finishCurrentActivityLocked"

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4276
    nop

    .line 4277
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eq v5, v6, :cond_8

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_8

    if-ne p2, v2, :cond_8

    move v2, v1

    goto :goto_2

    :cond_8
    move v2, v3

    .line 4280
    .local v2, "finishingActivityInNonFocusedStack":Z
    :goto_2
    if-eqz p2, :cond_b

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_9

    if-eq p2, v1, :cond_b

    .line 4282
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v5

    if-nez v5, :cond_b

    :cond_9
    if-nez v2, :cond_b

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_b

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_b

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_a

    goto :goto_3

    .line 4308
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4309
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4310
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4311
    return-object p1

    .line 4287
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish-imm:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v1, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v5

    .line 4290
    .local v5, "activityRemoved":Z
    if-eqz v2, :cond_c

    .line 4293
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v6, v0, v7, v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z

    .line 4296
    :cond_c
    if-eqz v5, :cond_d

    .line 4297
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4302
    :cond_d
    if-eqz v5, :cond_e

    const/4 v1, 0x0

    goto :goto_4

    :cond_e
    move-object v1, p1

    :goto_4
    return-object v1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 18
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

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 5364
    move/from16 v9, p5

    const/4 v0, 0x0

    .line 5365
    .local v0, "didSomething":Z
    const/4 v1, 0x0

    .line 5366
    .local v1, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    .line 5367
    .local v2, "homeActivity":Landroid/content/ComponentName;
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    .local v3, "taskNdx":I
    :goto_0
    move v11, v3

    .end local v3    # "taskNdx":I
    .local v11, "taskNdx":I
    if-ltz v11, :cond_e

    .line 5368
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v12, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5369
    .local v12, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5370
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5372
    :goto_1
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 5373
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 5374
    .local v13, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5375
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v8, :cond_1

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5376
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez v7, :cond_2

    iget v3, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v9, :cond_2

    :cond_1
    move v4, v10

    nop

    :cond_2
    move v14, v4

    .line 5378
    .local v14, "sameComponent":Z
    const/4 v3, -0x1

    if-eq v9, v3, :cond_3

    iget v3, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v9, :cond_c

    :cond_3
    if-nez v14, :cond_4

    .line 5379
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v3, v1, :cond_c

    :cond_4
    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5

    if-nez p4, :cond_5

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v3, :cond_c

    .line 5381
    :cond_5
    if-nez p3, :cond_7

    .line 5382
    iget-boolean v3, v13, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_6

    .line 5385
    goto :goto_1

    .line 5387
    :cond_6
    return v10

    .line 5389
    :cond_7
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5390
    if-eqz v2, :cond_8

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5391
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip force-stop again "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5392
    goto :goto_1

    .line 5394
    :cond_8
    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5397
    .end local v2    # "homeActivity":Landroid/content/ComponentName;
    .local v15, "homeActivity":Landroid/content/ComponentName;
    :cond_9
    move-object v15, v2

    const/16 v16, 0x1

    .line 5398
    .end local v0    # "didSomething":Z
    .local v16, "didSomething":Z
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Force finishing activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    if-eqz v14, :cond_b

    .line 5400
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a

    .line 5401
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 5403
    :cond_a
    const/4 v0, 0x0

    iput-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5405
    :cond_b
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v17

    .line 5406
    .end local v1    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v17, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "force-stop"

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5409
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "sameComponent":Z
    move-object v2, v15

    move/from16 v0, v16

    move-object/from16 v1, v17

    .end local v15    # "homeActivity":Landroid/content/ComponentName;
    .end local v16    # "didSomething":Z
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v0    # "didSomething":Z
    .restart local v1    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "homeActivity":Landroid/content/ComponentName;
    :cond_c
    goto/16 :goto_1

    .line 5367
    .end local v12    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_d
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "taskNdx":I
    .restart local v3    # "taskNdx":I
    goto/16 :goto_0

    .line 5411
    .end local v3    # "taskNdx":I
    :cond_e
    return v0
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 10
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 3938
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3938
    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 3939
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3940
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 3940
    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 3941
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3942
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_2

    iget v4, v3, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v4, p3, :cond_2

    .line 3943
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v4, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 3944
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3945
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "request-sub"

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3940
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3938
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3951
    .end local v0    # "taskNdx":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3952
    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3963
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 3964
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    .line 3965
    .local v0, "finishedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_8

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v1, p1, :cond_0

    goto/16 :goto_3

    .line 3968
    :cond_0
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Force finishing activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3969
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3968
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 3971
    .end local v0    # "finishedTask":Lcom/android/server/am/TaskRecord;
    .local v7, "finishedTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 3972
    .local v8, "taskNdx":I
    move-object v9, v7

    .line 3973
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 3974
    .local v10, "activityNdx":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3976
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3977
    nop

    .line 3981
    add-int/lit8 v10, v10, -0x1

    .line 3982
    if-gez v10, :cond_3

    .line 3984
    :cond_1
    add-int/lit8 v8, v8, -0x1

    .line 3985
    if-gez v8, :cond_2

    .line 3986
    goto :goto_0

    .line 3988
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 3989
    if-ltz v10, :cond_1

    .line 3991
    :cond_3
    :goto_0
    if-ltz v10, :cond_7

    .line 3994
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 3995
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v10, v0, :cond_4

    goto :goto_1

    .line 4000
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4001
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4002
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_7

    .line 4003
    :cond_5
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4004
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4003
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_2

    .line 3996
    :cond_6
    :goto_1
    return-object v7

    .line 4009
    :cond_7
    :goto_2
    return-object v7

    .line 3966
    .end local v7    # "finishedTask":Lcom/android/server/am/TaskRecord;
    .end local v8    # "taskNdx":I
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "activityNdx":I
    .restart local v0    # "finishedTask":Lcom/android/server/am/TaskRecord;
    :cond_8
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 12
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 4013
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4014
    .local v0, "sessionBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 4015
    .local v1, "didOne":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 4016
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 4017
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v4}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 4018
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_3

    .line 4019
    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4020
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_0

    .line 4021
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "finish-voice"

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4023
    const/4 v1, 0x1

    .line 4018
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4028
    .end local v4    # "activityNdx":I
    :cond_1
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "activityNdx":I
    :goto_2
    if-ltz v4, :cond_3

    .line 4029
    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4030
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 4031
    invoke-interface {v6}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_2

    .line 4033
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->clearVoiceSessionLocked()V

    .line 4035
    :try_start_0
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4039
    goto :goto_3

    .line 4037
    :catch_0
    move-exception v6

    .line 4040
    :goto_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->finishRunningVoiceLocked()V

    .line 4041
    goto :goto_4

    .line 4028
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 4015
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v4    # "activityNdx":I
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4047
    .end local v2    # "taskNdx":I
    :cond_4
    if-eqz v1, :cond_5

    .line 4048
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4050
    :cond_5
    return-void
.end method

.method getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "suggestedPosition"    # I
    .param p3, "starting"    # Lcom/android/server/am/ActivityRecord;

    .line 3182
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3183
    .local v0, "maxPosition":I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p3, :cond_2

    .line 3184
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->okToShowLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3186
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 3190
    :cond_2
    :goto_0
    if-lez v0, :cond_4

    .line 3191
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 3192
    .local v1, "tmpTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3193
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_3

    .line 3194
    goto :goto_1

    .line 3196
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 3197
    .end local v1    # "tmpTask":Lcom/android/server/am/TaskRecord;
    goto :goto_0

    .line 3199
    :cond_4
    :goto_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 878
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 879
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 880
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 879
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 882
    .end local v0    # "taskNdx":I
    :cond_0
    return-void
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 5703
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getBottomTaskTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .line 961
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 962
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 963
    const/4 v1, 0x0

    return-object v1

    .line 965
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 803
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackWindowController;->getBoundsForNewConfiguration(Landroid/graphics/Rect;)V

    .line 804
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 1
    .param p1, "index"    # I

    .line 242
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ConfigurationContainer;

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .line 237
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDisplay()Lcom/android/server/am/ActivityDisplay;
    .locals 2

    .line 778
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 5556
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5558
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5559
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5559
    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_5

    .line 5560
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5559
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5562
    .end local v1    # "taskNdx":I
    :cond_0
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5563
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5564
    .local v1, "top":I
    if-ltz v1, :cond_1

    .line 5565
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5566
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 5567
    .local v3, "listTop":I
    if-ltz v3, :cond_1

    .line 5568
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5571
    .end local v1    # "top":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "listTop":I
    :cond_1
    goto :goto_3

    .line 5572
    :cond_2
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 5573
    .local v1, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 5575
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5575
    .local v2, "taskNdx":I
    :goto_1
    if-ltz v2, :cond_5

    .line 5576
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5577
    .local v4, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5578
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5580
    .end local v4    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_3
    goto :goto_2

    .line 5575
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5584
    .end local v1    # "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .end local v2    # "taskNdx":I
    :cond_5
    :goto_3
    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 247
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getPresentUIDs(Landroid/util/IntArray;)V
    .locals 5
    .param p1, "presentUIDs"    # Landroid/util/IntArray;

    .line 1031
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1032
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1033
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1034
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_1

    .line 1035
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    goto :goto_0

    .line 1036
    :cond_1
    return-void
.end method

.method protected getResumedActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 2573
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method getRunningTasks(Ljava/util/List;IIIZ)V
    .locals 6
    .param p2, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p3, "ignoreWindowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p4, "callingUid"    # I
    .param p5, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/TaskRecord;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 5421
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "tasksOut":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5422
    .local v0, "focusedStack":Z
    :goto_0
    const/4 v2, 0x1

    .line 5423
    .local v2, "topTask":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "taskNdx":I
    :goto_1
    move v1, v3

    .end local v3    # "taskNdx":I
    .local v1, "taskNdx":I
    if-ltz v1, :cond_6

    .line 5424
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 5425
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5427
    goto :goto_2

    .line 5429
    :cond_1
    if-nez p5, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v4, p4, :cond_2

    .line 5431
    goto :goto_2

    .line 5433
    :cond_2
    if-eqz p2, :cond_3

    .line 5434
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 5436
    goto :goto_2

    .line 5438
    :cond_3
    if-eqz p3, :cond_4

    .line 5439
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v4

    if-ne v4, p3, :cond_4

    .line 5441
    goto :goto_2

    .line 5443
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 5447
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 5448
    const/4 v2, 0x0

    .line 5450
    :cond_5
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5423
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "taskNdx":I
    .local v3, "taskNdx":I
    goto :goto_1

    .line 5452
    .end local v3    # "taskNdx":I
    :cond_6
    return-void
.end method

.method getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1, "currentTempTaskBounds"    # Landroid/graphics/Rect;
    .param p2, "outStackBounds"    # Landroid/graphics/Rect;
    .param p3, "outTempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "ignoreVisibility"    # Z

    .line 786
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/StackWindowController;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 788
    return-void
.end method

.method public getStackId()I
    .locals 1

    .line 5813
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 2

    .line 950
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 951
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 952
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    .line 953
    return-object v1

    .line 950
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 956
    .end local v0    # "taskNdx":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 2178
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 795
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackWindowController;->getBounds(Landroid/graphics/Rect;)V

    .line 797
    return-void

    .line 799
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 800
    return-void
.end method

.method getWindowContainerController()Lcom/android/server/wm/StackWindowController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 496
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    return-object v0
.end method

.method goToSleep()V
    .locals 9

    .line 1414
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1419
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1420
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1421
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1422
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1423
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1424
    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1421
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1419
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1428
    .end local v0    # "taskNdx":I
    :cond_2
    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .locals 4
    .param p1, "shuttingDown"    # Z

    .line 1371
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    .line 1373
    .local v0, "shouldSleep":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_0

    .line 1379
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    .line 1380
    const/4 v0, 0x0

    goto :goto_0

    .line 1381
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_1

    .line 1384
    const/4 v0, 0x0

    .line 1387
    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 1388
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1393
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 1394
    const/4 v0, 0x0

    .line 1397
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1401
    const/4 v0, 0x0

    .line 1405
    :cond_3
    if-eqz v0, :cond_4

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 1409
    :cond_4
    return v0
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5502
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 5504
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 5505
    goto :goto_3

    .line 5508
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5509
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 5511
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 5512
    goto :goto_2

    .line 5515
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5516
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_2

    .line 5517
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force finishing activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5518
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5517
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5520
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5521
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5523
    const-string v4, "handleAppCrashedLocked"

    invoke-virtual {p0, v3, v6, v6, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 5509
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5502
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5528
    .end local v0    # "taskNdx":I
    :cond_4
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5473
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_0

    .line 5476
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 5478
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_1

    .line 5479
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5480
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 5483
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_2

    .line 5484
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5485
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5486
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5484
    invoke-static {v0, v1, v2, v3}, Landroid/os/BSPApplicationManager$Trigger;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 5491
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_3

    .line 5492
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5493
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5494
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5492
    invoke-static {v0, v1, v2, v3}, Lnubia/os/ApplicationManager$Trigger;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 5498
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method inFrontOfStandardStack()Z
    .locals 4

    .line 4336
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 4337
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4338
    return v1

    .line 4340
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v2

    .line 4341
    .local v2, "index":I
    if-nez v2, :cond_1

    .line 4342
    return v1

    .line 4344
    :cond_1
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 4345
    .local v1, "stackBehind":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandard()Z

    move-result v3

    return v3
.end method

.method final isAttached()Z
    .locals 1

    .line 1141
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompatible(II)Z
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 700
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-nez p2, :cond_0

    .line 703
    const/4 p2, 0x1

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 706
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    if-nez p1, :cond_1

    .line 710
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result p1

    .line 712
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    move-result v1

    return v1
.end method

.method isFocusable()Z
    .locals 3

    .line 1136
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1137
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v1

    return v1
.end method

.method final isHomeOrRecentsStack()Z
    .locals 1

    .line 1051
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 995
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 996
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1000
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1001
    return-object v0

    .line 1003
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1004
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1005
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1006
    if-eq v2, p0, :cond_1

    const-string v0, "ActivityManager"

    const-string v3, "Illegal state! task does not point to stack it is in."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_1
    return-object p1

    .line 1010
    :cond_2
    return-object v0
.end method

.method isInStackLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1014
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final isOnHomeDisplay()Z
    .locals 1

    .line 1055
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z
    .locals 7
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1825
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_6

    .line 1829
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1830
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1831
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_5

    .line 1832
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1834
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    .line 1837
    goto :goto_2

    .line 1840
    :cond_1
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v6, :cond_2

    if-eq v5, p1, :cond_2

    .line 1843
    goto :goto_2

    .line 1857
    :cond_2
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v6, :cond_4

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->hasWallpaper:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeRecents()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    .line 1831
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1862
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_3
    const/4 v1, 0x0

    return v1

    .line 1828
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1866
    .end local v0    # "taskNdx":I
    :cond_6
    return v1

    .line 1826
    :cond_7
    :goto_4
    return v1
.end method

.method isTopActivityVisible()Z
    .locals 2

    .line 1874
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1875
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTopStackOnDisplay()Z
    .locals 1

    .line 1870
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->isTopStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    return v0
.end method

.method isUidPresent(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 1019
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1020
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1021
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1022
    const/4 v0, 0x1

    return v0

    .line 1024
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    goto :goto_1

    .line 1025
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    goto :goto_0

    .line 1026
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1309
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V

    .line 1313
    return-void
.end method

.method moveHomeStackTaskToTop()V
    .locals 4

    .line 4990
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4994
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 4995
    .local v0, "top":I
    if-ltz v0, :cond_0

    .line 4996
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 4999
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5000
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5001
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5003
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    return-void

    .line 4991
    .end local v0    # "top":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling moveHomeStackTaskToTop() on non-home stack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 8
    .param p1, "taskId"    # I

    .line 5125
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 5126
    .local v0, "tr":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5127
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTaskToBack: bad taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    return v1

    .line 5130
    :cond_0
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTaskToBack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/LockTaskController;->canMoveTaskToBack(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5135
    return v1

    .line 5141
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v2, :cond_3

    .line 5142
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 5143
    .local v4, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v4, :cond_2

    .line 5144
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 5146
    :cond_2
    if-eqz v4, :cond_3

    .line 5148
    move v5, v3

    .line 5150
    .local v5, "moveOK":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 5154
    goto :goto_0

    .line 5151
    :catch_0
    move-exception v6

    .line 5152
    .local v6, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 5153
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 5155
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v5, :cond_3

    .line 5156
    return v1

    .line 5163
    .end local v4    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "moveOK":Z
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5164
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5165
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5167
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5168
    const-string/jumbo v1, "moveTaskToBackLocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 5170
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5171
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeStack(Lcom/android/server/am/ActivityStack;)V

    .line 5172
    return v3

    .line 5175
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5176
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 5177
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_5

    .line 5178
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5179
    return v3

    .line 5184
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5185
    return v3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 16
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 5014
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5015
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .local v0, "topStack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    .line 5017
    .end local v0    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .restart local v0    # "topStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    move-object v5, v0

    .line 5020
    .end local v0    # "topStack":Lcom/android/server/am/ActivityStack;
    .local v5, "topStack":Lcom/android/server/am/ActivityStack;
    const/4 v0, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v0

    .line 5021
    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_1
    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 5022
    .local v7, "numTasks":I
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 5023
    .local v8, "index":I
    const/16 v9, 0xa

    if-eqz v7, :cond_f

    if-gez v8, :cond_2

    goto/16 :goto_7

    .line 5033
    :cond_2
    const/4 v10, 0x1

    if-eqz v4, :cond_3

    .line 5035
    iget-object v11, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v10

    .local v11, "i":I
    :goto_2
    if-ltz v11, :cond_3

    .line 5036
    iget-object v12, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iput-object v4, v12, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5035
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 5044
    .end local v11    # "i":I
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityDisplay;->deferUpdateImeTarget()V

    .line 5048
    invoke-direct {v1, v2, v0}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 5051
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 5052
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v12

    if-nez v12, :cond_4

    goto/16 :goto_4

    .line 5061
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 5062
    .local v12, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v13, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p5

    :try_start_1
    invoke-virtual {v13, v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 5065
    const/4 v13, 0x0

    if-eqz p2, :cond_6

    .line 5066
    iget-object v9, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v13, v13}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5067
    if-eqz v12, :cond_5

    .line 5068
    iget-object v9, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5070
    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_3

    .line 5072
    :cond_6
    invoke-direct {v1, v9, v3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 5080
    :goto_3
    invoke-direct {v1, v6, v2, v0, v3}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5082
    iput-boolean v10, v6, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 5086
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAppLockerOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5087
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityLockHelper:Lcom/android/server/am/ActivityLockHelper;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityLockHelper;->setCallFromMoveToTaskFront(Z)V

    .line 5092
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAppTimeLockerOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5093
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTimeLockHelper:Lcom/android/server/am/ActivityTimeLockHelper;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityTimeLockHelper;->setCallFromMoveToTaskFront(Z)V

    .line 5097
    :cond_9
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5098
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget v0, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v13

    iget v0, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v10

    const/16 v0, 0x7532

    invoke-static {v0, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5100
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v9, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v9}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskMovedToFront(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5106
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    .line 5111
    :cond_a
    return-void

    .line 5053
    .restart local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_b
    :goto_4
    move-object/from16 v14, p5

    if-eqz v11, :cond_c

    .line 5054
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    goto :goto_5

    .line 5106
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 5056
    .restart local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_c
    :goto_5
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5106
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 5107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    .line 5057
    :cond_d
    return-void

    .line 5106
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :catchall_1
    move-exception v0

    move-object/from16 v14, p5

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 5107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    :cond_e
    throw v0

    .line 5025
    :cond_f
    :goto_7
    move-object/from16 v14, p5

    if-eqz p2, :cond_10

    .line 5026
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_8

    .line 5028
    :cond_10
    invoke-direct {v1, v9, v3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 5030
    :goto_8
    return-void
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1115
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    return-void

    .line 1123
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 1127
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    .line 1128
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 1129
    if-eqz p2, :cond_2

    .line 1130
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStack;->insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V

    .line 1131
    return-void

    .line 1133
    :cond_2
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1065
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 1066
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1073
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    return-void

    .line 1077
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 1079
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1085
    const/4 v1, 0x1

    .line 1086
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1087
    .local v1, "topFullScreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_1

    .line 1088
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1089
    .local v2, "primarySplitScreenStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v3

    .line 1090
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 1091
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " splitScreenToTop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1096
    .end local v1    # "topFullScreenStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "primarySplitScreenStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->returnsToHomeStack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1099
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1102
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtTop(Lcom/android/server/am/ActivityStack;)V

    .line 1103
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 1104
    if-eqz p2, :cond_3

    .line 1105
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1106
    return-void

    .line 1108
    :cond_3
    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZZLjava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "moveToFront"    # Z
    .param p3, "setResume"    # Z
    .param p4, "setPause"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5791
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-nez p2, :cond_0

    .line 5792
    return-void

    .line 5798
    :cond_0
    if-eqz p3, :cond_1

    .line 5799
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v1, "moveToFrontAndResumeStateIfNeeded"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5800
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5803
    :cond_1
    if-eqz p4, :cond_2

    .line 5804
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 5805
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V

    .line 5809
    :cond_2
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 5810
    return-void
.end method

.method final navigateUpToLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 26
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .line 4383
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 4383
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    .line 4384
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    iget-object v11, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4385
    .local v11, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 4386
    .local v12, "start":I
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_a

    if-gez v12, :cond_0

    goto/16 :goto_9

    .line 4389
    :cond_0
    add-int/lit8 v0, v12, -0x1

    .line 4390
    .local v0, "finishTo":I
    const/4 v1, 0x0

    if-gez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4391
    .local v2, "parent":Lcom/android/server/am/ActivityRecord;
    :goto_0
    const/4 v3, 0x0

    .line 4392
    .local v3, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 4393
    .local v14, "dest":Landroid/content/ComponentName;
    if-lez v12, :cond_3

    if-eqz v14, :cond_3

    .line 4394
    move v4, v0

    .line 4394
    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 4395
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4396
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4397
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4398
    move v0, v4

    .line 4399
    move-object v2, v5

    .line 4400
    const/4 v3, 0x1

    .line 4401
    goto :goto_2

    .line 4394
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4406
    .end local v0    # "finishTo":I
    .end local v2    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "foundParentInTask":Z
    .end local v4    # "i":I
    .local v6, "finishTo":I
    .local v15, "parent":Lcom/android/server/am/ActivityRecord;
    .local v16, "foundParentInTask":Z
    :cond_3
    :goto_2
    move v6, v0

    move-object v15, v2

    move/from16 v16, v3

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4407
    .local v5, "controller":Landroid/app/IActivityController;
    const/4 v4, 0x1

    if-eqz v5, :cond_4

    .line 4408
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v0, v13}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4409
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_4

    .line 4411
    move v3, v4

    .line 4413
    .local v3, "resumeOK":Z
    :try_start_0
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 4417
    goto :goto_3

    .line 4414
    :catch_0
    move-exception v0

    .line 4415
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4416
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 4419
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    if-nez v3, :cond_4

    .line 4420
    return v13

    .line 4424
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "resumeOK":Z
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4425
    .local v3, "origId":J
    move/from16 v18, p3

    move-object/from16 v19, p4

    move v0, v12

    .line 4425
    .end local p3    # "resultCode":I
    .end local p4    # "resultData":Landroid/content/Intent;
    .local v0, "i":I
    .local v18, "resultCode":I
    .local v19, "resultData":Landroid/content/Intent;
    :goto_4
    if-le v0, v6, :cond_5

    .line 4426
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4427
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v20, "navigate-up"

    const/16 v21, 0x1

    move-object/from16 v22, v1

    move-object v1, v7

    move-object/from16 v23, v2

    move-object/from16 v2, v22

    .line 4427
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .local v23, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v24, v14

    move-wide v13, v3

    move/from16 v3, v18

    .line 4427
    .end local v3    # "origId":J
    .end local v14    # "dest":Landroid/content/ComponentName;
    .local v13, "origId":J
    .local v24, "dest":Landroid/content/ComponentName;
    move-object/from16 v4, v19

    move-object/from16 v17, v5

    move-object/from16 v5, v20

    .line 4427
    .end local v5    # "controller":Landroid/app/IActivityController;
    .local v17, "controller":Landroid/app/IActivityController;
    move/from16 v20, v6

    move/from16 v6, v21

    .line 4427
    .end local v6    # "finishTo":I
    .local v20, "finishTo":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4429
    const/16 v18, 0x0

    .line 4430
    const/16 v19, 0x0

    .line 4425
    .end local v23    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    move-wide v3, v13

    move-object/from16 v5, v17

    move/from16 v6, v20

    move-object/from16 v14, v24

    const/4 v13, 0x0

    goto :goto_4

    .line 4433
    .end local v0    # "i":I
    .end local v13    # "origId":J
    .end local v17    # "controller":Landroid/app/IActivityController;
    .end local v20    # "finishTo":I
    .end local v24    # "dest":Landroid/content/ComponentName;
    .restart local v3    # "origId":J
    .restart local v5    # "controller":Landroid/app/IActivityController;
    .restart local v6    # "finishTo":I
    .restart local v14    # "dest":Landroid/content/ComponentName;
    :cond_5
    move-object/from16 v17, v5

    move/from16 v20, v6

    move-object/from16 v24, v14

    move-wide v13, v3

    .line 4433
    .end local v3    # "origId":J
    .end local v5    # "controller":Landroid/app/IActivityController;
    .end local v6    # "finishTo":I
    .end local v14    # "dest":Landroid/content/ComponentName;
    .restart local v13    # "origId":J
    .restart local v17    # "controller":Landroid/app/IActivityController;
    .restart local v20    # "finishTo":I
    .restart local v24    # "dest":Landroid/content/ComponentName;
    if-eqz v15, :cond_9

    if-eqz v16, :cond_9

    .line 4434
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4435
    .local v6, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v21

    .line 4436
    .local v21, "destIntentFlags":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_8

    const/4 v0, 0x2

    if-eq v6, v0, :cond_8

    const/4 v1, 0x1

    if-eq v6, v1, :cond_8

    const/high16 v0, 0x4000000

    and-int v0, v21, v0

    if-eqz v0, :cond_6

    .line 4440
    move/from16 v22, v6

    goto/16 :goto_7

    .line 4444
    :cond_6
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4445
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x400

    iget v4, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4444
    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 4448
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v2

    const-string/jumbo v3, "navigateUpTo"

    .line 4449
    invoke-virtual {v2, v9, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 4450
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4451
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 4452
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4453
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget v4, v15, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 4454
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 4455
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4456
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 4457
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4458
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4459
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4460
    .local v2, "res":I
    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    move v0, v1

    .line 4463
    .end local v2    # "res":I
    .end local v16    # "foundParentInTask":Z
    .local v0, "foundParentInTask":Z
    goto :goto_6

    .line 4461
    .end local v0    # "foundParentInTask":Z
    .restart local v16    # "foundParentInTask":Z
    :catch_1
    move-exception v0

    .line 4462
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 4464
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6
    move/from16 v16, v0

    iget-object v2, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v5, "navigate-top"

    const/4 v0, 0x1

    move-object v1, v7

    move/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v22, v6

    move v6, v0

    .end local v6    # "parentLaunchMode":I
    .local v22, "parentLaunchMode":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4464
    .end local v21    # "destIntentFlags":I
    .end local v22    # "parentLaunchMode":I
    goto :goto_8

    .line 4440
    .restart local v6    # "parentLaunchMode":I
    .restart local v21    # "destIntentFlags":I
    :cond_8
    move/from16 v22, v6

    .line 4440
    .end local v6    # "parentLaunchMode":I
    .restart local v22    # "parentLaunchMode":I
    :goto_7
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0, v9, v1}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4468
    .end local v21    # "destIntentFlags":I
    .end local v22    # "parentLaunchMode":I
    :cond_9
    :goto_8
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4469
    return v16

    .line 4387
    .end local v13    # "origId":J
    .end local v15    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "foundParentInTask":Z
    .end local v17    # "controller":Landroid/app/IActivityController;
    .end local v18    # "resultCode":I
    .end local v19    # "resultData":Landroid/content/Intent;
    .end local v20    # "finishTo":I
    .end local v24    # "dest":Landroid/content/ComponentName;
    .restart local p3    # "resultCode":I
    .restart local p4    # "resultData":Landroid/content/Intent;
    :cond_a
    :goto_9
    const/4 v1, 0x0

    return v1
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2388
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2389
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2390
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2393
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2394
    .local v0, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2395
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2396
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2398
    if-eqz v0, :cond_2

    .line 2399
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 2400
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_2

    .line 2402
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2405
    goto :goto_0

    .line 2404
    :catch_0
    move-exception v1

    .line 2409
    .end local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-void
.end method

.method numActivities()I
    .locals 3

    .line 464
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .line 465
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 466
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 465
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 468
    .end local v1    # "taskNdx":I
    :cond_0
    return v0
.end method

.method onActivityAddedToStack(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4488
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_0

    .line 4489
    const-string/jumbo v0, "onActivityAddedToStack"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4491
    :cond_0
    return-void
.end method

.method onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4477
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4479
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_0

    .line 4480
    const-string/jumbo v0, "onActivityRemovedFromStack"

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4482
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_1

    .line 4483
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 4485
    :cond_1
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 508
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_0

    .line 509
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - onActivityStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 512
    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_1

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - onActivityStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/ActivityManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 519
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 523
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 524
    .local v0, "prevWindowingMode":I
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    .line 526
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 527
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityDisplay;->onStackWindowingModeChanged(Lcom/android/server/am/ActivityStack;)V

    .line 530
    :cond_0
    sget-boolean v2, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeProp:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/policy/SingleModeCtrl;->mSingleModeByPress:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplyInfoTop()I

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 532
    const-string/jumbo v2, "onConfigurationChanged"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOrientation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->setOverscan(IIIII)V

    .line 537
    :cond_2
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .locals 2

    .line 5828
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5829
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 5828
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5831
    .end local v0    # "taskNdx":I
    :cond_0
    return-void
.end method

.method protected onParentChanged()V
    .locals 1

    .line 252
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 253
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    .line 254
    return-void
.end method

.method onPipAnimationEndResize()V
    .locals 1

    .line 5285
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->onPipAnimationEndResize()V

    .line 5286
    return-void
.end method

.method positionChildAt(Lcom/android/server/am/TaskRecord;I)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "index"    # I

    .line 5735
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 5740
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V

    .line 5742
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5743
    .local v0, "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5744
    .local v1, "wasResumed":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V

    .line 5745
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5746
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 5748
    if-eqz v1, :cond_2

    .line 5749
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    .line 5750
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " other mResumedActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5754
    :cond_1
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v5, "positionChildAt"

    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5759
    :cond_2
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5760
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5761
    return-void

    .line 5736
    .end local v0    # "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "wasResumed":Z
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AS.positionChildAt: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5737
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/am/TaskRecord;

    .line 807
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 809
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 1

    .line 791
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->prepareFreezingTaskBounds()V

    .line 792
    return-void
.end method

.method final rankTaskLayers(I)I
    .locals 5
    .param p1, "baseLayer"    # I

    .line 1972
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .line 1973
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1974
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1975
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1976
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_0

    goto :goto_1

    .line 1979
    :cond_0
    add-int/lit8 v4, v0, 0x1

    .local v4, "layer":I
    add-int/2addr v0, p1

    .end local v0    # "layer":I
    iput v0, v2, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 1973
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    move v0, v4

    goto :goto_2

    .line 1977
    .end local v4    # "layer":I
    .restart local v0    # "layer":I
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 1973
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1982
    .end local v1    # "taskNdx":I
    :cond_2
    return v0
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 4672
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4673
    .local v0, "maxTasks":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 4674
    const/4 v0, 0x1

    .line 4676
    :cond_0
    const/4 v2, 0x0

    .line 4677
    .local v2, "numReleased":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v0

    move v0, v3

    .local v0, "taskNdx":I
    .local v2, "maxTasks":I
    .local v4, "numReleased":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    if-lez v2, :cond_6

    .line 4678
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 4679
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4680
    goto :goto_2

    .line 4683
    :cond_1
    const/4 v6, 0x0

    .line 4684
    .local v6, "curNum":I
    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4685
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move v8, v6

    move v6, v3

    .local v6, "actNdx":I
    .local v8, "curNum":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_4

    .line 4686
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 4687
    .local v9, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, p1, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4691
    invoke-virtual {p0, v9, v1, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 4692
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v9, :cond_2

    .line 4694
    add-int/lit8 v6, v6, -0x1

    .line 4696
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 4685
    .end local v9    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/2addr v6, v1

    goto :goto_1

    .line 4699
    .end local v6    # "actNdx":I
    :cond_4
    if-lez v8, :cond_5

    .line 4700
    add-int/2addr v4, v8

    .line 4701
    add-int/lit8 v2, v2, -0x1

    .line 4702
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_5

    .line 4704
    add-int/lit8 v0, v0, -0x1

    .line 4677
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "curNum":I
    :cond_5
    :goto_2
    add-int/2addr v0, v1

    goto :goto_0

    .line 4710
    .end local v0    # "taskNdx":I
    :cond_6
    return v4
.end method

.method remove()V
    .locals 1

    .line 766
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->removeFromDisplay()V

    .line 772
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->removeContainer()V

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 774
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->onParentChanged()V

    .line 775
    return-void
.end method

.method final removeActivitiesFromLRUListLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1039
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1040
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1041
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_0

    .line 1042
    :cond_0
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 5617
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5618
    .local v1, "record":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 5619
    .end local v1    # "record":Lcom/android/server/am/ActivityRecord;
    goto :goto_0

    .line 5621
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 5623
    .local v0, "removed":Z
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 5624
    const/16 v4, 0x756d

    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5627
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivitiesFromLRUListLocked(Lcom/android/server/am/TaskRecord;)V

    .line 5628
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5630
    if-nez p3, :cond_6

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5632
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_2

    move v1, v3

    nop

    .line 5633
    .local v1, "isVoiceSession":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 5635
    :try_start_0
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v3, v4, v5}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5637
    goto :goto_1

    .line 5636
    :catch_0
    move-exception v3

    .line 5639
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    .line 5642
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, p1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 5645
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removeWindowContainer()V

    .line 5648
    .end local v1    # "isVoiceSession":Z
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5652
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eq p3, v2, :cond_8

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5653
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " leftTaskHistoryEmpty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5655
    .local v1, "myReason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 5656
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5659
    .end local v1    # "myReason":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5660
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    .line 5662
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_a

    .line 5663
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->remove()V

    .line 5667
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5670
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5671
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 5673
    :cond_b
    return-void
.end method

.method removeTaskWhenProcessDiedLocked(Ljava/lang/String;II)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pid"    # I

    .line 5857
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5858
    .local v0, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "taskNdx":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_5

    .line 5859
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5860
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 5861
    .local v5, "numActivities":I
    if-lez v5, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v3

    .line 5862
    .local v6, "isAllActivityInPkg":Z
    :goto_1
    nop

    .local v3, "activityNdx":I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 5863
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 5864
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    iget v8, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, p2, :cond_2

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    .line 5862
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5865
    .restart local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_3
    const/4 v6, 0x0

    .line 5866
    nop

    .line 5869
    .end local v3    # "activityNdx":I
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-nez v6, :cond_4

    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "numActivities":I
    .end local v6    # "isAllActivityInPkg":Z
    goto :goto_4

    .line 5870
    .restart local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v5    # "numActivities":I
    .restart local v6    # "isAllActivityInPkg":Z
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5858
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "numActivities":I
    .end local v6    # "isAllActivityInPkg":Z
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5872
    .end local v1    # "taskNdx":I
    :cond_5
    nop

    .restart local v3    # "activityNdx":I
    :goto_5
    move v1, v3

    .end local v3    # "activityNdx":I
    .local v1, "activityNdx":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 5873
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5874
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "died-stop"

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5872
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "activityNdx":I
    .restart local v3    # "activityNdx":I
    goto :goto_5

    .line 5876
    .end local v3    # "activityNdx":I
    :cond_6
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4542
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4543
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4544
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4545
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4546
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4547
    return-void
.end method

.method reparent(Lcom/android/server/am/ActivityDisplay;Z)V
    .locals 3
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityDisplay;
    .param p2, "onTop"    # Z

    .line 719
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->removeFromDisplay()V

    .line 722
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 723
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/wm/StackWindowController;->reparent(ILandroid/graphics/Rect;Z)V

    .line 724
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V

    .line 725
    const-string/jumbo v0, "reparent"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z

    .line 726
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 729
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 731
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .line 3924
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 3929
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_0

    .line 3930
    const/4 v0, 0x0

    return v0

    .line 3933
    :cond_0
    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3934
    const/4 v0, 0x1

    return v0
.end method

.method public requestResize(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 5238
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 5240
    return-void
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 13
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 3686
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3688
    .local v0, "forceReset":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 3692
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    .line 3695
    .local v2, "taskFound":Z
    const/4 v3, 0x0

    .line 3698
    .local v3, "topOptions":Landroid/app/ActivityOptions;
    const/4 v4, -0x1

    .line 3700
    .local v4, "reparentInsertionPoint":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    move v9, v2

    move-object v1, v3

    move v10, v4

    .end local v2    # "taskFound":Z
    .end local v3    # "topOptions":Landroid/app/ActivityOptions;
    .end local v4    # "reparentInsertionPoint":I
    .local v1, "topOptions":Landroid/app/ActivityOptions;
    .local v5, "i":I
    .local v9, "taskFound":Z
    .local v10, "reparentInsertionPoint":I
    :goto_1
    move v11, v5

    .end local v5    # "i":I
    .local v11, "i":I
    if-ltz v11, :cond_2

    .line 3701
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/am/TaskRecord;

    .line 3703
    .local v12, "targetTask":Lcom/android/server/am/TaskRecord;
    if-ne v12, v8, :cond_1

    .line 3704
    invoke-direct {p0, v8, v0}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 3705
    const/4 v9, 0x1

    goto :goto_2

    .line 3707
    :cond_1
    move-object v2, p0

    move-object v3, v12

    move-object v4, v8

    move v5, v9

    move v6, v0

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v10

    .line 3700
    .end local v12    # "targetTask":Lcom/android/server/am/TaskRecord;
    :goto_2
    add-int/lit8 v5, v11, -0x1

    .end local v11    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 3712
    .end local v5    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3713
    .local v2, "taskNdx":I
    if-ltz v2, :cond_5

    .line 3715
    :goto_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    .local v4, "taskNdx":I
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "taskNdx":I
    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 3716
    if-nez p1, :cond_4

    if-gez v4, :cond_3

    goto :goto_4

    .line 3715
    :cond_3
    move v2, v4

    goto :goto_3

    .line 3719
    :cond_4
    :goto_4
    move v2, v4

    .end local v4    # "taskNdx":I
    .restart local v2    # "taskNdx":I
    :cond_5
    if-eqz v1, :cond_7

    .line 3722
    if-eqz p1, :cond_6

    .line 3723
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_5

    .line 3725
    :cond_6
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->abort()V

    .line 3729
    :cond_7
    :goto_5
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    .line 5245
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5246
    return-void

    .line 5250
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 5251
    .local v0, "taskBounds":Landroid/graphics/Rect;
    :goto_0
    if-eqz p3, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 5253
    .local v1, "insetBounds":Landroid/graphics/Rect;
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5254
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5256
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5257
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_6

    .line 5258
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5259
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5260
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5265
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5266
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v5, p1}, Lcom/android/server/am/ActivityStack;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5267
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_3

    .line 5269
    :cond_3
    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 5273
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5274
    if-eqz p3, :cond_5

    .line 5275
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5257
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 5279
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/StackWindowController;->resize(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 5280
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 5281
    monitor-exit v2

    .line 5282
    return-void

    .line 5281
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method resizeStackWithLaunchBounds()Z
    .locals 1

    .line 2155
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5588
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5592
    .local v0, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 5593
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5594
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 5595
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5596
    .local v5, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5597
    iput-boolean v2, v5, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 5598
    if-eqz v0, :cond_0

    if-ne v5, v0, :cond_0

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_0

    .line 5599
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v7, 0x100

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 5594
    .end local v5    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 5592
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5606
    .end local v1    # "taskNdx":I
    :cond_2
    return-object v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 4
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2533
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2535
    return v1

    .line 2538
    :cond_0
    move v0, v1

    .line 2541
    .local v0, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 2542
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    move v0, v2

    .line 2551
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2552
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2553
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2556
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 2557
    nop

    .line 2560
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->appLockerProcessAfterResume()V

    .line 2563
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->appLockerProcessWithTimeAppAfterResume()V

    .line 2566
    return v0

    .line 2556
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4659
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4663
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 4665
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4618
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4619
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4620
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4621
    return-void
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .line 3735
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-lez p1, :cond_0

    .line 3736
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3737
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3736
    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3743
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    .line 3745
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3746
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3748
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3749
    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v4

    .line 3748
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3750
    return-void

    .line 3751
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_0
    move-exception v0

    .line 3752
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3756
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3757
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 870
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public setWindowingMode(I)V
    .locals 6
    .param p1, "windowingMode"    # I

    .line 541
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    .line 543
    return-void
.end method

.method setWindowingMode(IZZZZ)V
    .locals 23
    .param p1, "preferredWindowingMode"    # I
    .param p2, "animate"    # Z
    .param p3, "showRecents"    # Z
    .param p4, "enteringSplitScreenMode"    # Z
    .param p5, "deferEnsuringVisibility"    # Z

    .line 547
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 547
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    const/4 v4, 0x1

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 548
    .local v5, "creating":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v6

    .line 549
    .local v6, "currentMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    .line 550
    .local v7, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 551
    .local v8, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 552
    .local v9, "splitScreenStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 556
    const/4 v0, 0x0

    if-eqz v5, :cond_1

    .line 557
    nop

    .line 558
    move v10, v2

    goto :goto_1

    :cond_1
    iget-object v10, v1, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v11

    .line 558
    invoke-virtual {v7, v0, v10, v8, v11}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v10

    .line 560
    .local v10, "windowingMode":I
    :goto_1
    const/4 v11, 0x4

    if-ne v9, v1, :cond_2

    if-ne v10, v11, :cond_2

    .line 563
    const/4 v10, 0x1

    .line 566
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v12

    .line 570
    .local v12, "alreadyInSplitScreenMode":Z
    xor-int/lit8 v14, p4, 0x1

    .line 572
    .local v14, "sendNonResizeableNotification":Z
    const/4 v3, 0x3

    if-eqz v12, :cond_6

    if-ne v10, v4, :cond_6

    if-eqz v14, :cond_6

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 574
    if-eq v2, v3, :cond_4

    if-ne v2, v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move v15, v4

    .line 577
    .local v15, "preferredSplitScreen":Z
    :goto_3
    if-nez v15, :cond_5

    if-eqz v5, :cond_6

    .line 581
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 582
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    .line 588
    .end local v15    # "preferredSplitScreen":Z
    :cond_6
    if-ne v6, v10, :cond_7

    .line 590
    return-void

    .line 593
    :cond_7
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 594
    .local v11, "wm":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 596
    .local v3, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_8

    if-eq v10, v4, :cond_8

    if-eqz v3, :cond_8

    .line 597
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, v3, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_8

    .line 601
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 602
    .local v0, "packageName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v2, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v13, 0x1

    invoke-virtual {v4, v2, v13, v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 606
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_8
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 608
    if-nez p2, :cond_9

    if-eqz v3, :cond_9

    .line 609
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_9
    invoke-super {v1, v10}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    if-eqz v5, :cond_b

    .line 666
    if-eqz p3, :cond_a

    if-nez v12, :cond_a

    iget v0, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_a

    const/4 v4, 0x3

    if-ne v10, v4, :cond_a

    .line 681
    const/4 v2, 0x4

    const/4 v13, 0x1

    invoke-virtual {v7, v2, v4, v13}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 684
    .local v0, "recentStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v2, "setWindowingMode"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 686
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 688
    .end local v0    # "recentStack":Lcom/android/server/am/ActivityStack;
    :cond_a
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 615
    return-void

    .line 618
    :cond_b
    const/4 v0, 0x2

    if-eq v10, v0, :cond_14

    if-eq v6, v0, :cond_14

    .line 626
    const/4 v2, 0x3

    if-ne v10, v2, :cond_d

    if-nez v9, :cond_c

    goto :goto_4

    .line 630
    :cond_c
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Setting primary split-screen windowing mode while there is already one isn\'t currently supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_d
    :goto_4
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 636
    const/4 v0, 0x5

    const/4 v2, 0x1

    if-eq v10, v2, :cond_e

    .line 637
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/StackWindowController;->getRawBounds(Landroid/graphics/Rect;)V

    .line 638
    if-ne v10, v0, :cond_e

    .line 639
    if-eqz v8, :cond_e

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 642
    .local v2, "bounds":Landroid/graphics/Rect;
    if-eqz v2, :cond_e

    .line 643
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 649
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-ne v6, v0, :cond_10

    const/4 v2, 0x1

    if-ne v10, v2, :cond_10

    .line 655
    :cond_f
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 658
    :cond_10
    if-ne v6, v0, :cond_11

    const/4 v2, 0x1

    if-ne v10, v2, :cond_11

    .line 660
    if-eqz v3, :cond_11

    .line 661
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    :cond_11
    if-eqz p3, :cond_12

    if-nez v12, :cond_12

    iget v0, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_12

    const/4 v2, 0x3

    if-ne v10, v2, :cond_12

    .line 681
    const/4 v4, 0x1

    const/4 v13, 0x4

    invoke-virtual {v7, v13, v2, v4}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 684
    .restart local v0    # "recentStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v2, "setWindowingMode"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 686
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 688
    .end local v0    # "recentStack":Lcom/android/server/am/ActivityStack;
    :cond_12
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 689
    nop

    .line 691
    if-nez p5, :cond_13

    .line 692
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v13, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 693
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 695
    :cond_13
    return-void

    .line 622
    :cond_14
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Changing pinned windowing mode not currently supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 666
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_15

    if-nez v12, :cond_15

    iget v2, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v2, :cond_15

    const/4 v2, 0x3

    if-ne v10, v2, :cond_15

    .line 681
    const/4 v4, 0x1

    const/4 v13, 0x4

    invoke-virtual {v7, v13, v2, v4}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 684
    .local v2, "recentStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v4, "setWindowingMode"

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 686
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 688
    .end local v2    # "recentStack":Lcom/android/server/am/ActivityStack;
    :cond_15
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z
    .locals 17
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    .line 1884
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 1887
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1888
    return v4

    .line 1891
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1892
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1895
    return v3

    .line 1898
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    .line 1899
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v6, 0x0

    .line 1900
    .local v6, "gotSplitScreenStack":Z
    const/4 v7, 0x0

    .line 1901
    .local v7, "gotOpaqueSplitScreenPrimary":Z
    const/4 v8, 0x0

    .line 1902
    .local v8, "gotOpaqueSplitScreenSecondary":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v9

    .line 1903
    .local v9, "windowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v10

    .line 1904
    .local v10, "isAssistantType":Z
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_c

    .line 1905
    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 1906
    .local v12, "other":Lcom/android/server/am/ActivityStack;
    if-ne v12, v0, :cond_3

    .line 1908
    return v4

    .line 1911
    :cond_3
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v13

    .line 1913
    .local v13, "otherWindowingMode":I
    const/4 v14, 0x4

    const/4 v15, 0x3

    if-ne v13, v4, :cond_7

    .line 1920
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v3

    .line 1921
    .local v3, "activityType":I
    if-ne v9, v15, :cond_5

    .line 1922
    const/4 v15, 0x2

    if-eq v3, v15, :cond_4

    if-ne v3, v14, :cond_5

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1924
    invoke-virtual {v14}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 1925
    :cond_4
    return v4

    .line 1928
    :cond_5
    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1930
    goto :goto_1

    .line 1932
    :cond_6
    const/4 v4, 0x0

    return v4

    .line 1933
    .end local v3    # "activityType":I
    :cond_7
    if-ne v13, v15, :cond_8

    if-nez v7, :cond_8

    .line 1935
    const/4 v6, 0x1

    .line 1936
    nop

    .line 1937
    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    xor-int/2addr v3, v4

    move v7, v3

    .line 1938
    if-ne v9, v15, :cond_9

    if-eqz v7, :cond_9

    .line 1941
    const/4 v3, 0x0

    return v3

    .line 1943
    :cond_8
    if-ne v13, v14, :cond_9

    if-nez v8, :cond_9

    .line 1945
    const/4 v6, 0x1

    .line 1946
    nop

    .line 1947
    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    xor-int/2addr v3, v4

    move v8, v3

    .line 1948
    if-ne v9, v14, :cond_9

    if-eqz v8, :cond_9

    .line 1951
    const/4 v3, 0x0

    return v3

    .line 1954
    :cond_9
    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    .line 1957
    const/4 v3, 0x0

    return v3

    .line 1959
    :cond_a
    const/4 v3, 0x0

    if-eqz v10, :cond_b

    if-eqz v6, :cond_b

    .line 1963
    return v3

    .line 1904
    .end local v12    # "other":Lcom/android/server/am/ActivityStack;
    .end local v13    # "otherWindowingMode":I
    :cond_b
    :goto_1
    add-int/lit8 v11, v11, -0x1

    const/4 v3, 0x0

    goto :goto_0

    .line 1968
    .end local v11    # "i":I
    :cond_c
    return v4

    .line 1885
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "gotSplitScreenStack":Z
    .end local v7    # "gotOpaqueSplitScreenPrimary":Z
    .end local v8    # "gotOpaqueSplitScreenSecondary":Z
    .end local v9    # "windowingMode":I
    .end local v10    # "isAssistantType":Z
    :cond_d
    :goto_2
    const/4 v2, 0x0

    return v2
.end method

.method shouldSleepActivities()Z
    .locals 2

    .line 5839
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 5843
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5844
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5845
    const/4 v1, 0x0

    return v1

    .line 5848
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->isSleeping()Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_0
    return v1
.end method

.method shouldSleepOrShutDownActivities()Z
    .locals 1

    .line 5852
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isShuttingDownLocked()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 7
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 4351
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4352
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4359
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 4360
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4362
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inFrontOfStandardStack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4364
    return v0

    .line 4367
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4368
    .local v2, "taskIdx":I
    if-gtz v2, :cond_2

    .line 4369
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    return v3

    .line 4372
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 4373
    .local v4, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v5, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4375
    return v0

    .line 4378
    .end local v2    # "taskIdx":I
    .end local v4    # "prevTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    return v3

    .line 4353
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_0
    return v0
.end method

.method startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "focusedTopActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/app/ActivityOptions;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 3244
    move-object/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 3245
    .local v6, "rTask":Lcom/android/server/am/TaskRecord;
    iget v7, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3247
    .local v7, "taskId":I
    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v8, :cond_1

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz v3, :cond_1

    .line 3251
    :cond_0
    invoke-direct {v0, v6, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 3253
    :cond_1
    const/4 v8, 0x0

    .line 3254
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x1

    if-nez v3, :cond_5

    .line 3256
    const/4 v10, 0x1

    .line 3257
    .local v10, "startIt":Z
    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v9

    .local v11, "taskNdx":I
    :goto_0
    if-ltz v11, :cond_5

    .line 3258
    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 3259
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_2

    .line 3261
    goto :goto_1

    .line 3263
    :cond_2
    if-ne v8, v6, :cond_3

    .line 3267
    if-nez v10, :cond_5

    .line 3270
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 3271
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3272
    return-void

    .line 3275
    :cond_3
    iget v12, v8, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v12, :cond_4

    .line 3276
    const/4 v10, 0x0

    .line 3257
    :cond_4
    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 3285
    .end local v10    # "startIt":Z
    .end local v11    # "taskNdx":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    .line 3286
    .local v10, "activityTask":Lcom/android/server/am/TaskRecord;
    const/4 v11, 0x0

    if-ne v8, v10, :cond_6

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v9

    if-eq v12, v13, :cond_6

    .line 3287
    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v11, v12, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 3292
    :cond_6
    move-object v8, v10

    .line 3300
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v12

    if-nez v12, :cond_7

    .line 3301
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 3303
    :cond_7
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 3305
    sget-object v12, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v12, :cond_8

    .line 3306
    sget-object v12, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v11, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {v12, v13, v14, v15, v11}, Lcom/android/internal/app/ActivityTrigger;->activityStartTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 3309
    :cond_8
    sget-object v11, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v11

    if-eqz v11, :cond_a

    .line 3310
    sget-object v11, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3311
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v12

    if-ne v12, v9, :cond_9

    move v12, v9

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    :goto_2
    invoke-static {v11, v12}, Lcom/android/server/am/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 3314
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v11

    if-lez v11, :cond_b

    goto :goto_3

    .line 3386
    :cond_b
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto/16 :goto_a

    .line 3320
    :cond_c
    :goto_3
    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x10000

    and-int/2addr v11, v12

    const/4 v12, 0x0

    if-eqz v11, :cond_d

    .line 3321
    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3322
    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3324
    :cond_d
    const/4 v11, 0x6

    .line 3325
    .local v11, "transit":I
    if-eqz v3, :cond_10

    .line 3326
    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v13, :cond_e

    .line 3327
    const/16 v11, 0x10

    goto :goto_4

    .line 3333
    :cond_e
    invoke-direct {v0, v2, v12, v1, v5}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 3335
    iput-boolean v9, v2, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 3337
    :cond_f
    const/16 v11, 0x8

    .line 3340
    :cond_10
    :goto_4
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13, v11, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3341
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3343
    .end local v11    # "transit":I
    :goto_5
    const/4 v11, 0x1

    .line 3344
    .local v11, "doShow":Z
    if-eqz v3, :cond_12

    .line 3350
    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/high16 v14, 0x200000

    and-int/2addr v13, v14

    if-eqz v13, :cond_13

    .line 3351
    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 3352
    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    if-ne v13, v1, :cond_11

    move v13, v9

    goto :goto_6

    :cond_11
    const/4 v13, 0x0

    :goto_6
    move v11, v13

    goto :goto_7

    .line 3354
    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_13

    .line 3356
    const/4 v11, 0x0

    .line 3358
    :cond_13
    :goto_7
    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v13, :cond_14

    .line 3361
    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 3362
    const/4 v9, 0x0

    invoke-virtual {v0, v12, v9, v9}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_9

    .line 3363
    :cond_14
    if-eqz v11, :cond_17

    .line 3368
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 3369
    .local v9, "prevTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 3370
    .local v12, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_16

    .line 3373
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    if-eq v13, v9, :cond_15

    .line 3374
    const/4 v12, 0x0

    goto :goto_8

    .line 3377
    :cond_15
    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v13, :cond_16

    .line 3378
    const/4 v12, 0x0

    .line 3381
    :cond_16
    :goto_8
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->isTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v13

    invoke-virtual {v1, v12, v3, v13}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3383
    .end local v9    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v11    # "doShow":Z
    .end local v12    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_17
    :goto_9
    nop

    .line 3388
    :goto_a
    return-void
.end method

.method final startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z
    .locals 21
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "pauseImmediately"    # Z

    .line 1468
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    .line 1468
    move/from16 v4, p4

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 1469
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Going to pause when pause is already pending for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1470
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1469
    invoke-static {v0, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    invoke-direct {v1, v5, v3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1478
    :cond_0
    iget-object v6, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1480
    .local v6, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_2

    .line 1481
    if-nez v3, :cond_1

    .line 1482
    const-string v0, "ActivityManager"

    const-string v7, "Trying to pause when nothing is resumed"

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1485
    :cond_1
    return v5

    .line 1488
    :cond_2
    if-ne v6, v3, :cond_3

    .line 1489
    const-string v0, "ActivityManager"

    const-string v7, "Trying to pause activity that is in process of being resumed"

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return v5

    .line 1496
    :cond_3
    sget-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_4

    .line 1497
    sget-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/internal/app/ActivityTrigger;->activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1500
    :cond_4
    sget-object v0, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    const/4 v7, 0x1

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1501
    sget-object v0, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1502
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v8

    if-ne v8, v7, :cond_5

    move v8, v7

    goto :goto_0

    :cond_5
    move v8, v5

    :goto_0
    invoke-static {v0, v8, v7}, Lcom/android/server/am/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 1505
    :cond_6
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1506
    iput-object v6, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1507
    iput-object v6, v1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1508
    nop

    .line 1509
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1508
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v0, v9

    if-nez v0, :cond_8

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    goto :goto_1

    .line 1509
    :cond_7
    move-object v0, v8

    goto :goto_2

    :cond_8
    :goto_1
    move-object v0, v6

    :goto_2
    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1510
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v9, "startPausingLocked"

    invoke-virtual {v6, v0, v9}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1512
    invoke-direct {v1, v6}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1514
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->stopFullyDrawnTraceIfNeeded()V

    .line 1516
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1519
    const/4 v0, 0x0

    .line 1521
    .local v0, "visible":Z
    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    .line 1524
    .end local v0    # "visible":Z
    .local v9, "visible":Z
    const/4 v0, 0x0

    .line 1525
    .local v0, "topActivityPackageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1526
    .local v10, "topActivity":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 1528
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_9

    .line 1529
    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1530
    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 1533
    .end local v0    # "topActivityPackageName":Ljava/lang/String;
    .local v10, "topActivityPackageName":Ljava/lang/String;
    .local v12, "topActivity":Ljava/lang/String;
    :cond_9
    move-object v12, v10

    move-object v10, v0

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v14, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1534
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1535
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1533
    invoke-static/range {v13 .. v19}, Landroid/os/BSPApplicationManager$Trigger;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1538
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v13, "com.antutu"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v13, "com.ludashi"

    .line 1539
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v13, "com.primatelabs"

    .line 1540
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1541
    :cond_a
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityStack;->cpusetRestoreForAntutuTest(Ljava/lang/String;)V

    .line 1543
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->noteBenchmarkActivityPausing()V

    .line 1548
    :cond_b
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v14, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1549
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1550
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1548
    invoke-static/range {v13 .. v19}, Lnubia/os/ApplicationManager$Trigger;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1553
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_10

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_10

    .line 1556
    :try_start_0
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    iget-object v14, v6, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "userLeaving="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v13, v14, v7}, Lcom/android/server/am/EventLogTags;->writeAmPauseActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 1558
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1560
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v13, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v14, v6, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 1561
    invoke-static {v13, v2, v14, v4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v13

    .line 1560
    invoke-virtual {v0, v7, v8, v13}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 1564
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1565
    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_c

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz p2, :cond_d

    .line 1566
    :cond_c
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1566
    move v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v13 .. v18}, Lnubia/os/ApplicationManager$Trigger;->noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V

    .line 1570
    :cond_d
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/16 v19, 0x0

    .line 1570
    move v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v13 .. v19}, Lnubia/os/ApplicationManager$Trigger;->noteAppUsingCamera(ILjava/lang/String;ILjava/lang/String;JZ)V

    .line 1575
    if-eqz v0, :cond_e

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz p2, :cond_f

    .line 1576
    :cond_e
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1576
    move v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v13 .. v18}, Landroid/os/BSPApplicationManager$Trigger;->noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    .end local v0    # "next":Lcom/android/server/am/ActivityRecord;
    goto :goto_3

    .line 1581
    :catch_0
    move-exception v0

    .line 1583
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ActivityManager"

    const-string v8, "Exception thrown during pause"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1584
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1585
    iput-object v7, v1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1586
    iput-object v7, v1, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1587
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_3
    goto :goto_4

    .line 1589
    :cond_10
    move-object v7, v8

    iput-object v7, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1590
    iput-object v7, v1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1591
    iput-object v7, v1, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1596
    :goto_4
    if-nez p2, :cond_11

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1597
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1600
    :cond_11
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_14

    .line 1605
    if-nez p2, :cond_12

    .line 1606
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1611
    :cond_12
    if-eqz v4, :cond_13

    .line 1614
    invoke-direct {v1, v5, v3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1615
    return v5

    .line 1618
    :cond_13
    invoke-direct {v1, v6}, Lcom/android/server/am/ActivityStack;->schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V

    .line 1619
    const/4 v5, 0x1

    return v5

    .line 1626
    :cond_14
    if-nez v3, :cond_15

    .line 1627
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1629
    :cond_15
    return v5
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3843
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 3844
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 3846
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    .line 3847
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3849
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "stop-no-history"

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3853
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3854
    return-void

    .line 3864
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3865
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 3866
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 3864
    invoke-static {v1, v2, v3, v4}, Lnubia/os/ApplicationManager$Trigger;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 3869
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_7

    .line 3870
    const-string/jumbo v1, "stopActivity"

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3871
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3873
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3877
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "stopActivityLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3881
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v2, :cond_2

    .line 3882
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/ActivityTrigger;->activityStopTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 3885
    :cond_2
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-eqz v2, :cond_4

    .line 3886
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3887
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    if-ne v3, v1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 3890
    :cond_4
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_5

    .line 3891
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 3893
    :cond_5
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3894
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 3893
    invoke-static {v0, v2, v3}, Lcom/android/server/am/EventLogTags;->writeAmStopActivity(IILjava/lang/String;)V

    .line 3895
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3896
    invoke-static {v4, v5}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v4

    .line 3895
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3897
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3898
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 3900
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3901
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2af8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3914
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 3902
    :catch_0
    move-exception v0

    .line 3906
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3908
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3910
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "stopActivityLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3911
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v2, :cond_7

    .line 3912
    const-string/jumbo v2, "stop-except"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 3916
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 2

    .line 2160
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2161
    .local v0, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 2162
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2161
    :goto_0
    return v1
.end method

.method final switchUserLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1283
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 1284
    return-void

    .line 1286
    :cond_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 1289
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1290
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1291
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1293
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->okToShowLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1296
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1297
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1301
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1303
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1
    goto :goto_0

    .line 1304
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3
    .param p1, "id"    # I

    .line 985
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 986
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 987
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 988
    return-object v1

    .line 985
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 991
    .end local v0    # "taskNdx":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 5818
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5819
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5820
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5821
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " translucent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5822
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 5824
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5818
    return-object v0
.end method

.method topActivityOccludesKeyguard()Z
    .locals 1

    .line 2147
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .line 874
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .line 932
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 933
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 934
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p2, :cond_0

    .line 935
    goto :goto_2

    .line 937
    :cond_0
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 938
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 939
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 941
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 942
    return-object v4

    .line 938
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 932
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "i":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 946
    .end local v0    # "taskNdx":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .line 909
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 910
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 911
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 912
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 913
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 914
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_0

    if-eq v4, p1, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 915
    return-object v4

    .line 912
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 909
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 919
    .end local v0    # "taskNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningNonOverlayTaskActivity()Lcom/android/server/am/ActivityRecord;
    .locals 6

    .line 895
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 896
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 897
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 898
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 899
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 900
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_0

    .line 901
    return-object v4

    .line 898
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 895
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 905
    .end local v0    # "taskNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .locals 3

    .line 970
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 971
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 972
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    return-object v1

    .line 974
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method unhandledBackLocked()V
    .locals 10

    .line 5455
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5457
    .local v0, "top":I
    if-ltz v0, :cond_0

    .line 5458
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5459
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5460
    .local v2, "activityTop":I
    if-ltz v2, :cond_0

    .line 5461
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "unhandled-back"

    const/4 v9, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5465
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityTop":I
    :cond_0
    return-void
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 7
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1338
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1339
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1341
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1342
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1343
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 1344
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1346
    .local v5, "ar":Lcom/android/server/am/ActivityRecord;
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v1, v6, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1347
    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 1343
    .end local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1341
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1351
    .end local v2    # "taskNdx":I
    :cond_2
    return-void
.end method

.method updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    .line 846
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 847
    return v1

    .line 849
    :cond_0
    if-eqz p1, :cond_1

    .line 850
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 854
    :goto_0
    if-eqz p2, :cond_2

    .line 855
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 859
    :goto_1
    if-eqz p3, :cond_3

    .line 860
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 862
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 864
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 865
    const/4 v0, 0x0

    return v0
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1045
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1046
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    return v0
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5329
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 5329
    .local v0, "taskNdx":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 5330
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5331
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .line 5331
    .local v4, "activityNdx":I
    :goto_1
    if-ltz v4, :cond_2

    .line 5332
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5333
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v6, p1, :cond_0

    .line 5334
    return v1

    .line 5336
    :cond_0
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_1

    .line 5337
    return v2

    .line 5331
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 5329
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5341
    .end local v0    # "taskNdx":I
    :cond_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5342
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_4

    .line 5343
    return v2

    .line 5345
    :cond_4
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_5

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    :cond_5
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 5880
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5881
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 5882
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5883
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 5884
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 5885
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/TaskRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5883
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5887
    .end local v2    # "taskNdx":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    .line 5888
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5890
    :cond_1
    const-wide v2, 0x10500000005L

    iget v4, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5891
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5892
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5893
    .local v2, "bounds":Landroid/graphics/Rect;
    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5897
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_2
    const-wide v2, 0x10800000006L

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5898
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5899
    return-void
.end method
