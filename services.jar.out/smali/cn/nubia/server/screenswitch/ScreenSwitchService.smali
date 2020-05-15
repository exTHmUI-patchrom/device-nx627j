.class public Lcn/nubia/server/screenswitch/ScreenSwitchService;
.super Lcn/nubia/server/NubiaSystemService;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;,
        Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;,
        Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;,
        Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;,
        Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;,
        Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;,
        Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;,
        Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;,
        Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;,
        Lcn/nubia/server/screenswitch/ScreenSwitchService$PreviewCallbackProxy;
    }
.end annotation


# static fields
.field private static final ACTION_SCREEN_CHANGED:Ljava/lang/String; = "cn.nubia.action.SCREEN_CHANGED"

.field private static DEBUG:Z = false

.field private static final HOME_STACK_ID:I = 0x0

.field private static final SCREEN_IN_USE:Ljava/lang/String; = "screen_in_use"

.field private static final SERVICE_NAME:Ljava/lang/String; = "nubia.screenswitch"

.field private static final SETTINGS_ALWAYS_SHOW_MAIN_SCREEN_WHEN_CALL:Ljava/lang/String; = "always_show_main_screen_when_call"

.field private static final SETTINGS_POWERON_UPTURNED_SCREEN:Ljava/lang/String; = "poweron_upturned_screen"

.field private static final SETTINGS_SWITCH_SCREEN_MODE:Ljava/lang/String; = "switch_screen_mode"

.field private static final SWITCH_SCREEN_FLOAT:Ljava/lang/String; = "float_switch_screen"

.field private static final TAG:Ljava/lang/String; = "ScreenSwitchService"

.field private static mAcquirePerformace:Ljava/lang/reflect/Method;

.field private static mPerformanceType:I

.field private static mReleasePerformance:Ljava/lang/reflect/Method;

.field private static mUpdateBrightScreenChange:Ljava/lang/reflect/Method;

.field private static sPerformanceBinder:Landroid/os/Binder;


# instance fields
.field private final SETTINGS_MULTI_SCREEN_MULTI_TASKS:Ljava/lang/String;

.field private backUsing:Z

.field private currentActivity:Ljava/lang/String;

.field private currentPackage:Ljava/lang/String;

.field private forcedScreenIdField:Ljava/lang/reflect/Field;

.field private frontUsing:Z

.field private isCameraUsing:Z

.field private volatile isEarprieceUsing:Z

.field private volatile isInComunication:Z

.field private volatile isIncall:Z

.field private isRinging:Z

.field private mAM:Landroid/app/IActivityManager;

.field private final mAfterSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/server/screenswitch/SwitchCallbackList<",
            "Lnubia/os/screenswitch/IScreenSwitchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAlwaysShowMainScreenWhenCall:Z

.field private mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private volatile mAutoSwitch:Z

.field private mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

.field private final mBeforeSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/server/screenswitch/SwitchCallbackList<",
            "Lnubia/os/screenswitch/IScreenSwitchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mBeforeSyncLock:Ljava/lang/Object;

.field private final mBeforeSyncSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/server/screenswitch/SwitchCallbackList<",
            "Lnubia/os/screenswitch/IScreenSwitchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mBinder:Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;

.field private mCallbackLock:Ljava/lang/Object;

.field private mCameraSwitchToken:Landroid/view/IApplicationToken;

.field private mContext:Landroid/content/Context;

.field private mCurrentCamera:Ljava/lang/String;

.field private mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

.field private mDaemonDetector:Lcn/nubia/server/screenswitch/DaemonDetector;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

.field private volatile mDialogShowing:Z

.field private mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private volatile mDonotRemind:Z

.field private mDualFingerprintPressed:Z

.field private volatile mEnableInLearningWizard:Z

.field private mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

.field private mExitTaskLock:Ljava/lang/Object;

.field private volatile mEyeProDialogShowing:Z

.field private mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mHasDelaySwitchTask:Z

.field private mHomeIntent:Landroid/content/Intent;

.field private mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

.field private mIgnoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;",
            ">;"
        }
    .end annotation
.end field

.field private mInGameMode:Z

.field private volatile mIsAwake:Z

.field private volatile mIsDisplayFreezing:Z

.field private volatile mIsFloatSwitch:Z

.field private volatile mIsSkipSwitchTask:Z

.field private volatile mIsUpdatingRotation:Z

.field private mKeepTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

.field private volatile mLastUsingScreen:I

.field private mLossSecondScreen:Z

.field private mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

.field private mMotionDetectorEnable:Ljava/lang/Runnable;

.field private volatile mMultiTasks:Z

.field private volatile mNextTaskDrawn:Z

.field private mNotSwitchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private volatile mPoweronUpScreen:I

.field private mReadLcdStateHandler:Landroid/os/Handler;

.field private final mScreenChangedIntent:Landroid/content/Intent;

.field private mScreenFaceUpListener:Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

.field private volatile mScreenState:I

.field private mScreenSwitchStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorTargetId:I

.field private volatile mShowingScreenId:I

.field private volatile mShuttingDown:Z

.field private mStartTaskOfThisScreenRunnable:Ljava/lang/Runnable;

.field private mSwitchCompleteTime:J

.field private final mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchInterface;

.field private volatile mSwitchMode:I

.field private mSystemReady:Z

.field private mTaskLock:Ljava/lang/Object;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTempTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

.field private mType:I

.field private startOrientationSensorField:Ljava/lang/reflect/Field;

.field private waitVideoCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    .line 137
    const/16 v0, 0xf

    sput v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPerformanceType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-direct {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBeforeSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    .line 116
    new-instance v0, Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-direct {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBeforeSyncSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    .line 117
    new-instance v0, Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-direct {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAfterSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCallbackLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBeforeSyncLock:Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenState:I

    .line 127
    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mLastUsingScreen:I

    .line 130
    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPoweronUpScreen:I

    .line 132
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDonotRemind:Z

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEnableInLearningWizard:Z

    .line 150
    const-string/jumbo v2, "multi_screen_multi_tasks"

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->SETTINGS_MULTI_SCREEN_MULTI_TASKS:Ljava/lang/String;

    .line 371
    new-instance v2, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$Wb97bcTQpm-skp1-KJwgNs7XwD8;

    invoke-direct {v2, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$Wb97bcTQpm-skp1-KJwgNs7XwD8;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetectorEnable:Ljava/lang/Runnable;

    .line 746
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchCompleteTime:J

    .line 1726
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNotSwitchList:Ljava/util/ArrayList;

    .line 1727
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIgnoreList:Ljava/util/ArrayList;

    .line 1728
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1729
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1730
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1731
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1732
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mTempTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1733
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mKeepTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1734
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAM:Landroid/app/IActivityManager;

    .line 1735
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHomeIntent:Landroid/content/Intent;

    .line 1736
    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    .line 1737
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mTaskLock:Ljava/lang/Object;

    .line 1738
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNextTaskDrawn:Z

    .line 1739
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTaskLock:Ljava/lang/Object;

    .line 1740
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1741
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsSkipSwitchTask:Z

    .line 1742
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHasDelaySwitchTask:Z

    .line 1743
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCameraSwitchToken:Landroid/view/IApplicationToken;

    .line 1744
    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    invoke-direct {v1, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V

    iput-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    .line 1745
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsUpdatingRotation:Z

    .line 1746
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsDisplayFreezing:Z

    .line 1747
    new-instance v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$8;

    invoke-direct {v0, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$8;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mStartTaskOfThisScreenRunnable:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "nubia.switchscreen"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 161
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 162
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    .line 163
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    .line 164
    new-instance v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;

    invoke-direct {v0, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBinder:Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.action.SCREEN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenChangedIntent:Landroid/content/Intent;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    .line 168
    new-instance v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    invoke-direct {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    .line 169
    invoke-static {p1}, Lcn/nubia/server/screenswitch/SwitchInterface;->createInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/SwitchInterface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchInterface;

    .line 171
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->initList()V

    .line 173
    return-void
.end method

.method private abortSwitchWhenScreenProjection()Z
    .locals 3

    .line 657
    const-string v0, "1"

    const-string/jumbo v1, "sys.aod.disable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 658
    .local v0, "inScreenProjection":Z
    if-eqz v0, :cond_0

    .line 659
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$sD9SHkB4VuFTLcTxFRz-WkBxp-U;

    invoke-direct {v2, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$sD9SHkB4VuFTLcTxFRz-WkBxp-U;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 664
    :cond_0
    return v0
.end method

.method static synthetic access$100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSensorTargetId:I

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/MotionDetector;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    return-object v0
.end method

.method static synthetic access$10002(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsDisplayFreezing:Z

    return p1
.end method

.method static synthetic access$10100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mKeepTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSensorTargetId:I

    return p1
.end method

.method static synthetic access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->startTaskOfScreen(I)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsFloatSwitch:Z

    return v0
.end method

.method static synthetic access$1102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsFloatSwitch:Z

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPoweronUpScreen:I

    return v0
.end method

.method static synthetic access$1202(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPoweronUpScreen:I

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDonotRemind:Z

    return v0
.end method

.method static synthetic access$1302(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDonotRemind:Z

    return p1
.end method

.method static synthetic access$1400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEnableInLearningWizard:Z

    return v0
.end method

.method static synthetic access$1402(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEnableInLearningWizard:Z

    return p1
.end method

.method static synthetic access$1500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMultiTasks:Z

    return v0
.end method

.method static synthetic access$1502(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMultiTasks:Z

    return p1
.end method

.method static synthetic access$1600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAlwaysShowMainScreenWhenCall:Z

    return v0
.end method

.method static synthetic access$1602(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAlwaysShowMainScreenWhenCall:Z

    return p1
.end method

.method static synthetic access$1700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isAutoSwitchEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->checkAutoSwitchAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->switchScreenLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenFaceUpListener:Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$2002(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    .line 71
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenFaceUpListener:Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    return-object p1
.end method

.method static synthetic access$2100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$2400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isIncall:Z

    return v0
.end method

.method static synthetic access$2402(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isIncall:Z

    return p1
.end method

.method static synthetic access$2500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isRinging:Z

    return v0
.end method

.method static synthetic access$2502(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isRinging:Z

    return p1
.end method

.method static synthetic access$2600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->waitVideoCall:Z

    return v0
.end method

.method static synthetic access$2602(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->waitVideoCall:Z

    return p1
.end method

.method static synthetic access$2700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->hasVideoCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isEarprieceUsing:Z

    return v0
.end method

.method static synthetic access$2900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInComunication:Z

    return v0
.end method

.method static synthetic access$2902(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInComunication:Z

    return p1
.end method

.method static synthetic access$3000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mType:I

    return v0
.end method

.method static synthetic access$3002(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mType:I

    return p1
.end method

.method static synthetic access$3100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsSkipSwitchTask:Z

    return v0
.end method

.method static synthetic access$3102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsSkipSwitchTask:Z

    return p1
.end method

.method static synthetic access$3202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/view/IApplicationToken;)Landroid/view/IApplicationToken;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Landroid/view/IApplicationToken;

    .line 71
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCameraSwitchToken:Landroid/view/IApplicationToken;

    return-object p1
.end method

.method static synthetic access$3300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    return-object v0
.end method

.method static synthetic access$3500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->getCurrentDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcn/nubia/server/screenswitch/ScreenSwitchService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->switchScreenLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3702(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEyeProDialogShowing:Z

    return p1
.end method

.method static synthetic access$3800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mInGameMode:Z

    return v0
.end method

.method static synthetic access$3802(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mInGameMode:Z

    return p1
.end method

.method static synthetic access$3900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->checkDoubleFPAnimAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAutoSwitch:Z

    return v0
.end method

.method static synthetic access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAutoSwitch:Z

    return p1
.end method

.method static synthetic access$4102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShuttingDown:Z

    return p1
.end method

.method static synthetic access$4200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->postActivityResume(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->translateCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->frontUsing:Z

    return v0
.end method

.method static synthetic access$4602(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->frontUsing:Z

    return p1
.end method

.method static synthetic access$4700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->backUsing:Z

    return v0
.end method

.method static synthetic access$4702(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->backUsing:Z

    return p1
.end method

.method static synthetic access$4800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentCamera:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDialogShowing:Z

    return v0
.end method

.method static synthetic access$4902(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDialogShowing:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->postCameraChanged(Z)V

    return-void
.end method

.method static synthetic access$5200(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->onPreviewStated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mLossSecondScreen:Z

    return v0
.end method

.method static synthetic access$5400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->abortSwitchWhenScreenProjection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    return v0
.end method

.method static synthetic access$5502(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    return p1
.end method

.method static synthetic access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchService;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 71
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->startTaskOfScreenIfNeed(ZZ)V

    return-void
.end method

.method static synthetic access$5700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBeforeSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    return-object v0
.end method

.method static synthetic access$5800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAfterSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    return-object v0
.end method

.method static synthetic access$5900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBeforeSyncSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$6000(Lcn/nubia/server/screenswitch/ScreenSwitchService;ILcn/nubia/server/screenswitch/SwitchCallbackList;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/server/screenswitch/SwitchCallbackList;

    .line 71
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->doCallbacksWhenSwitch(ILcn/nubia/server/screenswitch/SwitchCallbackList;)V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 71
    sput-boolean p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    return p0
.end method

.method static synthetic access$6100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->waitForBeofreSyncCallbacks()V

    return-void
.end method

.method static synthetic access$6200(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updateScreenState(I)V

    return-void
.end method

.method static synthetic access$6300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-wide v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchCompleteTime:J

    return-wide v0
.end method

.method static synthetic access$6302(Lcn/nubia/server/screenswitch/ScreenSwitchService;J)J
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # J

    .line 71
    iput-wide p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchCompleteTime:J

    return-wide p1
.end method

.method static synthetic access$6400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchInterface;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchInterface;

    return-object v0
.end method

.method static synthetic access$6500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->waitForCallbacksComplete()V

    return-void
.end method

.method static synthetic access$6600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->waitForTaskChangeComplete()V

    return-void
.end method

.method static synthetic access$6700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenChangedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->checkDelayTaskWhenScreenOn()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updateMotionDetectorState()V

    return-void
.end method

.method static synthetic access$7100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mReadLcdStateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->resetPowerRequest()V

    return-void
.end method

.method static synthetic access$7300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenState:I

    return v0
.end method

.method static synthetic access$7400(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->removeListener(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7700(Lcn/nubia/server/screenswitch/ScreenSwitchService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->postDialogVisiableChanged(ZI)V

    return-void
.end method

.method static synthetic access$7802(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsAwake:Z

    return p1
.end method

.method static synthetic access$7900(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updateMotionDetectorState(Z)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchMode:I

    return v0
.end method

.method static synthetic access$8000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/DaemonDetector;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDaemonDetector:Lcn/nubia/server/screenswitch/DaemonDetector;

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I

    .line 71
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchMode:I

    return p1
.end method

.method static synthetic access$8100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBeforeSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->checkAllCallbacksComplete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8400(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$8502(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 71
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object p1
.end method

.method static synthetic access$8600(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updateforcedScreenId(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$8700(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Z

    .line 71
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updatestartOrientationSensor(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$8800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->getPoweronUpScreen()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->closeDoubleFPAnims()V

    return-void
.end method

.method static synthetic access$9000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/HorizontalDetector;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

    return-object v0
.end method

.method static synthetic access$9100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$9200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDualFingerprintPressed:Z

    return v0
.end method

.method static synthetic access$9202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDualFingerprintPressed:Z

    return p1
.end method

.method static synthetic access$9300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInLearningWizard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Lcn/nubia/server/screenswitch/ScreenSwitchService;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/view/IApplicationToken;
    .param p6, "x6"    # Z
    .param p7, "x7"    # I

    .line 71
    invoke-direct/range {p0 .. p7}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->setScreenTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9500(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I

    .line 71
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->noteExitTopTaskInner(I)V

    return-void
.end method

.method static synthetic access$9600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNextTaskDrawn:Z

    return v0
.end method

.method static synthetic access$9602(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNextTaskDrawn:Z

    return p1
.end method

.method static synthetic access$9700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->checkTaskChangeComplete()V

    return-void
.end method

.method static synthetic access$9800(Lcn/nubia/server/screenswitch/ScreenSwitchService;IILandroid/view/IApplicationToken;ZI)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/IApplicationToken;
    .param p4, "x4"    # Z
    .param p5, "x5"    # I

    .line 71
    invoke-direct/range {p0 .. p5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->noteSurfaceChangeInner(IILandroid/view/IApplicationToken;ZI)V

    return-void
.end method

.method static synthetic access$9902(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p1, "x1"    # Z

    .line 71
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsUpdatingRotation:Z

    return p1
.end method

.method public static acquirePerformance()V
    .locals 5

    .line 1575
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->sPerformanceBinder:Landroid/os/Binder;

    if-eqz v0, :cond_0

    return-void

    .line 1576
    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->sPerformanceBinder:Landroid/os/Binder;

    .line 1577
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAcquirePerformace:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 1579
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ScreenSwitchService"

    const-string v1, "acquireFacePerformance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_1
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAcquirePerformace:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcn/nubia/server/screenswitch/ScreenSwitchService;->sPerformanceBinder:Landroid/os/Binder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "switchscren"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget v4, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPerformanceType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    goto :goto_0

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1585
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method private changeRecordWhenUseCamera()V
    .locals 4

    .line 1869
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1870
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCameraSwitchToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_3

    .line 1871
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    .line 1872
    .local v0, "screenId":I
    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1873
    .local v1, "lastTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    :goto_0
    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$3400(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Landroid/view/IApplicationToken;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCameraSwitchToken:Landroid/view/IApplicationToken;

    if-ne v2, v3, :cond_3

    .line 1874
    if-nez v0, :cond_2

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1875
    .local v2, "nextTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    :goto_1
    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11100(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V

    .line 1876
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10802(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z

    .line 1877
    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10602(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;I)I

    .line 1880
    .end local v0    # "screenId":I
    .end local v1    # "lastTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .end local v2    # "nextTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCameraSwitchToken:Landroid/view/IApplicationToken;

    .line 1881
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRecordWhenUseCamera mFrontTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBackTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    return-void
.end method

.method private changeTaskToLauncherIfNeeded(ILcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V
    .locals 1
    .param p1, "newTaskId"    # I
    .param p2, "otherTask"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1863
    invoke-static {p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10800(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1864
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10802(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z

    .line 1865
    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10602(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;I)I

    .line 1867
    :cond_0
    return-void
.end method

.method private checkAllCallbacksComplete()Z
    .locals 1

    .line 900
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBeforeSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->checkComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAfterSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->checkComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkAutoSwitchAvailable()Z
    .locals 4

    .line 385
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDeviceProvisioned:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 386
    return v1

    .line 388
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    return v1

    .line 391
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v2, "isKeyguardLocked true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return v1

    .line 396
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEyeProDialogShowing:Z

    if-eqz v0, :cond_3

    .line 397
    return v1

    .line 400
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInNubiaCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 401
    return v1

    .line 403
    :cond_4
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->getCurrentDisplayId()I

    move-result v0

    .line 404
    .local v0, "current":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-boolean v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->frontUsing:Z

    if-nez v3, :cond_6

    :cond_5
    if-nez v0, :cond_7

    iget-boolean v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->backUsing:Z

    if-eqz v3, :cond_7

    .line 405
    :cond_6
    return v1

    .line 407
    :cond_7
    return v2
.end method

.method private checkDelayTaskWhenScreenOn()V
    .locals 2

    .line 2038
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsSkipSwitchTask:Z

    if-eqz v0, :cond_1

    .line 2039
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    monitor-enter v0

    .line 2040
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    iget-boolean v1, v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mIsDelay:Z

    if-eqz v1, :cond_0

    .line 2041
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHasDelaySwitchTask:Z

    .line 2043
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    invoke-virtual {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->reset()V

    .line 2044
    monitor-exit v0

    .line 2045
    return-void

    .line 2044
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2048
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    monitor-enter v0

    .line 2049
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    iget-boolean v1, v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mIsDelay:Z

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 2051
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    invoke-virtual {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->reset()V

    .line 2052
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2053
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "start delay task"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->startTaskOfThisScreen()V

    .line 2055
    return-void

    .line 2052
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private checkDoubleFPAnimAvailable()Z
    .locals 2

    .line 1480
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInLearningWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEnableInLearningWizard:Z

    return v0

    .line 1483
    :cond_0
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1484
    return v1

    .line 1486
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDeviceProvisioned:Z

    if-nez v0, :cond_2

    .line 1487
    return v1

    .line 1490
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1491
    return v1

    .line 1494
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1495
    return v1

    .line 1498
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDialogShowing:Z

    if-eqz v0, :cond_5

    .line 1499
    return v1

    .line 1502
    :cond_5
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInNubiaCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1503
    return v1

    .line 1505
    :cond_6
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->frontUsing:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->backUsing:Z

    if-eqz v0, :cond_7

    goto :goto_0

    .line 1509
    :cond_7
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isFingerprintSettings()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1510
    return v1

    .line 1512
    :cond_8
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShuttingDown:Z

    if-eqz v0, :cond_9

    .line 1513
    return v1

    .line 1515
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 1506
    :cond_a
    :goto_0
    return v1
.end method

.method private checkTaskChangeComplete()V
    .locals 3

    .line 1953
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTaskChangeComplete mNextTaskDrawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNextTaskDrawn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mExitTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNextTaskDrawn:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isLastTaskExit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1955
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1956
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mTaskLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1957
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1959
    :cond_1
    :goto_0
    return-void
.end method

.method private closeDoubleFPAnims()V
    .locals 1

    .line 652
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->disable()V

    .line 653
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postCloseDoubleFPAnim()V

    .line 654
    return-void
.end method

.method private delayStartActivityIfNeed()Z
    .locals 4

    .line 2057
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsAwake:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2058
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsUpdatingRotation:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsDisplayFreezing:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2064
    :cond_1
    return v1

    .line 2059
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mStartTaskOfThisScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2060
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mStartTaskOfThisScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2061
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ScreenSwitchService"

    const-string v1, "delay switch task"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private doCallbacksWhenSwitch(ILcn/nubia/server/screenswitch/SwitchCallbackList;)V
    .locals 5
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/nubia/server/screenswitch/SwitchCallbackList<",
            "Lnubia/os/screenswitch/IScreenSwitchCallback;",
            ">;)V"
        }
    .end annotation

    .line 864
    .local p2, "callbacks":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<Lnubia/os/screenswitch/IScreenSwitchCallback;>;"
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string v1, "doCallbacksWhenSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->beginBroadcast()I

    move-result v0

    .line 866
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 868
    :try_start_0
    invoke-virtual {p2, v1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnubia/os/screenswitch/IScreenSwitchCallback;

    invoke-interface {v2, p1}, Lnubia/os/screenswitch/IScreenSwitchCallback;->onSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    goto :goto_1

    .line 869
    :catch_0
    move-exception v2

    .line 870
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ScreenSwitchService"

    const-string v4, "RemoteException error "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    .end local v1    # "j":I
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->finishBroadcast()V

    .line 874
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 933
    const-string v0, "SCREEN SWITCH MANAGER (dumpsys nubia.screenswitch)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchImpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAutoSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAutoSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsFloatSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsFloatSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSwitchMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAwake:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDialogController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDialogShowing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDialogShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCameraUsing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isCameraUsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isIncall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isIncall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isInComunication:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInComunication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEnableInLearningWizard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEnableInLearningWizard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEyeProDialogShowing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEyeProDialogShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentActivity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inGameMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mInGameMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastUsingScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mLastUsingScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDualFingerprintPressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDualFingerprintPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMultiTasks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMultiTasks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/MotionDetector;->dump(Ljava/io/PrintWriter;)V

    .line 957
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/HorizontalDetector;->dump(Ljava/io/PrintWriter;)V

    .line 960
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchInterface;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchInterface;->dump(Ljava/io/PrintWriter;)V

    .line 961
    return-void
.end method

.method private getAM()Landroid/app/IActivityManager;
    .locals 1

    .line 1754
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAM:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 1755
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAM:Landroid/app/IActivityManager;

    .line 1757
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAM:Landroid/app/IActivityManager;

    return-object v0
.end method

.method private getCurrentDisplayId()I
    .locals 1

    .line 860
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchInterface;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchInterface;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private getHomeIntent()Landroid/content/Intent;
    .locals 3

    .line 1760
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHomeIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1761
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHomeIntent:Landroid/content/Intent;

    .line 1762
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1763
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHomeIntent:Landroid/content/Intent;

    const/high16 v1, 0x10210000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1766
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "DO_SWITCH_SCREEN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1768
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHomeIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private getPoweronUpScreen()I
    .locals 3

    .line 1472
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPoweronUpScreen:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPoweronUpScreen:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 1473
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPoweronUpScreen:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1475
    :cond_0
    return v1
.end method

.method private hasVideoCall()Z
    .locals 3

    .line 547
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isVideoIncomingCall"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private initBSPApplicatiionManager()V
    .locals 9

    .line 1561
    :try_start_0
    const-string v0, "android.os.BSPApplicationManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1562
    .local v0, "manager":Ljava/lang/Class;
    const-string v1, "PERFORMANCE_LOCK_TYPE_APP_LAUNCHER_START_APP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1563
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPerformanceType:I

    .line 1565
    const-string v2, "android.os.BSPApplicationManager$Trigger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1566
    .local v2, "trigger":Ljava/lang/Class;
    const-string v3, "acquirePerformanceLock"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v5

    const/4 v5, 0x3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAcquirePerformace:Ljava/lang/reflect/Method;

    .line 1568
    const-string/jumbo v3, "releasePerformanceLock"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mReleasePerformance:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    .end local v0    # "manager":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "trigger":Ljava/lang/Class;
    goto :goto_0

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1572
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initCameraListener()V
    .locals 3

    .line 556
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 557
    .local v0, "cameraManager":Landroid/hardware/camera2/CameraManager;
    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$7;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 586
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->reflectPreviewCallback(Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V

    .line 587
    return-void
.end method

.method private initIgnoreList()V
    .locals 1

    .line 1790
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIgnoreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1793
    return-void
.end method

.method private initList()V
    .locals 0

    .line 1771
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->initNotSwitchList()V

    .line 1772
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->initIgnoreList()V

    .line 1773
    return-void
.end method

.method private initMotionDetector()V
    .locals 2

    .line 335
    new-instance v0, Lcn/nubia/server/screenswitch/MotionDetector;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    .line 336
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$3;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$3;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector;->setMotionListener(Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;)V

    .line 350
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchMode:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector;->setSwitchMode(I)V

    .line 351
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updateMotionDetectorState()V

    .line 352
    return-void
.end method

.method private initNotSwitchList()V
    .locals 4

    .line 1783
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNotSwitchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1784
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNotSwitchList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;

    const-string v2, "com.android.incallui"

    const-string v3, "com.android.incallui.InCallActivity"

    invoke-direct {v1, p0, v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    return-void
.end method

.method private initPowerManager()V
    .locals 5

    .line 1603
    :try_start_0
    const-string v0, "android.os.PowerManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1604
    .local v0, "manager":Ljava/lang/Class;
    const-string/jumbo v1, "updateBrightScreenChange"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mUpdateBrightScreenChange:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    .end local v0    # "manager":Ljava/lang/Class;
    goto :goto_0

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1608
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initReflects()V
    .locals 2

    .line 248
    :try_start_0
    const-class v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const-string v1, "forcedScreenId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->forcedScreenIdField:Ljava/lang/reflect/Field;

    .line 249
    const-class v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const-string/jumbo v1, "startOrientationSensor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->startOrientationSensorField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 253
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->initBSPApplicatiionManager()V

    .line 255
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->initPowerManager()V

    .line 256
    return-void
.end method

.method private isAllHome()Z
    .locals 1

    .line 1933
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11500(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11500(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAllowed()Z
    .locals 1

    .line 1885
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInLearningWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1886
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEnableInLearningWizard:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1888
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMultiTasks:Z

    return v0
.end method

.method private isAutoSwitchEnabled()Z
    .locals 2

    .line 376
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAutoSwitch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    .line 380
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isFingerprintSettings()Z
    .locals 2

    .line 1527
    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cn.nubia.settings.fingerprint.FingerprintSettings"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentActivity:Ljava/lang/String;

    .line 1528
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    const/4 v0, 0x1

    return v0

    .line 1531
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInChatActivity()Z
    .locals 3

    .line 534
    const-string v0, "com.tencent.mobileqq"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "com.tencent.mobileqq.activity.SplashActivity"

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentActivity:Ljava/lang/String;

    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    return v1

    .line 538
    :cond_0
    const-string v0, "com.tencent.mm"

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.tencent.mm.ui.chatting.ChattingUI"

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentActivity:Ljava/lang/String;

    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm.ui.LauncherUI"

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentActivity:Ljava/lang/String;

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    :cond_1
    return v1

    .line 543
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isInIgnoreList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .line 1795
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsAwake:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1797
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIgnoreList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private isInLearningWizard()Z
    .locals 2

    .line 1519
    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.dualscreen.SwitchIntroduceActivity"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentActivity:Ljava/lang/String;

    .line 1520
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    const/4 v0, 0x1

    return v0

    .line 1523
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;",
            ">;)Z"
        }
    .end annotation

    .line 1775
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;

    .line 1776
    .local v1, "name":Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;
    invoke-virtual {v1, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1777
    const/4 v0, 0x1

    return v0

    .line 1779
    .end local v1    # "name":Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;
    :cond_0
    goto :goto_0

    .line 1780
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isInNotSwitchList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .line 1787
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNotSwitchList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private isInNubiaCamera()Z
    .locals 2

    .line 552
    const-string v0, "com.android.camera"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLastTaskExit()Z
    .locals 3

    .line 1924
    const/4 v0, 0x0

    .line 1925
    .local v0, "exitTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1926
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move-object v0, v2

    .line 1927
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    .line 1929
    :cond_0
    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11400(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v1

    return v1

    .line 1927
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private justChangeInfo(ILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/view/IApplicationToken;
    .param p5, "pid"    # I

    .line 1841
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0, p2, p3, p4, p5}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11000(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 1842
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1843
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0, p2, p3, p4, p5}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11000(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 1845
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1846
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0, p2, p3, p4, p5}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11000(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 1848
    :cond_1
    return-void
.end method

.method public static synthetic lambda$abortSwitchWhenScreenProjection$2(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 3

    .line 660
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    const v2, 0x30c0040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 662
    return-void
.end method

.method public static synthetic lambda$new$0(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->enable()V

    .line 373
    return-void
.end method

.method public static synthetic lambda$onPreviewStated$1(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 2

    .line 635
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mType:I

    .line 636
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mType:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->postDisplayDialog(I)V

    .line 637
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "requestSwitchScreen 5 eventType=2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void
.end method

.method public static synthetic lambda$postDialogVisiableChanged$3(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 1

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEyeProDialogShowing:Z

    .line 704
    return-void
.end method

.method private noteActivityExitFinish(IILandroid/view/IApplicationToken;)V
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "token"    # Landroid/view/IApplicationToken;

    .line 1968
    const/4 v0, 0x0

    .line 1969
    .local v0, "exitTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1970
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move-object v0, v2

    .line 1971
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1972
    if-eqz v0, :cond_1

    .line 1973
    sget-boolean v1, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ScreenSwitchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteExitFinishInner stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",exitTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILandroid/view/IApplicationToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1975
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11402(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z

    .line 1976
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->checkTaskChangeComplete()V

    .line 1979
    :cond_1
    return-void

    .line 1971
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private noteExitTopTaskInner(I)V
    .locals 3
    .param p1, "taskId"    # I

    .line 2006
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteExitTopTaskInner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11700(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V

    .line 2010
    :cond_0
    return-void
.end method

.method private noteSurfaceChangeInner(IILandroid/view/IApplicationToken;ZI)V
    .locals 0
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "token"    # Landroid/view/IApplicationToken;
    .param p4, "hasSurface"    # Z
    .param p5, "flags"    # I

    .line 1961
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updateDestroyStatus(IILandroid/view/IApplicationToken;Z)V

    .line 1962
    invoke-direct {p0, p1, p2, p5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->recordTaskWhenScreenOff(III)V

    .line 1963
    if-nez p4, :cond_0

    .line 1964
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->noteActivityExitFinish(IILandroid/view/IApplicationToken;)V

    .line 1966
    :cond_0
    return-void
.end method

.method private onPreviewStated(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 620
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewStarted cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->translateCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 622
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentCamera:Ljava/lang/String;

    .line 623
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 624
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->frontUsing:Z

    goto :goto_0

    .line 625
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->backUsing:Z

    .line 628
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->frontUsing:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->getCurrentDisplayId()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->backUsing:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->getCurrentDisplayId()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 629
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->frontUsing:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->hasVideoCall()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isIncall:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->waitVideoCall:Z

    if-eqz v0, :cond_8

    .line 630
    :cond_6
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->waitVideoCall:Z

    .line 631
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "wait for offhook"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_7
    return-void

    .line 634
    :cond_8
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$vEGteLepYLxZp4W9twNyNCZfOO8;

    invoke-direct {v2, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$vEGteLepYLxZp4W9twNyNCZfOO8;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    :cond_9
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->frontUsing:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->backUsing:Z

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    nop

    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->postCameraChanged(Z)V

    .line 641
    return-void
.end method

.method private postActivityResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 722
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInLearningWizard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isFingerprintSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->closeDoubleFPAnims()V

    .line 725
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    .local v2, "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    :try_start_1
    iget-object v3, v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    invoke-interface {v3, p1, p2}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->onActivityResume(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    goto :goto_1

    .line 729
    :catch_0
    move-exception v3

    .line 730
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "ScreenSwitchService"

    const-string/jumbo v5, "postPhoneStateChanged error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    .end local v2    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 733
    :cond_2
    monitor-exit v0

    .line 734
    return-void

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private postCameraChanged(Z)V
    .locals 6
    .param p1, "using"    # Z

    .line 683
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isCameraUsing:Z

    if-eq v0, p1, :cond_1

    .line 684
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isCameraUsing:Z

    .line 685
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    .local v2, "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    :try_start_1
    iget-object v3, v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->onCameraUsing(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    goto :goto_1

    .line 689
    :catch_0
    move-exception v3

    .line 690
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "ScreenSwitchService"

    const-string/jumbo v5, "postPhoneStateChanged error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v2    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 693
    :cond_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 695
    :cond_1
    :goto_2
    return-void
.end method

.method private postDialogVisiableChanged(ZI)V
    .locals 6
    .param p1, "vis"    # Z
    .param p2, "type"    # I

    .line 698
    if-eqz p1, :cond_0

    .line 699
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->closeDoubleFPAnims()V

    .line 700
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEyeProDialogShowing:Z

    goto :goto_0

    .line 702
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$I4qLITHxB10fySzrloO7mjFQ_QQ;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchService$I4qLITHxB10fySzrloO7mjFQ_QQ;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 707
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    .local v2, "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    if-eqz p1, :cond_2

    .line 710
    :try_start_1
    iget-object v3, v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    invoke-interface {v3, p2}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->onDialogShown(I)V

    goto :goto_2

    .line 714
    :catch_0
    move-exception v3

    goto :goto_3

    .line 712
    :cond_2
    iget-object v3, v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    invoke-interface {v3, p2}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->onDialogHide(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    :goto_2
    goto :goto_4

    .line 714
    :goto_3
    nop

    .line 715
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "ScreenSwitchService"

    const-string/jumbo v5, "postPhoneStateChanged error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    .end local v2    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4
    goto :goto_1

    .line 718
    :cond_3
    monitor-exit v0

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private postPhoneStateChanged(Z)V
    .locals 6
    .param p1, "isInCall"    # Z

    .line 668
    if-eqz p1, :cond_0

    .line 669
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->closeDoubleFPAnims()V

    .line 671
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 672
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    .local v2, "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    :try_start_1
    iget-object v3, v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    invoke-interface {v3, p1}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->onInCalling(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    goto :goto_1

    .line 675
    :catch_0
    move-exception v3

    .line 676
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "ScreenSwitchService"

    const-string/jumbo v5, "postPhoneStateChanged error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    .end local v2    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 679
    :cond_1
    monitor-exit v0

    .line 680
    return-void

    .line 679
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private recordCurrentTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)Z
    .locals 16
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "cls"    # Ljava/lang/String;
    .param p5, "token"    # Landroid/view/IApplicationToken;
    .param p6, "pid"    # I

    move-object/from16 v6, p0

    .line 1850
    iget-object v0, v6, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v0

    const/4 v7, 0x1

    move/from16 v15, p2

    if-ne v0, v15, :cond_0

    .line 1851
    move-object v0, v6

    move v1, v15

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->justChangeInfo(ILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 1852
    return v7

    .line 1854
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsSkipSwitchTask:Z

    .line 1855
    iget-object v1, v6, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    iget-object v2, v6, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11100(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V

    .line 1856
    iget-object v8, v6, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move/from16 v9, p1

    move v10, v15

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11200(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 1857
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v6, v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInNotSwitchList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1858
    iput-boolean v7, v6, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsSkipSwitchTask:Z

    .line 1860
    :cond_1
    return v0
.end method

.method private recordTaskWhenScreenOff(III)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "flags"    # I

    .line 1999
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsAwake:Z

    if-eqz v0, :cond_0

    return-void

    .line 2000
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2001
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 2002
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    const/high16 v1, 0x80000

    and-int/2addr v1, p3

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$8902(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z

    .line 2004
    :cond_3
    return-void
.end method

.method private reflectPreviewCallback(Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V
    .locals 9
    .param p1, "cm"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 589
    const/4 v0, 0x0

    move-object v1, v0

    .line 592
    .local v1, "previewCallback":Ljava/lang/Class;
    :try_start_0
    const-string v2, "android.hardware.camera2.CameraManager$PreviewStartedCallback"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 593
    const-class v2, Landroid/hardware/camera2/CameraManager;

    const-string/jumbo v3, "registerPreviewStartedCallback"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-class v7, Landroid/os/Handler;

    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 594
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 595
    .local v2, "registerPreviewCallback":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Class;

    aput-object v1, v5, v6

    new-instance v7, Lcn/nubia/server/screenswitch/ScreenSwitchService$PreviewCallbackProxy;

    invoke-direct {v7, p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$PreviewCallbackProxy;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V

    invoke-static {v3, v5, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 597
    .local v0, "instance":Ljava/lang/Object;
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object p2, v3, v8

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v0    # "instance":Ljava/lang/Object;
    goto :goto_0

    .line 598
    .end local v2    # "registerPreviewCallback":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ScreenSwitchService"

    const-string/jumbo v3, "register preview callback error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private registerApplicaitonManagerCallback()V
    .locals 4

    .line 519
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "registerApplicaitonManagerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    new-instance v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$6;

    invoke-direct {v0, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$6;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    const-wide/16 v1, 0x1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 531
    return-void
.end method

.method private registerReceivers()V
    .locals 3

    .line 431
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 432
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    const-string v1, "cn.nubia.action.AUDIO_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string v1, "cn.nubia.camera.action.SWITCH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    const-string v1, "cn.nubia.action.SWITCH_SCREEN_GUIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    const-string v1, "cn.nubia.action.DOUBLE_FP_ANIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string v1, "cn.nubia.action.GAME_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;

    invoke-direct {v2, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$5;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    return-void
.end method

.method private registerSettingsOberser()V
    .locals 23

    .line 266
    move-object/from16 v12, p0

    const-string v0, "auto_switch_screen"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 267
    .local v13, "settingUri":Landroid/net/Uri;
    const-string v0, "float_switch_screen"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 268
    .local v14, "floatUri":Landroid/net/Uri;
    const-string/jumbo v0, "isVideoIncomingCall"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 269
    .local v15, "videoUri":Landroid/net/Uri;
    const-string/jumbo v0, "switch_screen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 270
    .local v11, "switchModeUri":Landroid/net/Uri;
    const-string/jumbo v0, "poweron_upturned_screen"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 271
    .local v10, "poweronUri":Landroid/net/Uri;
    const-string/jumbo v0, "manual_switch_directly"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 272
    .local v9, "donotRemindUri":Landroid/net/Uri;
    const-string/jumbo v0, "nubia_switch_screen_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 273
    .local v8, "enableInWizardUri":Landroid/net/Uri;
    const-string/jumbo v0, "multi_screen_multi_tasks"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 274
    .local v7, "multiTasksUri":Landroid/net/Uri;
    const-string v0, "always_show_main_screen_when_call"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 276
    .local v6, "showMainWhenCallUri":Landroid/net/Uri;
    new-instance v16, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;

    iget-object v2, v12, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    move-object v1, v12

    move-object v3, v13

    move-object v4, v15

    move-object v5, v11

    move-object/from16 v17, v6

    move-object v6, v14

    .line 276
    .end local v6    # "showMainWhenCallUri":Landroid/net/Uri;
    .local v17, "showMainWhenCallUri":Landroid/net/Uri;
    move-object/from16 v18, v7

    move-object v7, v10

    .line 276
    .end local v7    # "multiTasksUri":Landroid/net/Uri;
    .local v18, "multiTasksUri":Landroid/net/Uri;
    move-object/from16 v19, v8

    move-object v8, v9

    .line 276
    .end local v8    # "enableInWizardUri":Landroid/net/Uri;
    .local v19, "enableInWizardUri":Landroid/net/Uri;
    move-object/from16 v20, v9

    move-object/from16 v9, v19

    .line 276
    .end local v9    # "donotRemindUri":Landroid/net/Uri;
    .local v20, "donotRemindUri":Landroid/net/Uri;
    move-object/from16 v21, v10

    move-object/from16 v10, v18

    .line 276
    .end local v10    # "poweronUri":Landroid/net/Uri;
    .local v21, "poweronUri":Landroid/net/Uri;
    move-object/from16 v22, v11

    move-object/from16 v11, v17

    .line 276
    .end local v11    # "switchModeUri":Landroid/net/Uri;
    .local v22, "switchModeUri":Landroid/net/Uri;
    invoke-direct/range {v0 .. v11}, Lcn/nubia/server/screenswitch/ScreenSwitchService$2;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/os/Handler;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 323
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, v12, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 324
    iget-object v1, v12, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v14, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 325
    iget-object v1, v12, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v15, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 326
    iget-object v1, v12, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v3, v22

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 327
    .end local v22    # "switchModeUri":Landroid/net/Uri;
    .local v3, "switchModeUri":Landroid/net/Uri;
    iget-object v1, v12, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v4, v21

    invoke-virtual {v1, v4, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 328
    .end local v21    # "poweronUri":Landroid/net/Uri;
    .local v4, "poweronUri":Landroid/net/Uri;
    iget-object v1, v12, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v5, v20

    invoke-virtual {v1, v5, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 329
    .end local v20    # "donotRemindUri":Landroid/net/Uri;
    .local v5, "donotRemindUri":Landroid/net/Uri;
    iget-object v1, v12, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v6, v19

    invoke-virtual {v1, v6, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 330
    .end local v19    # "enableInWizardUri":Landroid/net/Uri;
    .local v6, "enableInWizardUri":Landroid/net/Uri;
    iget-object v1, v12, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v7, v18

    invoke-virtual {v1, v7, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    .end local v18    # "multiTasksUri":Landroid/net/Uri;
    .restart local v7    # "multiTasksUri":Landroid/net/Uri;
    iget-object v1, v12, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v8, v17

    invoke-virtual {v1, v8, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 332
    .end local v17    # "showMainWhenCallUri":Landroid/net/Uri;
    .local v8, "showMainWhenCallUri":Landroid/net/Uri;
    return-void
.end method

.method public static releasePerformance()V
    .locals 5

    .line 1588
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->sPerformanceBinder:Landroid/os/Binder;

    if-nez v0, :cond_0

    return-void

    .line 1589
    :cond_0
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mReleasePerformance:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1591
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v2, "releaseFacePerformance"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_1
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mReleasePerformance:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcn/nubia/server/screenswitch/ScreenSwitchService;->sPerformanceBinder:Landroid/os/Binder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    goto :goto_0

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1597
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    sput-object v1, Lcn/nubia/server/screenswitch/ScreenSwitchService;->sPerformanceBinder:Landroid/os/Binder;

    .line 1598
    return-void
.end method

.method private removeListener(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 914
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 916
    .local v1, "recordCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 917
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;

    iget-object v4, v4, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->binder:Landroid/os/IBinder;

    if-ne v4, p1, :cond_1

    .line 918
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;

    iget-object v4, v4, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->deathRecipient:Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;

    if-eqz v4, :cond_0

    .line 919
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;

    iget-object v4, v4, Lcn/nubia/server/screenswitch/ScreenSwitchService$Record;->deathRecipient:Lcn/nubia/server/screenswitch/ScreenSwitchService$SDeathRecipient;

    invoke-interface {p1, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 921
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 922
    monitor-exit v0

    return-void

    .line 916
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 925
    .end local v1    # "recordCount":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 926
    return-void

    .line 925
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetPowerRequest()V
    .locals 2

    .line 1535
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updateforcedScreenId(Ljava/lang/Object;I)V

    .line 1536
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updatestartOrientationSensor(Ljava/lang/Object;Z)V

    .line 1537
    return-void
.end method

.method private resetScreenState()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchInterface;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchInterface;->getCurrentLCDState()I

    move-result v0

    .line 240
    .local v0, "state":I
    sget-boolean v1, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ScreenSwitchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetScreenState state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updateScreenState(I)V

    .line 242
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_in_use"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    return-void
.end method

.method private setScreenTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z
    .locals 15
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "cls"    # Ljava/lang/String;
    .param p5, "token"    # Landroid/view/IApplicationToken;
    .param p6, "isIgnore"    # Z
    .param p7, "pid"    # I

    move-object v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p6

    .line 1801
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenTask enter stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isIgnore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_0
    move-object v0, v7

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p5

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->recordCurrentTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)Z

    move-result v13

    .line 1804
    .local v13, "isSameTask":Z
    const/4 v14, 0x1

    if-nez v12, :cond_b

    if-nez v13, :cond_b

    invoke-direct {v7, v10, v11}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isInIgnoreList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 1809
    :cond_1
    iget-boolean v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsSkipSwitchTask:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHasDelaySwitchTask:Z

    if-eqz v0, :cond_6

    .line 1810
    iget v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    if-nez v0, :cond_2

    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    goto :goto_0

    :cond_2
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1811
    .local v0, "mayNotTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    :goto_0
    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v2

    if-ne v9, v2, :cond_6

    .line 1812
    iget v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    if-nez v2, :cond_3

    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    goto :goto_1

    :cond_3
    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1813
    .local v2, "mayBeTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    :goto_1
    iput-boolean v1, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHasDelaySwitchTask:Z

    .line 1814
    sget-boolean v3, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "ScreenSwitchService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mayNotTask = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_4
    iget-object v3, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v3

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v4

    if-eq v3, v4, :cond_5

    iget-object v3, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10700(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1816
    invoke-direct {v7}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->startTaskOfThisScreen()V

    .line 1817
    return v1

    .line 1819
    :cond_5
    return v14

    .line 1822
    .end local v0    # "mayNotTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .end local v2    # "mayBeTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    :cond_6
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10800(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1823
    iput-boolean v1, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsSkipSwitchTask:Z

    .line 1824
    iput-boolean v1, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHasDelaySwitchTask:Z

    .line 1826
    :cond_7
    iget v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    if-nez v0, :cond_8

    .line 1827
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p5

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10900(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 1828
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-direct {v7, v9, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->changeTaskToLauncherIfNeeded(ILcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V

    goto :goto_2

    .line 1829
    :cond_8
    iget v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    if-ne v0, v14, :cond_9

    .line 1830
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p5

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10900(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 1831
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-direct {v7, v9, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->changeTaskToLauncherIfNeeded(ILcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V

    .line 1833
    :cond_9
    :goto_2
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenTask stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mShowingScreenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mFrontTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBackTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_a
    return v14

    .line 1805
    :cond_b
    :goto_3
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isIgnore setScreenTask stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",cls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mShowingScreenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mFrontTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBackTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_c
    return v14
.end method

.method private shouldDelayAsAod(Z)Z
    .locals 3
    .param p1, "isAod"    # Z

    .line 2025
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11300(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2026
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10800(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2027
    :cond_1
    if-eqz p1, :cond_2

    .line 2028
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    monitor-enter v0

    .line 2029
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mIsDelay:Z

    .line 2030
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v2

    iput v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mFrontTaskId:I

    .line 2031
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v2

    iput v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mBackTaskId:I

    .line 2032
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2033
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ScreenSwitchService"

    const-string v1, "aod delay task change"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2032
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2035
    :cond_2
    :goto_0
    return p1
.end method

.method private startLauncherIfTaskNotFound(ILcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "nextTask"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1919
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10802(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z

    .line 1920
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLauncherIfTaskNotFound mFrontTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBackTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->startTaskOfScreen(I)V

    .line 1922
    return-void
.end method

.method private startTaskOfScreen(I)V
    .locals 6
    .param p1, "screenId"    # I

    .line 1891
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1892
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1893
    .local v0, "lastTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    :goto_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1894
    .local v1, "nextTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11300(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10800(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 1895
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->delayStartActivityIfNeed()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 1896
    :cond_4
    sget-boolean v2, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ScreenSwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTaskOfScreen nextTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",lastTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNextTaskDrawn:Z

    .line 1898
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1899
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mTempTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v3, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11100(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V

    .line 1900
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mTempTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1901
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1902
    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10800(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1904
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->getAM()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 1905
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->getAM()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v5

    invoke-interface {v4, v5, v2, v3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1906
    :catch_0
    move-exception v4

    .line 1907
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1908
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNextTaskDrawn:Z

    .line 1909
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1910
    :try_start_2
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1911
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1912
    invoke-direct {p0, p1, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->startLauncherIfTaskNotFound(ILcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V

    .line 1913
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 1911
    .restart local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1915
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1917
    :goto_3
    return-void

    .line 1901
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method private startTaskOfScreenIfNeed(ZZ)V
    .locals 2
    .param p1, "isSkip"    # Z
    .param p2, "isAod"    # Z

    .line 2012
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMultiTasks:Z

    if-nez v0, :cond_0

    return-void

    .line 2013
    :cond_0
    const-string v0, "cn.nubia.factory"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11800(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2014
    :cond_1
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    :goto_0
    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mKeepTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 2015
    if-nez p1, :cond_3

    .line 2016
    invoke-direct {p0, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->shouldDelayAsAod(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2017
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mShowingScreenId:I

    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->startTaskOfScreen(I)V

    goto :goto_1

    .line 2020
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->changeRecordWhenUseCamera()V

    .line 2021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHasDelaySwitchTask:Z

    .line 2023
    :cond_4
    :goto_1
    return-void
.end method

.method private startTaskOfThisScreen()V
    .locals 2

    .line 1838
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mStartTaskOfThisScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1839
    return-void
.end method

.method private storageLastUsingScreen()V
    .locals 2

    .line 929
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mLastUsingScreen:I

    .line 930
    return-void
.end method

.method private switchScreenLocked(I)V
    .locals 1
    .param p1, "target"    # I

    .line 737
    const-string/jumbo v0, "motion"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->switchScreenLocked(ILjava/lang/String;)V

    .line 738
    return-void
.end method

.method private switchScreenLocked(ILjava/lang/String;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 741
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sunfei switch screen start target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mReadLcdStateHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 743
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "sunfei switch screen finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_1
    return-void
.end method

.method private translateCameraId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 644
    move-object v0, p1

    .line 645
    .local v0, "translate":Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    :cond_0
    const-string v0, "0"

    .line 648
    :cond_1
    return-object v0
.end method

.method private updateDestroyStatus(IILandroid/view/IApplicationToken;Z)V
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "token"    # Landroid/view/IApplicationToken;
    .param p4, "hasSurface"    # Z

    .line 1981
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v0, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILandroid/view/IApplicationToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    xor-int/lit8 v1, p4, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11402(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z

    .line 1984
    :cond_0
    const/4 v0, 0x0

    .line 1985
    .local v0, "exitTask":Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1986
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move-object v0, v2

    .line 1987
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1988
    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILandroid/view/IApplicationToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1989
    xor-int/lit8 v1, p4, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11402(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z

    .line 1991
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v1, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILandroid/view/IApplicationToken;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1992
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    xor-int/lit8 v2, p4, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11402(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z

    goto :goto_0

    .line 1993
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-static {v1, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILandroid/view/IApplicationToken;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1994
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    xor-int/lit8 v2, p4, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$11402(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z

    .line 1996
    :cond_3
    :goto_0
    sget-boolean v1, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "ScreenSwitchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDestroyStatus stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mFrontTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mBackTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_4
    return-void

    .line 1987
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateMotionDetectorState()V
    .locals 1

    .line 355
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updateMotionDetectorState(Z)V

    .line 356
    return-void
.end method

.method private updateMotionDetectorState(Z)V
    .locals 4
    .param p1, "direct"    # Z

    .line 359
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsAwake:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isAutoSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mInGameMode:Z

    if-nez v0, :cond_1

    .line 360
    if-eqz p1, :cond_0

    .line 361
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->enable()V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetectorEnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetectorEnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->disable()V

    .line 369
    :goto_0
    return-void
.end method

.method private updateScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 855
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mScreenState:I

    .line 856
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/MotionDetector;->setCurrentDisplayId(I)V

    .line 857
    return-void
.end method

.method private updateforcedScreenId(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # I

    .line 1540
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->forcedScreenIdField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1542
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->forcedScreenIdField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    goto :goto_0

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1547
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private updatestartOrientationSensor(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Z

    .line 1550
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->startOrientationSensorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1552
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->startOrientationSensorField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    goto :goto_0

    .line 1553
    :catch_0
    move-exception v0

    .line 1554
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1557
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private waitForBeofreSyncCallbacks()V
    .locals 4

    .line 888
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBeforeSyncSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->checkComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBeforeSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBeforeSyncLock:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    goto :goto_0

    .line 895
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 892
    :catch_0
    move-exception v1

    .line 893
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ScreenSwitchService"

    const-string/jumbo v3, "synchronized wait error "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 897
    :cond_0
    :goto_2
    return-void
.end method

.method private waitForCallbacksComplete()V
    .locals 4

    .line 877
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->checkAllCallbacksComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mCallbackLock:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    goto :goto_0

    .line 884
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 881
    :catch_0
    move-exception v1

    .line 882
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ScreenSwitchService"

    const-string/jumbo v3, "synchronized wait error "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 886
    :cond_0
    :goto_2
    return-void
.end method

.method private waitForTaskChangeComplete()V
    .locals 4

    .line 1937
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isAllHome()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1938
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNextTaskDrawn:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isLastTaskExit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1939
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1941
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mTaskLock:Ljava/lang/Object;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1944
    goto :goto_0

    .line 1945
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1942
    :catch_0
    move-exception v1

    .line 1943
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ScreenSwitchService"

    const-string/jumbo v3, "waitForTaskChangeComplete error "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1945
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1946
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mNextTaskDrawn:Z

    .line 1948
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1949
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1950
    monitor-exit v1

    .line 1951
    return-void

    .line 1950
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1945
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1937
    :cond_3
    :goto_2
    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 4

    .line 411
    new-instance v0, Lcn/nubia/server/screenswitch/ScreenSwitchService$4;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$4;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 425
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 426
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 425
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 428
    return-void
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .line 910
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mBinder:Lcn/nubia/server/screenswitch/ScreenSwitchService$BinderService;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 905
    const-string/jumbo v0, "nubia.screenswitch"

    return-object v0
.end method

.method public onStart()V
    .locals 3

    .line 260
    invoke-super {p0}, Lcn/nubia/server/NubiaSystemService;->onStart()V

    .line 261
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "onStart "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method protected systemReady()V
    .locals 7

    .line 176
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "systemReady "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 178
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 179
    .local v0, "internal":Landroid/hardware/display/DisplayManagerInternal;
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setDisplayManagerInternal(Landroid/hardware/display/DisplayManagerInternal;)V

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsAwake:Z

    .line 181
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_switch_screen"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAutoSwitch:Z

    .line 183
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "float_switch_screen"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsFloatSwitch:Z

    .line 185
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "switch_screen_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchMode:I

    .line 187
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "manual_switch_directly"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDonotRemind:Z

    .line 188
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "nubia_switch_screen_enable"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mEnableInLearningWizard:Z

    .line 189
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "multi_screen_multi_tasks"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mMultiTasks:Z

    .line 190
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "always_show_main_screen_when_call"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_6

    move v2, v1

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAlwaysShowMainScreenWhenCall:Z

    .line 192
    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mIsFloatSwitch:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAutoSwitch:Z

    if-nez v2, :cond_9

    .line 193
    sget-boolean v2, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "ScreenSwitchService"

    const-string/jumbo v4, "switch state mismatch, modify it"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_7
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "auto_switch_screen"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "auto_switch_screen"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_8

    move v2, v1

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAutoSwitch:Z

    .line 199
    :cond_9
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 200
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPowerManager:Landroid/os/PowerManager;

    .line 201
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mAudioManager:Landroid/media/AudioManager;

    .line 202
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 204
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "HorizontalDetector"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "detectorThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 206
    new-instance v4, Lcn/nubia/server/screenswitch/HorizontalDetector;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcn/nubia/server/screenswitch/HorizontalDetector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

    .line 207
    new-instance v4, Lcn/nubia/server/screenswitch/DaemonDetector;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcn/nubia/server/screenswitch/DaemonDetector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDaemonDetector:Lcn/nubia/server/screenswitch/DaemonDetector;

    .line 208
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->registerApplicaitonManagerCallback()V

    .line 209
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->registerReceivers()V

    .line 210
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->initCameraListener()V

    .line 211
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->registerSettingsOberser()V

    .line 212
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->initMotionDetector()V

    .line 213
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->isDeviceProvisionedInSettingsDb()Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDeviceProvisioned:Z

    .line 214
    iget-boolean v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mDeviceProvisioned:Z

    if-nez v4, :cond_a

    .line 215
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->watchForDeviceProvisioning()V

    .line 218
    :cond_a
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "ScreenSwitchManager"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 219
    .local v4, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 220
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mReadLcdStateHandler:Landroid/os/Handler;

    .line 222
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "poweron_upturned_screen"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPoweronUpScreen:I

    .line 224
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->initReflects()V

    .line 225
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->resetScreenState()V

    .line 226
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

    new-instance v6, Lcn/nubia/server/screenswitch/ScreenSwitchService$1;

    invoke-direct {v6, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$1;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    invoke-virtual {v5, v6}, Lcn/nubia/server/screenswitch/HorizontalDetector;->setResultListener(Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;)V

    .line 234
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchInterface;

    invoke-virtual {v5}, Lcn/nubia/server/screenswitch/SwitchInterface;->getCurrentLCDState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    move v3, v1

    nop

    :cond_b
    iput-boolean v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mLossSecondScreen:Z

    .line 235
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mSystemReady:Z

    .line 236
    return-void
.end method

.method public updateBrightScreenChange(I)V
    .locals 5
    .param p1, "backScreen"    # I

    .line 1610
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mUpdateBrightScreenChange:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 1612
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBrightScreenChange backScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :cond_0
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mUpdateBrightScreenChange:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    goto :goto_0

    .line 1614
    :catch_0
    move-exception v0

    .line 1615
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1618
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
