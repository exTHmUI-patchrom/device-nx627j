.class public Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
.super Lcn/nubia/server/NubiaSystemService;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;,
        Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;,
        Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;,
        Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;,
        Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;,
        Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;,
        Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;,
        Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;,
        Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;,
        Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$PreviewCallbackProxy;
    }
.end annotation


# static fields
.field private static final ACTION_SCREEN_CHANGED:Ljava/lang/String; = "cn.nubia.action.SCREEN_CHANGED"

.field private static DEBUG:Z = false

.field private static final HOME_STACK_ID:I = 0x0

.field private static final SCREEN_IN_USE:Ljava/lang/String; = "screen_in_use"

.field private static final SERVICE_NAME:Ljava/lang/String; = "nubia.screenswitch"

.field private static final SETTINGS_ALWAYS_SHOW_MAIN_SCREEN_OR_BY_SENSOR:Ljava/lang/String; = "always_show_main_screen_when_call"

.field private static final SETTINGS_POWERON_UPTURNED_SCREEN:Ljava/lang/String; = "poweron_upturned_screen"

.field private static final SETTINGS_SWITCH_SCREEN_MODE:Ljava/lang/String; = "switch_screen_mode"

.field private static final SWITCH_SCREEN_FLOAT:Ljava/lang/String; = "float_switch_screen"

.field private static final TAG:Ljava/lang/String; = "ScreenSwitchService"

.field private static mAcquirePerformace:Ljava/lang/reflect/Method;

.field static mBackScreenPowerMode:I

.field static mFrontScreenPowerMode:I

.field private static mPerformanceType:I

.field private static mReleasePerformance:Ljava/lang/reflect/Method;

.field private static mThreeFingerSwipeBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUpdateBrightScreenChange:Ljava/lang/reflect/Method;

.field private static sPerformanceBinder:Landroid/os/Binder;


# instance fields
.field private final SETTINGS_DUALSCREEN_SHORTCUT:Ljava/lang/String;

.field private final SETTINGS_MULTI_SCREEN_MULTI_TASKS:Ljava/lang/String;

.field private final SETTINGS_MULTI_TASKS_FOR_HEADSUP:Ljava/lang/String;

.field private final SETTINGS_MULTI_TASKS_WITH_THREE_FINGERS:Ljava/lang/String;

.field private final SETTINGS_PRESSURE_LONG_SWITCH:Ljava/lang/String;

.field private backUsing:Z

.field private currentActivity:Ljava/lang/String;

.field private currentPackage:Ljava/lang/String;

.field private forcedScreenId:I

.field private forcedScreenIdField:Ljava/lang/reflect/Field;

.field private frontUsing:Z

.field private isCameraUsing:Z

.field private volatile isEarprieceUsing:Z

.field private volatile isInComunication:Z

.field private volatile isIncall:Z

.field private isRinging:Z

.field private mAM:Landroid/app/IActivityManager;

.field private mAODHelper:Lcn/nubia/server/DualAODScreenStateHelper;

.field private final mAfterSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/server/screenswitch/SwitchCallbackList<",
            "Lnubia/os/screenswitch/IScreenSwitchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAlwaysWakeUpMainScreenOrBySensor:Z

.field private mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private volatile mAutoSwitch:Z

.field private mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

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

.field private mBinder:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

.field private mCallbackLock:Ljava/lang/Object;

.field private mCameraSwitchToken:Landroid/view/IApplicationToken;

.field private mContext:Landroid/content/Context;

.field private mCurrentCamera:Ljava/lang/String;

.field private mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

.field private mDaemonDetector:Lcn/nubia/server/screenswitch/DaemonDetector;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

.field private volatile mDialogShowing:Z

.field private mDisplay:Landroid/view/Display;

.field private mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private volatile mDonotRemind:Z

.field private mDualFingerprintPressed:Z

.field private volatile mDualScreenShortcutEnable:Z

.field private volatile mEnableInLearningWizard:Z

.field private mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

.field private mExitTaskLock:Ljava/lang/Object;

.field private volatile mEyeProDialogShowing:Z

.field private mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mHasDelaySwitchTask:Z

.field private volatile mHasSwichScreenOnce:Z

.field private volatile mHeadsUpShowing:Z

.field private volatile mHeadsUpSwitchEnable:Z

.field private mHomeIntent:Landroid/content/Intent;

.field private mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

.field private mIgnoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;",
            ">;"
        }
    .end annotation
.end field

.field private mInGameMode:Z

.field private volatile mIsAwake:Z

.field private volatile mIsDisplayFreezing:Z

.field private mIsDuringPowerOff:Z

.field private volatile mIsFloatSwitch:Z

.field private mIsFrontPowerOff:Z

.field private mIsScreenSwitchForSpecial:Z

.field private volatile mIsSkipSwitchTask:Z

.field private volatile mIsUpdatingRotation:Z

.field private volatile mIsWeixinPay:Z

.field private mKeepTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private volatile mLandscapeSwipe:Z

.field private mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

.field private volatile mLastUsingScreen:I

.field private mLossSecondScreen:Z

.field private mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

.field private mMotionDetectorEnable:Ljava/lang/Runnable;

.field private volatile mMultiTasks:Z

.field private volatile mNextTaskDrawn:Z

.field private mNotIgnoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;",
            ">;"
        }
    .end annotation
.end field

.field private mNotSwitchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNotificationPanelExpand:Z

.field private mNubiaTrackManager:Lcom/android/server/NubiaTrackManager;

.field private mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private volatile mPoweronUpScreen:I

.field private mPressSensorActive:Z

.field private mPressSensorInternal:Lnubia/os/presssensor/PressSensorInternal;

.field private volatile mPressureLongSwitchEnabled:Z

.field private mReadLcdStateHandler:Landroid/os/Handler;

.field private final mScreenChangedIntent:Landroid/content/Intent;

.field private mScreenFaceUpListener:Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

.field private volatile mScreenState:I

.field private volatile mScreenStateChangedOnce:Z

.field private mScreenSwitchStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorTargetId:I

.field private volatile mShowingScreenId:I

.field private volatile mShuttingDown:Z

.field private mStartTaskOfThisScreenRunnable:Ljava/lang/Runnable;

.field private mSwitchCallback:Lcn/nubia/server/screenswitch/SwitchInterface$Callback;

.field private mSwitchCompleteTime:J

.field private final mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

.field private volatile mSwitchMode:I

.field private mSystemReady:Z

.field private mTaskLock:Ljava/lang/Object;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTempTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

.field private volatile mThreeFingerSwipe:Z

.field private volatile mThreeFingersSwitchEnable:Z

.field private mType:I

.field private startOrientationSensor:Z

.field private startOrientationSensorField:Ljava/lang/reflect/Field;

.field private waitVideoCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    .line 159
    const/16 v1, 0xf

    sput v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPerformanceType:I

    .line 196
    const/4 v1, 0x2

    sput v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontScreenPowerMode:I

    .line 197
    sput v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackScreenPowerMode:I

    .line 2223
    const-string v2, "cn.nubia.quicksearchbox/cn.nubia.quicksearchbox.SearchActivity"

    const-string/jumbo v3, "tv.danmaku.bili/tv.danmaku.bili.ui.video.VideoDetailsActivity"

    const-string v4, "cn.nubia.contacts/cn.nubia.contacts.ContactShortcut"

    const-string v5, "cn.nubia.launcher/com.android.launcher3.SimpleWallpaperActivity"

    const-string v6, "com.android.camera/com.android.camera.CameraLauncher"

    const-string v7, "com.android.camera/cn.nubia.camera.CameraActivity"

    const-string v8, "cn.nubia.eyesprotection/cn.nubia.eyesprotection.EyesMainActivity"

    const-string v9, "cn.nubia.thememanager/cn.nubia.thememanager.ui.activity.HomeActivity"

    const-string v10, "cn.nubia.dualshortcut/cn.nubia.dualshortcut.setting.AppUninstallActivity"

    const-string v11, "com.halfbrick.fruitninja"

    const-string v12, ".fruitninja"

    const-string v13, "com.tencent.tmgp.hlqsgdzz2"

    const-string v14, "com.msdfl.qxgdz"

    const-string v15, "cn.nubia.factory"

    const-string v16, "com.android.incallui"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mThreeFingerSwipeBlackList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 209
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-direct {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    .line 136
    new-instance v0, Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-direct {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSyncSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    .line 137
    new-instance v0, Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-direct {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAfterSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCallbackLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSyncLock:Ljava/lang/Object;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->forcedScreenId:I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startOrientationSensor:Z

    .line 148
    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenState:I

    .line 149
    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLastUsingScreen:I

    .line 152
    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPoweronUpScreen:I

    .line 154
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDonotRemind:Z

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEnableInLearningWizard:Z

    .line 172
    const-string/jumbo v2, "multi_screen_multi_tasks"

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->SETTINGS_MULTI_SCREEN_MULTI_TASKS:Ljava/lang/String;

    .line 179
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHeadsUpShowing:Z

    .line 181
    const-string/jumbo v2, "nubia_pressure_long_switch"

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->SETTINGS_PRESSURE_LONG_SWITCH:Ljava/lang/String;

    .line 185
    const-string v2, "dualscreen_screen_notification"

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->SETTINGS_MULTI_TASKS_FOR_HEADSUP:Ljava/lang/String;

    .line 186
    const-string v2, "dualscreen_send_application"

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->SETTINGS_MULTI_TASKS_WITH_THREE_FINGERS:Ljava/lang/String;

    .line 187
    const-string/jumbo v2, "nubia_dualscreen_shortcut_switch"

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->SETTINGS_DUALSCREEN_SHORTCUT:Ljava/lang/String;

    .line 199
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsDuringPowerOff:Z

    .line 200
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsFrontPowerOff:Z

    .line 201
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;

    invoke-direct {v2, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchCallback:Lcn/nubia/server/screenswitch/SwitchInterface$Callback;

    .line 514
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$8;

    invoke-direct {v2, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$8;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetectorEnable:Ljava/lang/Runnable;

    .line 912
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchCompleteTime:J

    .line 2195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotSwitchList:Ljava/util/ArrayList;

    .line 2196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIgnoreList:Ljava/util/ArrayList;

    .line 2197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotIgnoreList:Ljava/util/ArrayList;

    .line 2198
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2199
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2200
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2201
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2202
    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mTempTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2203
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mKeepTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2204
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAM:Landroid/app/IActivityManager;

    .line 2206
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHomeIntent:Landroid/content/Intent;

    .line 2207
    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    .line 2208
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mTaskLock:Ljava/lang/Object;

    .line 2209
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNextTaskDrawn:Z

    .line 2210
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTaskLock:Ljava/lang/Object;

    .line 2211
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2212
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsSkipSwitchTask:Z

    .line 2213
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHasDelaySwitchTask:Z

    .line 2214
    iput-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCameraSwitchToken:Landroid/view/IApplicationToken;

    .line 2215
    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    invoke-direct {v1, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V

    iput-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    .line 2216
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsUpdatingRotation:Z

    .line 2217
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsDisplayFreezing:Z

    .line 2218
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mThreeFingerSwipe:Z

    .line 2219
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLandscapeSwipe:Z

    .line 2220
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotificationPanelExpand:Z

    .line 2221
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsWeixinPay:Z

    .line 2240
    new-instance v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$13;

    invoke-direct {v0, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$13;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mStartTaskOfThisScreenRunnable:Ljava/lang/Runnable;

    .line 210
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "nubia.switchscreen"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandlerThread:Landroid/os/HandlerThread;

    .line 211
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 212
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    .line 213
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    .line 214
    new-instance v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

    invoke-direct {v0, p0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBinder:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.action.SCREEN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenChangedIntent:Landroid/content/Intent;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    .line 218
    new-instance v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    invoke-direct {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    .line 219
    new-instance v0, Lcn/nubia/server/screenswitch/SwitchImplFor627;

    invoke-direct {v0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    .line 220
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchCallback:Lcn/nubia/server/screenswitch/SwitchInterface$Callback;

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setCallback(Lcn/nubia/server/screenswitch/SwitchInterface$Callback;)V

    .line 222
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initList()V

    .line 223
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 224
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDisplay:Landroid/view/Display;

    .line 225
    new-instance v1, Lcn/nubia/server/DualAODScreenStateHelper;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/nubia/server/DualAODScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAODHelper:Lcn/nubia/server/DualAODScreenStateHelper;

    .line 226
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAODHelper:Lcn/nubia/server/DualAODScreenStateHelper;

    invoke-virtual {v1, v2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setAODHelper(Lcn/nubia/server/DualAODScreenStateHelper;)V

    .line 227
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$2;

    invoke-direct {v2, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$2;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    invoke-virtual {v1, v2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setAODModeCallback(Lcn/nubia/server/screenswitch/SwitchImplFor627$AODModeCallBack;)V

    .line 234
    return-void
.end method

.method private abortSwitchWhenScreenProjection(Z)Z
    .locals 3
    .param p1, "showToast"    # Z

    .line 822
    const-string v0, "1"

    const-string/jumbo v1, "sys.aod.disable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 823
    .local v0, "inScreenProjection":Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 824
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$0ZrRUlRN_NZz6DGjJZ-RMsIH0lw;

    invoke-direct {v2, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$0ZrRUlRN_NZz6DGjJZ-RMsIH0lw;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 830
    :cond_0
    return v0
.end method

.method static synthetic access$000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsFrontPowerOff:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsFrontPowerOff:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsDuringPowerOff:Z

    return v0
.end method

.method static synthetic access$10000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->checkAllCallbacksComplete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsDuringPowerOff:Z

    return p1
.end method

.method static synthetic access$10200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$10400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$10402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 91
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object p1
.end method

.method static synthetic access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateforcedScreenId(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Z

    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updatestartOrientationSensor(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$10800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/HorizontalDetector;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

    return-object v0
.end method

.method static synthetic access$10902(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressSensorActive:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAutoSwitch:Z

    return v0
.end method

.method static synthetic access$11000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updatePressSensorStartState(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAutoSwitch:Z

    return p1
.end method

.method static synthetic access$11100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInLearningWizard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/view/IApplicationToken;
    .param p6, "x6"    # Z
    .param p7, "x7"    # I

    .line 91
    invoke-direct/range {p0 .. p7}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->setScreenTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->swipeStartLastTask()V

    return-void
.end method

.method static synthetic access$11400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mThreeFingerSwipe:Z

    return v0
.end method

.method static synthetic access$11402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mThreeFingerSwipe:Z

    return p1
.end method

.method static synthetic access$11500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLandscapeSwipe:Z

    return v0
.end method

.method static synthetic access$11502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLandscapeSwipe:Z

    return p1
.end method

.method static synthetic access$11600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->noteExitTopTaskInner(I)V

    return-void
.end method

.method static synthetic access$11700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNextTaskDrawn:Z

    return v0
.end method

.method static synthetic access$11702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNextTaskDrawn:Z

    return p1
.end method

.method static synthetic access$11800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->checkTaskChangeComplete()V

    return-void
.end method

.method static synthetic access$11900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;IILandroid/view/IApplicationToken;ZI)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/IApplicationToken;
    .param p4, "x4"    # Z
    .param p5, "x5"    # I

    .line 91
    invoke-direct/range {p0 .. p5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->noteSurfaceChangeInner(IILandroid/view/IApplicationToken;ZI)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 91
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    return v0
.end method

.method static synthetic access$12002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsUpdatingRotation:Z

    return p1
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 91
    sput-boolean p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    return p0
.end method

.method static synthetic access$12102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsDisplayFreezing:Z

    return p1
.end method

.method static synthetic access$12200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mKeepTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    return-object v0
.end method

.method static synthetic access$12400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->forcedScreenId:I

    return v0
.end method

.method static synthetic access$12402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->forcedScreenId:I

    return p1
.end method

.method static synthetic access$12500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startOrientationSensor:Z

    return v0
.end method

.method static synthetic access$12502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startOrientationSensor:Z

    return p1
.end method

.method static synthetic access$12600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/DualAODScreenStateHelper;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAODHelper:Lcn/nubia/server/DualAODScreenStateHelper;

    return-object v0
.end method

.method static synthetic access$12900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startTaskOfScreen(I)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/MotionDetector;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateMotionDetectorState()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchMode:I

    return v0
.end method

.method static synthetic access$1502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchMode:I

    return p1
.end method

.method static synthetic access$1600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->closeSysUIDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsFloatSwitch:Z

    return v0
.end method

.method static synthetic access$1702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsFloatSwitch:Z

    return p1
.end method

.method static synthetic access$1800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPoweronUpScreen:I

    return v0
.end method

.method static synthetic access$1802(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPoweronUpScreen:I

    return p1
.end method

.method static synthetic access$1900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDonotRemind:Z

    return v0
.end method

.method static synthetic access$1902(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDonotRemind:Z

    return p1
.end method

.method static synthetic access$2000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEnableInLearningWizard:Z

    return v0
.end method

.method static synthetic access$2002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEnableInLearningWizard:Z

    return p1
.end method

.method static synthetic access$2100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMultiTasks:Z

    return v0
.end method

.method static synthetic access$2102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMultiTasks:Z

    return p1
.end method

.method static synthetic access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAlwaysWakeUpMainScreenOrBySensor:Z

    return v0
.end method

.method static synthetic access$2202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAlwaysWakeUpMainScreenOrBySensor:Z

    return p1
.end method

.method static synthetic access$2302(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressureLongSwitchEnabled:Z

    return p1
.end method

.method static synthetic access$2400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHeadsUpSwitchEnable:Z

    return v0
.end method

.method static synthetic access$2402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHeadsUpSwitchEnable:Z

    return p1
.end method

.method static synthetic access$2502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHeadsUpShowing:Z

    return p1
.end method

.method static synthetic access$2602(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mThreeFingersSwitchEnable:Z

    return p1
.end method

.method static synthetic access$2702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDualScreenShortcutEnable:Z

    return p1
.end method

.method static synthetic access$2800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isAutoSwitchEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->checkAutoSwitchAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->writeScreenOffAodNode(I)V

    return-void
.end method

.method static synthetic access$3000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->checkPressSensorFuncAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->switchScreenLocked(I)V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->sendAutoSwitchTraceMessage()V

    return-void
.end method

.method static synthetic access$3300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$3402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$3500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$3700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isIncall:Z

    return v0
.end method

.method static synthetic access$3702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isIncall:Z

    return p1
.end method

.method static synthetic access$3800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isRinging:Z

    return v0
.end method

.method static synthetic access$3802(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isRinging:Z

    return p1
.end method

.method static synthetic access$3900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->waitVideoCall:Z

    return v0
.end method

.method static synthetic access$3902(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->waitVideoCall:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSensorTargetId:I

    return v0
.end method

.method static synthetic access$4000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->hasVideoCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSensorTargetId:I

    return p1
.end method

.method static synthetic access$4100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isEarprieceUsing:Z

    return v0
.end method

.method static synthetic access$4200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->needSwitchForCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInComunication:Z

    return v0
.end method

.method static synthetic access$4302(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInComunication:Z

    return p1
.end method

.method static synthetic access$4400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsSkipSwitchTask:Z

    return v0
.end method

.method static synthetic access$4402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsSkipSwitchTask:Z

    return p1
.end method

.method static synthetic access$4500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mType:I

    return v0
.end method

.method static synthetic access$4502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mType:I

    return p1
.end method

.method static synthetic access$4602(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/view/IApplicationToken;)Landroid/view/IApplicationToken;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Landroid/view/IApplicationToken;

    .line 91
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCameraSwitchToken:Landroid/view/IApplicationToken;

    return-object p1
.end method

.method static synthetic access$4700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    return-object v0
.end method

.method static synthetic access$4900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getCurrentDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenFaceUpListener:Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    return-object v0
.end method

.method static synthetic access$5000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->switchScreenLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    .line 91
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenFaceUpListener:Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    return-object p1
.end method

.method static synthetic access$5102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEyeProDialogShowing:Z

    return p1
.end method

.method static synthetic access$5200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mInGameMode:Z

    return v0
.end method

.method static synthetic access$5202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mInGameMode:Z

    return p1
.end method

.method static synthetic access$5300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 91
    invoke-virtual {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotificationPanelExpand:Z

    return p1
.end method

.method static synthetic access$5502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShuttingDown:Z

    return p1
.end method

.method static synthetic access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    return-object v0
.end method

.method static synthetic access$5700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5802(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->postActivityResume(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->translateCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->frontUsing:Z

    return v0
.end method

.method static synthetic access$6102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->frontUsing:Z

    return p1
.end method

.method static synthetic access$6200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->backUsing:Z

    return v0
.end method

.method static synthetic access$6202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->backUsing:Z

    return p1
.end method

.method static synthetic access$6300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentCamera:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogShowing:Z

    return v0
.end method

.method static synthetic access$6402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogShowing:Z

    return p1
.end method

.method static synthetic access$6500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->postCameraChanged(Z)V

    return-void
.end method

.method static synthetic access$6700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->onPreviewStated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLossSecondScreen:Z

    return v0
.end method

.method static synthetic access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenStateChangedOnce:Z

    return v0
.end method

.method static synthetic access$7000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->abortSwitchWhenScreenProjection(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenStateChangedOnce:Z

    return p1
.end method

.method static synthetic access$7100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    return v0
.end method

.method static synthetic access$7102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    return p1
.end method

.method static synthetic access$7200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startTaskOfScreenIfNeed(ZZ)V

    return-void
.end method

.method static synthetic access$7300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->noteSwitchSpecial()V

    return-void
.end method

.method static synthetic access$7400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    return-object v0
.end method

.method static synthetic access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAfterSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    return-object v0
.end method

.method static synthetic access$7600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSyncSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    return-object v0
.end method

.method static synthetic access$7700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILcn/nubia/server/screenswitch/SwitchCallbackList;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/server/screenswitch/SwitchCallbackList;

    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->doCallbacksWhenSwitch(ILcn/nubia/server/screenswitch/SwitchCallbackList;)V

    return-void
.end method

.method static synthetic access$7800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->waitForBeofreSyncCallbacks()V

    return-void
.end method

.method static synthetic access$7900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # I

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateScreenState(I)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHasSwichScreenOnce:Z

    return v0
.end method

.method static synthetic access$8000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-wide v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchCompleteTime:J

    return-wide v0
.end method

.method static synthetic access$8002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;J)J
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # J

    .line 91
    iput-wide p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchCompleteTime:J

    return-wide p1
.end method

.method static synthetic access$802(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHasSwichScreenOnce:Z

    return p1
.end method

.method static synthetic access$8100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->waitForCallbacksComplete()V

    return-void
.end method

.method static synthetic access$8200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->waitForTaskChangeComplete()V

    return-void
.end method

.method static synthetic access$8300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenChangedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$8400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->resetSwitchSpecial()V

    return-void
.end method

.method static synthetic access$8700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->checkDelayTaskWhenScreenOn()V

    return-void
.end method

.method static synthetic access$8900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isLightEffectShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->resetPowerRequest()V

    return-void
.end method

.method static synthetic access$9200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mReadLcdStateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->removeListener(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$9400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ZI)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->postDialogVisiableChanged(ZI)V

    return-void
.end method

.method static synthetic access$9702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsAwake:Z

    return p1
.end method

.method static synthetic access$9800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p1, "x1"    # Z

    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateMotionDetectorState(Z)V

    return-void
.end method

.method static synthetic access$9900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/DaemonDetector;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDaemonDetector:Lcn/nubia/server/screenswitch/DaemonDetector;

    return-object v0
.end method

.method public static acquirePerformance()V
    .locals 5

    .line 2043
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->sPerformanceBinder:Landroid/os/Binder;

    if-eqz v0, :cond_0

    return-void

    .line 2044
    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->sPerformanceBinder:Landroid/os/Binder;

    .line 2045
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAcquirePerformace:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 2047
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ScreenSwitchService"

    const-string v1, "acquireFacePerformance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    :cond_1
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAcquirePerformace:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->sPerformanceBinder:Landroid/os/Binder;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "switchscren"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPerformanceType:I

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

    .line 2051
    goto :goto_0

    .line 2049
    :catch_0
    move-exception v0

    .line 2050
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2053
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method private changeRecordWhenUseCamera()V
    .locals 4

    .line 2376
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2377
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCameraSwitchToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_3

    .line 2378
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    .line 2379
    .local v0, "screenId":I
    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2380
    .local v1, "lastTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    :goto_0
    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$4800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Landroid/view/IApplicationToken;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCameraSwitchToken:Landroid/view/IApplicationToken;

    if-ne v2, v3, :cond_3

    .line 2381
    if-nez v0, :cond_2

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2382
    .local v2, "nextTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    :goto_1
    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V

    .line 2383
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    .line 2384
    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;I)I

    .line 2387
    .end local v0    # "screenId":I
    .end local v1    # "lastTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .end local v2    # "nextTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCameraSwitchToken:Landroid/view/IApplicationToken;

    .line 2388
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRecordWhenUseCamera mFrontTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBackTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    return-void
.end method

.method private changeTaskToLauncherIfNeeded(ILcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "newTaskId"    # I
    .param p2, "otherTask"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p3, "cls"    # Ljava/lang/String;

    .line 2367
    const-string v0, "com.tencent.mm.plugin.base.stub.WXBizEntryActivity"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsWeixinPay:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2370
    :cond_0
    invoke-static {p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2371
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    .line 2372
    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;I)I

    .line 2374
    :cond_1
    return-void

    .line 2368
    :cond_2
    :goto_0
    return-void
.end method

.method private checkAllCallbacksComplete()Z
    .locals 1

    .line 1135
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->checkComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAfterSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

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
    .locals 3

    .line 530
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDeviceProvisioned:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 531
    return v1

    .line 533
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    return v1

    .line 536
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v2, "isKeyguardLocked true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return v1

    .line 541
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEyeProDialogShowing:Z

    if-eqz v0, :cond_3

    .line 542
    return v1

    .line 545
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInNubiaCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 546
    return v1

    .line 549
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->frontUsing:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->backUsing:Z

    if-eqz v0, :cond_5

    goto :goto_0

    .line 552
    :cond_5
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isWeixinPay()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 553
    const-string v0, "ScreenSwitchService"

    const-string v2, "current it Weixin Pay "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return v1

    .line 557
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_7
    :goto_0
    return v1
.end method

.method private checkDelayTaskWhenScreenOn()V
    .locals 2

    .line 2661
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsSkipSwitchTask:Z

    if-eqz v0, :cond_1

    .line 2662
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    monitor-enter v0

    .line 2663
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    iget-boolean v1, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mIsDelay:Z

    if-eqz v1, :cond_0

    .line 2664
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHasDelaySwitchTask:Z

    .line 2666
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    invoke-virtual {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->reset()V

    .line 2667
    monitor-exit v0

    .line 2668
    return-void

    .line 2667
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2671
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    monitor-enter v0

    .line 2672
    :try_start_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    iget-boolean v1, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mIsDelay:Z

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 2674
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    invoke-virtual {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->reset()V

    .line 2675
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2676
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "start delay task"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startTaskOfThisScreen()V

    .line 2678
    return-void

    .line 2675
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

    .line 1901
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInLearningWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEnableInLearningWizard:Z

    return v0

    .line 1904
    :cond_0
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1905
    return v1

    .line 1907
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDeviceProvisioned:Z

    if-nez v0, :cond_2

    .line 1908
    return v1

    .line 1911
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1912
    return v1

    .line 1915
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1916
    return v1

    .line 1919
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogShowing:Z

    if-eqz v0, :cond_5

    .line 1920
    return v1

    .line 1923
    :cond_5
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInNubiaCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1924
    return v1

    .line 1926
    :cond_6
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->frontUsing:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->backUsing:Z

    if-eqz v0, :cond_7

    goto :goto_0

    .line 1930
    :cond_7
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShuttingDown:Z

    if-eqz v0, :cond_8

    .line 1931
    return v1

    .line 1933
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 1927
    :cond_9
    :goto_0
    return v1
.end method

.method private checkPressSensorFuncAvailable()Z
    .locals 2

    .line 1937
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInLearningWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1938
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEnableInLearningWizard:Z

    return v0

    .line 1940
    :cond_0
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressureLongSwitchEnabled:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 1943
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDeviceProvisioned:Z

    if-nez v0, :cond_2

    .line 1944
    return v1

    .line 1947
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1948
    return v1

    .line 1951
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1952
    return v1

    .line 1955
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogShowing:Z

    if-eqz v0, :cond_5

    .line 1956
    return v1

    .line 1959
    :cond_5
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInNubiaCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1960
    return v1

    .line 1962
    :cond_6
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->frontUsing:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->backUsing:Z

    if-eqz v0, :cond_7

    goto :goto_0

    .line 1966
    :cond_7
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShuttingDown:Z

    if-eqz v0, :cond_8

    .line 1967
    return v1

    .line 1969
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 1963
    :cond_9
    :goto_0
    return v1

    .line 1941
    :cond_a
    :goto_1
    return v1
.end method

.method private checkSwipe(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "id"    # I

    .line 2491
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2492
    if-nez p1, :cond_0

    .line 2493
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V

    goto :goto_0

    .line 2495
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V

    .line 2499
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mThreeFingerSwipe:Z

    .line 2501
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 2502
    .local v1, "rotation":I
    if-eqz v1, :cond_2

    .line 2503
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLandscapeSwipe:Z

    .line 2506
    :cond_2
    if-eqz p2, :cond_4

    if-nez p3, :cond_3

    goto :goto_1

    .line 2510
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;

    invoke-direct {v2, p0, p4, p2, p3}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$MikXMxGThOFxp0laxiAFKHuvBW8;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2535
    return-void

    .line 2507
    :cond_4
    :goto_1
    return-void
.end method

.method private checkTaskChangeComplete()V
    .locals 3

    .line 2572
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTaskChangeComplete mNextTaskDrawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNextTaskDrawn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mExitTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNextTaskDrawn:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isLastTaskExit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2574
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2575
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mTaskLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2576
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2578
    :cond_1
    :goto_0
    return-void
.end method

.method private closeSysUIDialog()V
    .locals 2

    .line 813
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressSensorActive:Z

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressSensorInternal:Lnubia/os/presssensor/PressSensorInternal;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressSensorInternal:Lnubia/os/presssensor/PressSensorInternal;

    invoke-virtual {v0}, Lnubia/os/presssensor/PressSensorInternal;->onSwitchScreenIneffective()V

    .line 817
    :cond_0
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    invoke-virtual {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->setPressSensorActive(Z)V

    .line 819
    :cond_1
    return-void
.end method

.method private delayStartActivityIfNeed()Z
    .locals 4

    .line 2680
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsAwake:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2681
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsUpdatingRotation:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsDisplayFreezing:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2687
    :cond_1
    return v1

    .line 2682
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mStartTaskOfThisScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2683
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mStartTaskOfThisScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2684
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ScreenSwitchService"

    const-string v1, "delay switch task"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
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

    .line 1099
    .local p2, "callbacks":Lcn/nubia/server/screenswitch/SwitchCallbackList;, "Lcn/nubia/server/screenswitch/SwitchCallbackList<Lnubia/os/screenswitch/IScreenSwitchCallback;>;"
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string v1, "doCallbacksWhenSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->beginBroadcast()I

    move-result v0

    .line 1101
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1103
    :try_start_0
    invoke-virtual {p2, v1}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lnubia/os/screenswitch/IScreenSwitchCallback;

    invoke-interface {v2, p1}, Lnubia/os/screenswitch/IScreenSwitchCallback;->onSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    goto :goto_1

    .line 1104
    :catch_0
    move-exception v2

    .line 1105
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ScreenSwitchService"

    const-string v4, "RemoteException error "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1101
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1108
    .end local v1    # "j":I
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->finishBroadcast()V

    .line 1109
    return-void
.end method

.method private dumpDoubleSreenTask(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFrontTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBackTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mShowingScreenId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThreeFingerSwipe:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mThreeFingerSwipe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLandscapeSwipe:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLandscapeSwipe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1168
    const-string v0, "SCREEN SWITCH MANAGER (dumpsys nubia.screenswitch)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
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

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchImpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAutoSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAutoSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsFloatSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsFloatSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSwitchMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAwake:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDialogController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDialogShowing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCameraUsing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isCameraUsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isIncall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isIncall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isInComunication:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInComunication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEnableInLearningWizard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEnableInLearningWizard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEyeProDialogShowing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEyeProDialogShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentActivity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inGameMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mInGameMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastUsingScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLastUsingScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDualFingerprintPressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDualFingerprintPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPressureLongSwitchEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressureLongSwitchEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPressSensorActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressSensorActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMultiTasks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMultiTasks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHeadsUpShowing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHeadsUpShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before callback count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    iget-object v1, v1, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before sync callback count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSyncSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    iget-object v1, v1, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after callback count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAfterSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    iget-object v1, v1, Lcn/nubia/server/screenswitch/SwitchCallbackList;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/MotionDetector;->dump(Ljava/io/PrintWriter;)V

    .line 1198
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/HorizontalDetector;->dump(Ljava/io/PrintWriter;)V

    .line 1201
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->dump(Ljava/io/PrintWriter;)V

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    forcedScreenId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->forcedScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    startOrientationSensor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startOrientationSensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSensorTargetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSensorTargetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mPoweronUpScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPoweronUpScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAlwaysWakeUpMainScreenOrBySensor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAlwaysWakeUpMainScreenOrBySensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mFrontScreenPowerMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontScreenPowerMode:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBackScreenPowerMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackScreenPowerMode:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->dumpDoubleSreenTask(Ljava/io/PrintWriter;)V

    .line 1210
    return-void
.end method

.method private getAM()Landroid/app/IActivityManager;
    .locals 1

    .line 2247
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAM:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 2248
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAM:Landroid/app/IActivityManager;

    .line 2250
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAM:Landroid/app/IActivityManager;

    return-object v0
.end method

.method private getCurrentDisplayId()I
    .locals 1

    .line 1095
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private getHomeIntent()Landroid/content/Intent;
    .locals 3

    .line 2253
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHomeIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 2254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHomeIntent:Landroid/content/Intent;

    .line 2255
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2256
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHomeIntent:Landroid/content/Intent;

    const/high16 v1, 0x10210000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2259
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "DO_SWITCH_SCREEN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2261
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHomeIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private getPoweronUpScreen()I
    .locals 3

    .line 1893
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPoweronUpScreen:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPoweronUpScreen:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 1894
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPoweronUpScreen:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1896
    :cond_0
    return v1
.end method

.method private hasVideoCall()Z
    .locals 3

    .line 703
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

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

    .line 2029
    :try_start_0
    const-string v0, "android.os.BSPApplicationManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2030
    .local v0, "manager":Ljava/lang/Class;
    const-string v1, "PERFORMANCE_LOCK_TYPE_APP_LAUNCHER_START_APP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2031
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPerformanceType:I

    .line 2033
    const-string v2, "android.os.BSPApplicationManager$Trigger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2034
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

    sput-object v3, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAcquirePerformace:Ljava/lang/reflect/Method;

    .line 2036
    const-string/jumbo v3, "releasePerformanceLock"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mReleasePerformance:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    .end local v0    # "manager":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "trigger":Ljava/lang/Class;
    goto :goto_0

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2040
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initCameraListener()V
    .locals 3

    .line 712
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 713
    .local v0, "cameraManager":Landroid/hardware/camera2/CameraManager;
    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$12;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 742
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->reflectPreviewCallback(Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V

    .line 743
    return-void
.end method

.method private initIgnoreList()V
    .locals 4

    .line 2283
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIgnoreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2286
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotIgnoreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2287
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotIgnoreList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;

    const-string v2, "cn.nubia.gamelauncher"

    const-string v3, "cn.nubia.gamelauncher.activity.GameSpaceActivity"

    invoke-direct {v1, p0, v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2288
    return-void
.end method

.method private initList()V
    .locals 0

    .line 2264
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initNotSwitchList()V

    .line 2265
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initIgnoreList()V

    .line 2266
    return-void
.end method

.method private initMotionDetector()V
    .locals 2

    .line 473
    new-instance v0, Lcn/nubia/server/screenswitch/MotionDetector;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    .line 474
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$7;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$7;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector;->setMotionListener(Lcn/nubia/server/screenswitch/MotionDetector$MotionListener;)V

    .line 492
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchMode:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector;->setSwitchMode(I)V

    .line 493
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateMotionDetectorState()V

    .line 494
    return-void
.end method

.method private initNotSwitchList()V
    .locals 4

    .line 2276
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotSwitchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2277
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotSwitchList:Ljava/util/ArrayList;

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;

    const-string v2, "com.android.incallui"

    const-string v3, "com.android.incallui.InCallActivity"

    invoke-direct {v1, p0, v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2278
    return-void
.end method

.method private initNubiaTrackManager()V
    .locals 2

    .line 2803
    invoke-static {}, Lcom/android/server/NubiaTrackManager;->getInstance()Lcom/android/server/NubiaTrackManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNubiaTrackManager:Lcom/android/server/NubiaTrackManager;

    .line 2804
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNubiaTrackManager:Lcom/android/server/NubiaTrackManager;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/NubiaTrackManager;->init(Landroid/content/Context;)V

    .line 2805
    return-void
.end method

.method private initPowerManager()V
    .locals 5

    .line 2071
    :try_start_0
    const-string v0, "android.os.PowerManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2072
    .local v0, "manager":Ljava/lang/Class;
    const-string/jumbo v1, "updateBrightScreenChange"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mUpdateBrightScreenChange:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    .end local v0    # "manager":Ljava/lang/Class;
    goto :goto_0

    .line 2073
    :catch_0
    move-exception v0

    .line 2074
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2076
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initReflects()V
    .locals 2

    .line 366
    :try_start_0
    const-class v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const-string v1, "forcedScreenId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->forcedScreenIdField:Ljava/lang/reflect/Field;

    .line 367
    const-class v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const-string/jumbo v1, "startOrientationSensor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startOrientationSensorField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 371
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initBSPApplicatiionManager()V

    .line 373
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initPowerManager()V

    .line 374
    return-void
.end method

.method private injectEvent(II)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1067
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1068
    .local v7, "now":J
    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-wide v2, v7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->injectMotionEvent(IJFFF)V

    .line 1069
    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->injectMotionEvent(IJFFF)V

    .line 1070
    return-void
.end method

.method private injectMotionEvent(IJFFF)V
    .locals 19
    .param p1, "action"    # I
    .param p2, "when"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "pressure"    # F

    .line 1073
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1074
    .local v0, "DEFAULT_SIZE":F
    const/4 v1, 0x0

    .line 1075
    .local v1, "DEFAULT_META_STATE":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1076
    .local v2, "DEFAULT_PRECISION_X":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1077
    .local v3, "DEFAULT_PRECISION_Y":F
    const/4 v4, 0x0

    .line 1079
    .local v4, "DEFAULT_EDGE_FLAGS":I
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide/from16 v5, p2

    move-wide/from16 v7, p2

    move/from16 v9, p1

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1083
    .local v5, "event":Landroid/view/MotionEvent;
    const/16 v6, 0x1002

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1084
    const-string v6, "ScreenSwitchService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "injectMotionEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1087
    return-void
.end method

.method private isAllHome()Z
    .locals 1

    .line 2552
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

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

    .line 2392
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInLearningWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2393
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEnableInLearningWizard:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 2395
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMultiTasks:Z

    return v0
.end method

.method private isAutoSwitchEnabled()Z
    .locals 2

    .line 521
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAutoSwitch:Z

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

    .line 525
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

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

    .line 1985
    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.fingerprint.FingerprintSettings"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentActivity:Ljava/lang/String;

    .line 1986
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1987
    const/4 v0, 0x1

    return v0

    .line 1989
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isFitCardOpen()Z
    .locals 3

    .line 2721
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_fitcard_panel_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isHeadsUpSwitchNeeded()Z
    .locals 1

    .line 2487
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHeadsUpShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHeadsUpSwitchEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isCameraUsing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHomeStack(Landroid/app/ActivityManager$StackInfo;)Z
    .locals 2
    .param p1, "stackInfo"    # Landroid/app/ActivityManager$StackInfo;

    .line 2713
    iget-object v0, p1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 2714
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.nubia.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2715
    const/4 v0, 0x1

    return v0

    .line 2717
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInChatActivity()Z
    .locals 3

    .line 690
    const-string v0, "com.tencent.mobileqq"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "com.tencent.mobileqq.activity.SplashActivity"

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentActivity:Ljava/lang/String;

    .line 691
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    return v1

    .line 694
    :cond_0
    const-string v0, "com.tencent.mm"

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.tencent.mm.ui.chatting.ChattingUI"

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentActivity:Ljava/lang/String;

    .line 695
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm.ui.LauncherUI"

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentActivity:Ljava/lang/String;

    .line 696
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    :cond_1
    return v1

    .line 699
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isInIgnoreList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .line 2290
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsAwake:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2292
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIgnoreList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private isInLearningWizard()Z
    .locals 2

    .line 1977
    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.dualscreen.SwitchIntroduceActivity"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentActivity:Ljava/lang/String;

    .line 1978
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    const/4 v0, 0x1

    return v0

    .line 1981
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
            "Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;",
            ">;)Z"
        }
    .end annotation

    .line 2268
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;

    .line 2269
    .local v1, "name":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;
    invoke-virtual {v1, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;->isSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2270
    const/4 v0, 0x1

    return v0

    .line 2272
    .end local v1    # "name":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;
    :cond_0
    goto :goto_0

    .line 2273
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isInNotSwitchList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .line 2280
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotSwitchList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private isInNubiaCamera()Z
    .locals 2

    .line 708
    const-string v0, "com.android.camera"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLastTaskExit()Z
    .locals 3

    .line 2543
    const/4 v0, 0x0

    .line 2544
    .local v0, "exitTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2545
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move-object v0, v2

    .line 2546
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2547
    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    .line 2548
    :cond_0
    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v1

    return v1

    .line 2546
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private isLightEffectShowing()Z
    .locals 1

    .line 2798
    invoke-static {}, Lnubia/os/ApplicationManager$Trigger;->isLightEffectOpened()Z

    move-result v0

    return v0
.end method

.method private isWeixinPay()Z
    .locals 2

    .line 685
    const-string v0, "com.tencent.mm"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.tencent.mm.plugin.offline.ui.WalletOfflineCoinPurseUI"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->currentActivity:Ljava/lang/String;

    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 685
    :goto_0
    return v0
.end method

.method private justChangeInfo(ILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/view/IApplicationToken;
    .param p5, "pid"    # I

    .line 2341
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0, p2, p3, p4, p5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 2342
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2343
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0, p2, p3, p4, p5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 2345
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 2346
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0, p2, p3, p4, p5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 2348
    :cond_1
    return-void
.end method

.method public static synthetic lambda$abortSwitchWhenScreenProjection$1(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 3

    .line 825
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "show toast when abort switch for screen projection"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    const v2, 0x30c0040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 828
    return-void
.end method

.method public static synthetic lambda$checkSwipe$3(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 2512
    const v0, 0x30c0001

    .line 2513
    .local v0, "toastId":I
    :try_start_0
    const-string v1, ""

    .line 2515
    .local v1, "taskLable":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getAM()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v2

    .line 2516
    .local v2, "desc":Landroid/app/ActivityManager$TaskDescription;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2517
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2520
    :cond_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2521
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    .local v3, "comp":Landroid/content/ComponentName;
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2523
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2524
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_1

    invoke-virtual {v6, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2525
    invoke-virtual {v6, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 2529
    .end local v3    # "comp":Landroid/content/ComponentName;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 2530
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2533
    .end local v0    # "toastId":I
    .end local v1    # "taskLable":Ljava/lang/String;
    .end local v2    # "desc":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_0

    .line 2531
    :catch_0
    move-exception v0

    .line 2532
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2534
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onPreviewStated$0(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 2

    .line 791
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mType:I

    .line 792
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mType:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postDisplayDialog(I)V

    .line 793
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "requestSwitchScreen 5 eventType=2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void
.end method

.method public static synthetic lambda$postDialogVisiableChanged$2(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 1

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEyeProDialogShowing:Z

    .line 870
    return-void
.end method

.method private needSwitchForCamera()Z
    .locals 2

    .line 800
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->frontUsing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->backUsing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    if-ne v0, v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private noteActivityExitFinish(IILandroid/view/IApplicationToken;)V
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "token"    # Landroid/view/IApplicationToken;

    .line 2587
    const/4 v0, 0x0

    .line 2588
    .local v0, "exitTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2589
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move-object v0, v2

    .line 2590
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2591
    if-eqz v0, :cond_1

    .line 2592
    sget-boolean v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

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

    .line 2593
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILandroid/view/IApplicationToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2594
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    .line 2595
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->checkTaskChangeComplete()V

    .line 2598
    :cond_1
    return-void

    .line 2590
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

    .line 2625
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteExitTopTaskInner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2627
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V

    .line 2629
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

    .line 2580
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateDestroyStatus(IILandroid/view/IApplicationToken;Z)V

    .line 2581
    invoke-direct {p0, p1, p2, p5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->recordTaskWhenScreenOff(III)V

    .line 2582
    if-nez p4, :cond_0

    .line 2583
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->noteActivityExitFinish(IILandroid/view/IApplicationToken;)V

    .line 2585
    :cond_0
    return-void
.end method

.method private noteSwitchSpecial()V
    .locals 3

    .line 2691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsScreenSwitchForSpecial:Z

    .line 2692
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_switch_special"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2693
    return-void
.end method

.method private onPreviewStated(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 776
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

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

    .line 777
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->translateCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 778
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentCamera:Ljava/lang/String;

    .line 779
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 780
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->frontUsing:Z

    goto :goto_0

    .line 781
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->backUsing:Z

    .line 784
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->needSwitchForCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 785
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->frontUsing:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->hasVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isIncall:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->waitVideoCall:Z

    if-eqz v0, :cond_6

    .line 786
    :cond_4
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->waitVideoCall:Z

    .line 787
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "wait for offhook"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_5
    return-void

    .line 790
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$a5-5w-7GM9WO-XOHmOtXj5MKiJw;

    invoke-direct {v2, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$a5-5w-7GM9WO-XOHmOtXj5MKiJw;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 796
    :cond_7
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->frontUsing:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->backUsing:Z

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    nop

    :cond_9
    :goto_1
    invoke-direct {p0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->postCameraChanged(Z)V

    .line 797
    return-void
.end method

.method private postActivityResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 888
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInLearningWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->closeSysUIDialog()V

    .line 891
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 892
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    .local v2, "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    :try_start_1
    iget-object v3, v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    invoke-interface {v3, p1, p2}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->onActivityResume(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    goto :goto_1

    .line 895
    :catch_0
    move-exception v3

    .line 896
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "ScreenSwitchService"

    const-string/jumbo v5, "postPhoneStateChanged error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 898
    .end local v2    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 899
    :cond_1
    monitor-exit v0

    .line 900
    return-void

    .line 899
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

    .line 849
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isCameraUsing:Z

    if-eq v0, p1, :cond_1

    .line 850
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isCameraUsing:Z

    .line 851
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 852
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    .local v2, "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    :try_start_1
    iget-object v3, v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->onCameraUsing(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    goto :goto_1

    .line 855
    :catch_0
    move-exception v3

    .line 856
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "ScreenSwitchService"

    const-string/jumbo v5, "postPhoneStateChanged error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .end local v2    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 859
    :cond_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 861
    :cond_1
    :goto_2
    return-void
.end method

.method private postDialogVisiableChanged(ZI)V
    .locals 6
    .param p1, "vis"    # Z
    .param p2, "type"    # I

    .line 864
    if-eqz p1, :cond_0

    .line 865
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->closeSysUIDialog()V

    .line 866
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEyeProDialogShowing:Z

    goto :goto_0

    .line 868
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$yh3q3RhbmecQKJAxkJXveXT9OQM;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$yh3q3RhbmecQKJAxkJXveXT9OQM;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 872
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 873
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    .local v2, "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    if-eqz p1, :cond_2

    .line 876
    :try_start_1
    iget-object v3, v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    invoke-interface {v3, p2}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->onDialogShown(I)V

    goto :goto_2

    .line 880
    :catch_0
    move-exception v3

    goto :goto_3

    .line 878
    :cond_2
    iget-object v3, v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    invoke-interface {v3, p2}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->onDialogHide(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    :goto_2
    goto :goto_4

    .line 880
    :goto_3
    nop

    .line 881
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "ScreenSwitchService"

    const-string/jumbo v5, "postPhoneStateChanged error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    .end local v2    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4
    goto :goto_1

    .line 884
    :cond_3
    monitor-exit v0

    .line 885
    return-void

    .line 884
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

    .line 834
    if-eqz p1, :cond_0

    .line 835
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->closeSysUIDialog()V

    .line 837
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    .local v2, "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    :try_start_1
    iget-object v3, v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->callback:Lnubia/os/screenswitch/IScreenSwitchStateListener;

    invoke-interface {v3, p1}, Lnubia/os/screenswitch/IScreenSwitchStateListener;->onInCalling(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    goto :goto_1

    .line 841
    :catch_0
    move-exception v3

    .line 842
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "ScreenSwitchService"

    const-string/jumbo v5, "postPhoneStateChanged error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    .end local v2    # "r":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 845
    :cond_1
    monitor-exit v0

    .line 846
    return-void

    .line 845
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

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    .line 2350
    iget-object v0, v6, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v0

    const/4 v13, 0x1

    move/from16 v12, p2

    if-ne v0, v12, :cond_1

    .line 2351
    move-object v0, v6

    move v1, v12

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->justChangeInfo(ILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 2352
    invoke-direct {v6, v14, v15}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInNotSwitchList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2353
    iput-boolean v13, v6, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsSkipSwitchTask:Z

    .line 2355
    :cond_0
    return v13

    .line 2357
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsSkipSwitchTask:Z

    .line 2358
    iget-object v1, v6, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    iget-object v2, v6, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V

    .line 2359
    iget-object v7, v6, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move/from16 v8, p1

    move v9, v12

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, p5

    move v1, v13

    move/from16 v13, p6

    invoke-static/range {v7 .. v13}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 2360
    invoke-direct {v6, v14, v15}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInNotSwitchList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2361
    iput-boolean v1, v6, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsSkipSwitchTask:Z

    .line 2363
    :cond_2
    return v0
.end method

.method private recordTaskWhenScreenOff(III)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "flags"    # I

    .line 2618
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsAwake:Z

    if-eqz v0, :cond_0

    return-void

    .line 2619
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2620
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 2621
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    const/high16 v1, 0x80000

    and-int/2addr v1, p3

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$10702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    .line 2623
    :cond_3
    return-void
.end method

.method private reflectPreviewCallback(Landroid/hardware/camera2/CameraManager;Landroid/os/Handler;)V
    .locals 9
    .param p1, "cm"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 745
    const/4 v0, 0x0

    move-object v1, v0

    .line 748
    .local v1, "previewCallback":Ljava/lang/Class;
    :try_start_0
    const-string v2, "android.hardware.camera2.CameraManager$PreviewStartedCallback"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 749
    const-class v2, Landroid/hardware/camera2/CameraManager;

    const-string/jumbo v3, "registerPreviewStartedCallback"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-class v7, Landroid/os/Handler;

    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 750
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 751
    .local v2, "registerPreviewCallback":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Class;

    aput-object v1, v5, v6

    new-instance v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$PreviewCallbackProxy;

    invoke-direct {v7, p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$PreviewCallbackProxy;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V

    invoke-static {v3, v5, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 753
    .local v0, "instance":Ljava/lang/Object;
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object p2, v3, v8

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v0    # "instance":Ljava/lang/Object;
    goto :goto_0

    .line 754
    .end local v2    # "registerPreviewCallback":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ScreenSwitchService"

    const-string/jumbo v3, "register preview callback error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private registerApplicaitonManagerCallback()V
    .locals 4

    .line 670
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "registerApplicaitonManagerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    new-instance v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$11;

    invoke-direct {v0, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$11;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    const-wide/16 v1, 0x1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 682
    return-void
.end method

.method private registerReceivers()V
    .locals 3

    .line 581
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 582
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    const-string v1, "cn.nubia.action.AUDIO_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    const-string v1, "cn.nubia.camera.action.SWITCH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    const-string v1, "cn.nubia.action.SWITCH_SCREEN_GUIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    const-string v1, "cn.nubia.action.DOUBLE_FP_ANIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    const-string v1, "cn.nubia.action.GAME_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    const-string v1, "cn.nubia.systemui.NOTIFICATION_EXPAND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;

    invoke-direct {v2, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$10;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 667
    return-void
.end method

.method private registerSettingsOberser()V
    .locals 32

    .line 384
    move-object/from16 v15, p0

    const-string v0, "auto_switch_screen"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 385
    .local v14, "settingUri":Landroid/net/Uri;
    const-string v0, "float_switch_screen"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 386
    .local v13, "floatUri":Landroid/net/Uri;
    const-string/jumbo v0, "isVideoIncomingCall"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 387
    .local v12, "videoUri":Landroid/net/Uri;
    const-string/jumbo v0, "switch_screen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 388
    .local v11, "switchModeUri":Landroid/net/Uri;
    const-string/jumbo v0, "poweron_upturned_screen"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 389
    .local v10, "poweronUri":Landroid/net/Uri;
    const-string/jumbo v0, "manual_switch_directly"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 390
    .local v9, "donotRemindUri":Landroid/net/Uri;
    const-string/jumbo v0, "nubia_switch_screen_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 391
    .local v8, "enableInWizardUri":Landroid/net/Uri;
    const-string/jumbo v0, "multi_screen_multi_tasks"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 392
    .local v7, "multiTasksUri":Landroid/net/Uri;
    const-string v0, "always_show_main_screen_when_call"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 393
    .local v6, "showMainWhenCallUri":Landroid/net/Uri;
    const-string/jumbo v0, "nubia_pressure_long_switch"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 394
    .local v5, "pressureLongSwitchUri":Landroid/net/Uri;
    const-string v0, "dualscreen_screen_notification"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 395
    .local v4, "headsUpUri":Landroid/net/Uri;
    const-string v0, "dualscreen_send_application"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 396
    .local v3, "threefingerUri":Landroid/net/Uri;
    const-string/jumbo v0, "nubia_dualscreen_shortcut_switch"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 397
    .local v2, "dualscreenShortcutUri":Landroid/net/Uri;
    new-instance v16, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;

    iget-object v1, v15, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    move-object/from16 v17, v1

    move-object v1, v15

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .line 397
    .end local v2    # "dualscreenShortcutUri":Landroid/net/Uri;
    .local v18, "dualscreenShortcutUri":Landroid/net/Uri;
    move-object/from16 v19, v3

    move-object v3, v14

    .line 397
    .end local v3    # "threefingerUri":Landroid/net/Uri;
    .local v19, "threefingerUri":Landroid/net/Uri;
    move-object/from16 v20, v4

    move-object v4, v12

    .line 397
    .end local v4    # "headsUpUri":Landroid/net/Uri;
    .local v20, "headsUpUri":Landroid/net/Uri;
    move-object/from16 v21, v5

    move-object v5, v11

    .line 397
    .end local v5    # "pressureLongSwitchUri":Landroid/net/Uri;
    .local v21, "pressureLongSwitchUri":Landroid/net/Uri;
    move-object/from16 v22, v6

    move-object v6, v13

    .line 397
    .end local v6    # "showMainWhenCallUri":Landroid/net/Uri;
    .local v22, "showMainWhenCallUri":Landroid/net/Uri;
    move-object/from16 v23, v7

    move-object v7, v10

    .line 397
    .end local v7    # "multiTasksUri":Landroid/net/Uri;
    .local v23, "multiTasksUri":Landroid/net/Uri;
    move-object/from16 v24, v8

    move-object v8, v9

    .line 397
    .end local v8    # "enableInWizardUri":Landroid/net/Uri;
    .local v24, "enableInWizardUri":Landroid/net/Uri;
    move-object/from16 v25, v9

    move-object/from16 v9, v24

    .line 397
    .end local v9    # "donotRemindUri":Landroid/net/Uri;
    .local v25, "donotRemindUri":Landroid/net/Uri;
    move-object/from16 v26, v10

    move-object/from16 v10, v23

    .line 397
    .end local v10    # "poweronUri":Landroid/net/Uri;
    .local v26, "poweronUri":Landroid/net/Uri;
    move-object/from16 v27, v11

    move-object/from16 v11, v22

    .line 397
    .end local v11    # "switchModeUri":Landroid/net/Uri;
    .local v27, "switchModeUri":Landroid/net/Uri;
    move-object/from16 v28, v12

    move-object/from16 v12, v21

    .line 397
    .end local v12    # "videoUri":Landroid/net/Uri;
    .local v28, "videoUri":Landroid/net/Uri;
    move-object/from16 v29, v13

    move-object/from16 v13, v20

    .line 397
    .end local v13    # "floatUri":Landroid/net/Uri;
    .local v29, "floatUri":Landroid/net/Uri;
    move-object/from16 v30, v14

    move-object/from16 v14, v19

    .line 397
    .end local v14    # "settingUri":Landroid/net/Uri;
    .local v30, "settingUri":Landroid/net/Uri;
    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$6;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/os/Handler;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 457
    .local v0, "observer":Landroid/database/ContentObserver;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v4, v30

    invoke-virtual {v2, v4, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 458
    .end local v30    # "settingUri":Landroid/net/Uri;
    .local v4, "settingUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v5, v29

    invoke-virtual {v2, v5, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 459
    .end local v29    # "floatUri":Landroid/net/Uri;
    .local v5, "floatUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v6, v28

    invoke-virtual {v2, v6, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 460
    .end local v28    # "videoUri":Landroid/net/Uri;
    .local v6, "videoUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v7, v27

    invoke-virtual {v2, v7, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 461
    .end local v27    # "switchModeUri":Landroid/net/Uri;
    .local v7, "switchModeUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v8, v26

    invoke-virtual {v2, v8, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 462
    .end local v26    # "poweronUri":Landroid/net/Uri;
    .local v8, "poweronUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v9, v25

    invoke-virtual {v2, v9, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 463
    .end local v25    # "donotRemindUri":Landroid/net/Uri;
    .restart local v9    # "donotRemindUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v10, v24

    invoke-virtual {v2, v10, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 464
    .end local v24    # "enableInWizardUri":Landroid/net/Uri;
    .local v10, "enableInWizardUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v11, v23

    invoke-virtual {v2, v11, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 465
    .end local v23    # "multiTasksUri":Landroid/net/Uri;
    .local v11, "multiTasksUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v12, v22

    invoke-virtual {v2, v12, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 466
    .end local v22    # "showMainWhenCallUri":Landroid/net/Uri;
    .local v12, "showMainWhenCallUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v13, v21

    invoke-virtual {v2, v13, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 467
    .end local v21    # "pressureLongSwitchUri":Landroid/net/Uri;
    .local v13, "pressureLongSwitchUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v14, v20

    invoke-virtual {v2, v14, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 468
    .end local v20    # "headsUpUri":Landroid/net/Uri;
    .local v14, "headsUpUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v15, v19

    invoke-virtual {v2, v15, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 469
    .end local v19    # "threefingerUri":Landroid/net/Uri;
    .local v15, "threefingerUri":Landroid/net/Uri;
    iget-object v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v1, v18

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 470
    .end local v18    # "dualscreenShortcutUri":Landroid/net/Uri;
    .local v1, "dualscreenShortcutUri":Landroid/net/Uri;
    return-void
.end method

.method public static releasePerformance()V
    .locals 5

    .line 2056
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->sPerformanceBinder:Landroid/os/Binder;

    if-nez v0, :cond_0

    return-void

    .line 2057
    :cond_0
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mReleasePerformance:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2059
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v2, "releaseFacePerformance"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_1
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mReleasePerformance:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->sPerformanceBinder:Landroid/os/Binder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2063
    goto :goto_0

    .line 2061
    :catch_0
    move-exception v0

    .line 2062
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2065
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    sput-object v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->sPerformanceBinder:Landroid/os/Binder;

    .line 2066
    return-void
.end method

.method private removeListener(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1149
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    monitor-enter v0

    .line 1150
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1151
    .local v1, "recordCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1152
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;

    iget-object v4, v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->binder:Landroid/os/IBinder;

    if-ne v4, p1, :cond_1

    .line 1153
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;

    iget-object v4, v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->deathRecipient:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;

    if-eqz v4, :cond_0

    .line 1154
    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;

    iget-object v4, v4, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$Record;->deathRecipient:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SDeathRecipient;

    invoke-interface {p1, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1156
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenSwitchStateListeners:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1157
    monitor-exit v0

    return-void

    .line 1151
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1160
    .end local v1    # "recordCount":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 1161
    return-void

    .line 1160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetPowerRequest()V
    .locals 3

    .line 1993
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateforcedScreenId(Ljava/lang/Object;IZ)V

    .line 1994
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updatestartOrientationSensor(Ljava/lang/Object;ZZ)V

    .line 1995
    return-void
.end method

.method private resetScreenState()V
    .locals 4

    .line 357
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->getCurrentLCDState()I

    move-result v0

    .line 358
    .local v0, "state":I
    sget-boolean v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

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

    .line 359
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateScreenState(I)V

    .line 360
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_in_use"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    return-void
.end method

.method private resetSwitchSpecial()V
    .locals 3

    .line 2696
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsScreenSwitchForSpecial:Z

    if-eqz v0, :cond_0

    .line 2697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsScreenSwitchForSpecial:Z

    .line 2698
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_switch_special"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2700
    :cond_0
    return-void
.end method

.method private sendAutoSwitchTraceMessage()V
    .locals 5

    .line 2808
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNubiaTrackManager:Lcom/android/server/NubiaTrackManager;

    const-string v1, "com.android.settings"

    const-string v2, "dual_screen_switch_mode"

    const-string/jumbo v3, "mode"

    const-string v4, "auto"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2812
    goto :goto_0

    .line 2810
    :catch_0
    move-exception v0

    .line 2811
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ScreenSwitchService"

    const-string/jumbo v2, "sendAutoSwitchTraceMessage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2813
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private sendBackKeyEvent()V
    .locals 3

    .line 2471
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->sendKeyEvent(III)V

    .line 2472
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->sendKeyEvent(III)V

    .line 2473
    return-void
.end method

.method private sendKeyEvent(III)V
    .locals 16
    .param p1, "keycode"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I

    .line 2476
    move/from16 v0, p3

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v10, v1

    goto :goto_0

    :cond_0
    move v10, v2

    .line 2477
    .local v10, "repeatCount":I
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2478
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v3, v0, 0x8

    or-int/lit8 v14, v3, 0x40

    const/16 v15, 0x101

    move-object v3, v1

    move/from16 v8, p2

    move/from16 v9, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2482
    .local v1, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2484
    return-void
.end method

.method private setScreenTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z
    .locals 16
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "cls"    # Ljava/lang/String;
    .param p5, "token"    # Landroid/view/IApplicationToken;
    .param p6, "isIgnore"    # Z
    .param p7, "pid"    # I

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p6

    .line 2300
    const/4 v13, 0x0

    iput-boolean v13, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsWeixinPay:Z

    .line 2301
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

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

    .line 2303
    :cond_0
    move-object v0, v7

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p5

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->recordCurrentTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)Z

    move-result v14

    .line 2304
    .local v14, "isSameTask":Z
    const/4 v15, 0x1

    if-eqz v12, :cond_1

    invoke-direct {v7, v10, v11}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->shouldNotIgnore(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    if-nez v14, :cond_c

    invoke-direct {v7, v10, v11}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInIgnoreList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 2309
    :cond_2
    iget-boolean v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsSkipSwitchTask:Z

    if-nez v0, :cond_7

    iget-boolean v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHasDelaySwitchTask:Z

    if-eqz v0, :cond_7

    .line 2310
    iget v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    if-nez v0, :cond_3

    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    goto :goto_0

    :cond_3
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2311
    .local v0, "mayNotTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    :goto_0
    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v1

    if-ne v9, v1, :cond_7

    .line 2312
    iget v1, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    if-nez v1, :cond_4

    iget-object v1, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    goto :goto_1

    :cond_4
    iget-object v1, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2313
    .local v1, "mayBeTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    :goto_1
    iput-boolean v13, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHasDelaySwitchTask:Z

    .line 2314
    sget-boolean v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ScreenSwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mayNotTask = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    :cond_5
    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v2

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v3

    if-eq v2, v3, :cond_6

    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2316
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startTaskOfThisScreen()V

    .line 2317
    return v13

    .line 2319
    :cond_6
    return v15

    .line 2322
    .end local v0    # "mayNotTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .end local v1    # "mayBeTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    :cond_7
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2323
    iput-boolean v13, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsSkipSwitchTask:Z

    .line 2324
    iput-boolean v13, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHasDelaySwitchTask:Z

    .line 2326
    :cond_8
    iget v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    if-nez v0, :cond_9

    .line 2327
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p5

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 2328
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-direct {v7, v9, v0, v11}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->changeTaskToLauncherIfNeeded(ILcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 2329
    :cond_9
    iget v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    if-ne v0, v15, :cond_a

    .line 2330
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p5

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 2331
    iget-object v0, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-direct {v7, v9, v0, v11}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->changeTaskToLauncherIfNeeded(ILcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Ljava/lang/String;)V

    .line 2333
    :cond_a
    :goto_2
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_b

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

    iget v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mFrontTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBackTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :cond_b
    return v15

    .line 2305
    :cond_c
    :goto_3
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_d

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

    iget v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mFrontTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBackTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    :cond_d
    return v15
.end method

.method private shouldDelayAsAod(Z)Z
    .locals 3
    .param p1, "isAod"    # Z

    .line 2648
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2649
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2650
    :cond_1
    if-eqz p1, :cond_2

    .line 2651
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    monitor-enter v0

    .line 2652
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mIsDelay:Z

    .line 2653
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v2

    iput v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mFrontTaskId:I

    .line 2654
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAodDelayTaskInfo:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v2

    iput v2, v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mBackTaskId:I

    .line 2655
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ScreenSwitchService"

    const-string v1, "aod delay task change"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2655
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2658
    :cond_2
    :goto_0
    return p1
.end method

.method private shouldNotIgnore(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .line 2295
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotIgnoreList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isInList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private showSubContent()V
    .locals 6

    .line 313
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 314
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 315
    .local v1, "subDisplay":Landroid/view/Display;
    new-instance v2, Landroid/app/Presentation;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 316
    .local v2, "presentation":Landroid/app/Presentation;
    const-string v3, "blackWindow"

    invoke-virtual {v2, v3}, Landroid/app/Presentation;->setTitle(Ljava/lang/CharSequence;)V

    .line 317
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 318
    .local v3, "imageView":Landroid/widget/ImageView;
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 319
    invoke-virtual {v2, v3}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    .line 320
    invoke-virtual {v2}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000c

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 321
    invoke-virtual {v2}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 322
    .local v4, "parmas":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0xa

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 323
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 324
    const/16 v5, 0x30

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 325
    invoke-virtual {v2}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 326
    new-instance v5, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;

    invoke-direct {v5, p0, v3, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$4;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/widget/ImageView;Landroid/app/Presentation;)V

    invoke-virtual {v2, v5}, Landroid/app/Presentation;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 342
    new-instance v5, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$5;

    invoke-direct {v5, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$5;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    invoke-virtual {v2, v5}, Landroid/app/Presentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 353
    invoke-virtual {v2}, Landroid/app/Presentation;->show()V

    .line 354
    return-void
.end method

.method private specialProcessForWeixinPay(I)V
    .locals 3
    .param p1, "screenId"    # I

    .line 2459
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "special process for weixin pay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2461
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V

    .line 2462
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v1, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    goto :goto_0

    .line 2464
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v1, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    .line 2465
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V

    .line 2467
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->sendBackKeyEvent()V

    .line 2468
    return-void
.end method

.method private startHome(Z)V
    .locals 3
    .param p1, "fromSwipe"    # Z

    .line 2703
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2704
    .local v0, "home":Landroid/content/Intent;
    const/high16 v1, 0x10000

    if-eqz p1, :cond_0

    .line 2705
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeFlags(I)V

    goto :goto_0

    .line 2707
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2709
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2710
    return-void
.end method

.method private startLauncherIfTaskNotFound(ILcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "nextTask"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2538
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    .line 2539
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLauncherIfTaskNotFound mFrontTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBackTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startTaskOfScreen(I)V

    .line 2541
    return-void
.end method

.method private startTask(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IZZ)V
    .locals 4
    .param p1, "task"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p2, "screenId"    # I
    .param p3, "fromSwipe"    # Z
    .param p4, "isAod"    # Z

    .line 2410
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2411
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "startTask not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    return-void

    .line 2414
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {p1, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2415
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "startTask same task"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    return-void

    .line 2418
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->delayStartActivityIfNeed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2419
    :cond_2
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTask nextTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNextTaskDrawn:Z

    .line 2421
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2422
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mTempTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V

    .line 2423
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mTempTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    iput-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2424
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2425
    if-nez p1, :cond_4

    .line 2426
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "task null, start launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    invoke-direct {p0, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startHome(Z)V

    .line 2428
    return-void

    .line 2431
    :cond_4
    if-eqz p3, :cond_5

    .line 2432
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v2

    invoke-direct {p0, p2, v0, v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->checkSwipe(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2435
    :cond_5
    if-nez p4, :cond_6

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsWeixinPay:Z

    if-eqz v0, :cond_6

    if-nez p3, :cond_6

    .line 2436
    invoke-direct {p0, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->specialProcessForWeixinPay(I)V

    goto :goto_1

    .line 2437
    :cond_6
    invoke-static {p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2439
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getAM()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-static {p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 2440
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getAM()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-static {p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I

    move-result v3

    invoke-interface {v2, v3, v0, v1}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2441
    :catch_0
    move-exception v2

    .line 2442
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2443
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNextTaskDrawn:Z

    .line 2444
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2445
    :try_start_2
    iput-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2446
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2447
    invoke-direct {p0, p2, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startLauncherIfTaskNotFound(ILcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V

    .line 2448
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 2446
    .restart local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2450
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-direct {p0, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startHome(Z)V

    .line 2452
    :goto_1
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isHeadsUpSwitchNeeded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2453
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postOpenHeadsUp()V

    .line 2454
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->noteSwitchSpecial()V

    .line 2456
    :cond_8
    return-void

    .line 2424
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private startTaskOfScreen(I)V
    .locals 3
    .param p1, "screenId"    # I

    .line 2398
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2399
    .local v0, "lastTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    :goto_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2400
    .local v1, "nextTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startTask(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IZZ)V

    .line 2401
    return-void
.end method

.method private startTaskOfScreen(IZ)V
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "isAod"    # Z

    .line 2404
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2405
    .local v0, "lastTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    :goto_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2406
    .local v1, "nextTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startTask(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IZZ)V

    .line 2407
    return-void
.end method

.method private startTaskOfScreenIfNeed(ZZ)V
    .locals 2
    .param p1, "isSkip"    # Z
    .param p2, "isAod"    # Z

    .line 2631
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMultiTasks:Z

    if-nez v0, :cond_0

    return-void

    .line 2632
    :cond_0
    const-string v0, "cn.nubia.factory"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cn.nubia.autoagingtest"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 2633
    :cond_1
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    :goto_0
    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mKeepTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2634
    if-nez p1, :cond_3

    .line 2635
    invoke-direct {p0, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->shouldDelayAsAod(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2636
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    invoke-direct {p0, v0, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startTaskOfScreen(IZ)V

    goto :goto_1

    .line 2639
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->changeRecordWhenUseCamera()V

    .line 2640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHasDelaySwitchTask:Z

    .line 2641
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isAllowed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isHeadsUpSwitchNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2642
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDialogController:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postOpenHeadsUp()V

    .line 2643
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->noteSwitchSpecial()V

    .line 2646
    :cond_4
    :goto_1
    return-void

    .line 2632
    :cond_5
    :goto_2
    return-void
.end method

.method private startTaskOfThisScreen()V
    .locals 2

    .line 2338
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mStartTaskOfThisScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2339
    return-void
.end method

.method private storageLastUsingScreen()V
    .locals 2

    .line 1164
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLastUsingScreen:I

    .line 1165
    return-void
.end method

.method private swipeStartLastTask()V
    .locals 8

    .line 2726
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNotificationPanelExpand:Z

    if-eqz v0, :cond_0

    .line 2727
    const-string v0, "ScreenSwitchService"

    const-string v1, "NotificationPanel Expand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    return-void

    .line 2731
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMultiTasks:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isFitCardOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 2737
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getAM()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v2

    .line 2738
    .local v2, "stackInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 2739
    .local v3, "stackCount":I
    if-nez v3, :cond_2

    .line 2740
    const-string v4, "ScreenSwitchService"

    const-string/jumbo v5, "no stack"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    return-void

    .line 2744
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    .line 2745
    .local v4, "firstStack":Landroid/app/ActivityManager$StackInfo;
    const-string v5, "ScreenSwitchService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "threeFingerSwipe "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    iget-object v5, v4, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    .line 2748
    move v5, v0

    .line 2748
    .local v5, "i":I
    :goto_0
    sget-object v6, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mThreeFingerSwipeBlackList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 2749
    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mThreeFingerSwipeBlackList:Ljava/util/List;

    .line 2750
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2751
    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->toastNotSupportThreeFinger(Ljava/lang/String;)V

    .line 2752
    return-void

    .line 2748
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2757
    .end local v5    # "i":I
    :cond_4
    invoke-direct {p0, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isHomeStack(Landroid/app/ActivityManager$StackInfo;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2758
    const-string v5, "ScreenSwitchService"

    const-string/jumbo v6, "top is home stack"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    return-void

    .line 2762
    :cond_5
    const/4 v5, 0x2

    if-lt v3, v5, :cond_6

    .line 2763
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$StackInfo;

    .line 2764
    .local v5, "secondStack":Landroid/app/ActivityManager$StackInfo;
    invoke-direct {p0, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isHomeStack(Landroid/app/ActivityManager$StackInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2765
    iget-object v6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v6, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$13202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2770
    .end local v2    # "stackInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    .end local v3    # "stackCount":I
    .end local v4    # "firstStack":Landroid/app/ActivityManager$StackInfo;
    .end local v5    # "secondStack":Landroid/app/ActivityManager$StackInfo;
    :cond_6
    goto :goto_1

    .line 2768
    :catch_0
    move-exception v2

    .line 2769
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2772
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLastTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    iget v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mShowingScreenId:I

    invoke-direct {p0, v2, v3, v1, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startTask(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IZZ)V

    .line 2773
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->noteSwitchSpecial()V

    .line 2774
    return-void

    .line 2732
    :cond_7
    :goto_2
    const-string v0, "ScreenSwitchService"

    const-string v1, "fitcard open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    return-void
.end method

.method private switchScreenLocked(I)V
    .locals 1
    .param p1, "target"    # I

    .line 903
    const-string/jumbo v0, "motion"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->switchScreenLocked(ILjava/lang/String;)V

    .line 904
    return-void
.end method

.method private switchScreenLocked(ILjava/lang/String;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 907
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

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

    .line 908
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mReadLcdStateHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 909
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "sunfei switch screen finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_1
    return-void
.end method

.method private toastNotSupportThreeFinger(Ljava/lang/String;)V
    .locals 4
    .param p1, "topActivityName"    # Ljava/lang/String;

    .line 2777
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "swipe black list app"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    const-string v0, "fruitninja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2779
    return-void

    .line 2781
    :cond_0
    const v0, 0x30c0036

    .line 2782
    .local v0, "toastId":I
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2783
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2784
    return-void
.end method

.method private translateCameraId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 805
    move-object v0, p1

    .line 806
    .local v0, "translate":Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    :cond_0
    const-string v0, "0"

    .line 809
    :cond_1
    return-object v0
.end method

.method private updateDestroyStatus(IILandroid/view/IApplicationToken;Z)V
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "token"    # Landroid/view/IApplicationToken;
    .param p4, "hasSurface"    # Z

    .line 2600
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v0, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILandroid/view/IApplicationToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2601
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCurrentTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    xor-int/lit8 v1, p4, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    .line 2603
    :cond_0
    const/4 v0, 0x0

    .line 2604
    .local v0, "exitTask":Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2605
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    move-object v0, v2

    .line 2606
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2607
    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILandroid/view/IApplicationToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2608
    xor-int/lit8 v1, p4, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    .line 2610
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v1, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILandroid/view/IApplicationToken;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2611
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    xor-int/lit8 v2, p4, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    goto :goto_0

    .line 2612
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-static {v1, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILandroid/view/IApplicationToken;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2613
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    xor-int/lit8 v2, p4, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->access$14002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z

    .line 2615
    :cond_3
    :goto_0
    sget-boolean v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

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

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mFrontTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mBackTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBackTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    :cond_4
    return-void

    .line 2606
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

    .line 497
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateMotionDetectorState(Z)V

    .line 498
    return-void
.end method

.method private updateMotionDetectorState(Z)V
    .locals 4
    .param p1, "direct"    # Z

    .line 501
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsAwake:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isAutoSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mInGameMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchMode:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressSensorActive:Z

    if-eqz v0, :cond_3

    .line 503
    :cond_1
    if-eqz p1, :cond_2

    .line 504
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->enable()V

    goto :goto_0

    .line 506
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetectorEnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 509
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetectorEnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 510
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->disable()V

    .line 512
    :goto_0
    return-void
.end method

.method private updatePressSensorStartState(Z)V
    .locals 2
    .param p1, "start"    # Z

    .line 1973
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "press_sensor_start"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1974
    return-void
.end method

.method private updateScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1090
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mScreenState:I

    .line 1091
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMotionDetector:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-virtual {v0, p1}, Lcn/nubia/server/screenswitch/MotionDetector;->setCurrentDisplayId(I)V

    .line 1092
    return-void
.end method

.method private updateforcedScreenId(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # I

    .line 1998
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateforcedScreenId(Ljava/lang/Object;IZ)V

    .line 1999
    return-void
.end method

.method private updateforcedScreenId(Ljava/lang/Object;IZ)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # I
    .param p3, "reset"    # Z

    .line 2002
    if-nez p3, :cond_0

    iput p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->forcedScreenId:I

    .line 2003
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->forcedScreenIdField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2005
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->forcedScreenIdField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2008
    goto :goto_0

    .line 2006
    :catch_0
    move-exception v0

    .line 2007
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2010
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private updatestartOrientationSensor(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Z

    .line 2013
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updatestartOrientationSensor(Ljava/lang/Object;ZZ)V

    .line 2014
    return-void
.end method

.method private updatestartOrientationSensor(Ljava/lang/Object;ZZ)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Z
    .param p3, "reset"    # Z

    .line 2017
    if-nez p3, :cond_0

    iput-boolean p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startOrientationSensor:Z

    .line 2018
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startOrientationSensorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2020
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->startOrientationSensorField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2023
    goto :goto_0

    .line 2021
    :catch_0
    move-exception v0

    .line 2022
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2025
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private waitForBeofreSyncCallbacks()V
    .locals 4

    .line 1123
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSyncSwitchCallbacks:Lcn/nubia/server/screenswitch/SwitchCallbackList;

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->checkComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBeforeSyncLock:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    goto :goto_0

    .line 1130
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1127
    :catch_0
    move-exception v1

    .line 1128
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ScreenSwitchService"

    const-string/jumbo v3, "synchronized wait error "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1132
    :cond_0
    :goto_2
    return-void
.end method

.method private waitForCallbacksComplete()V
    .locals 4

    .line 1112
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->checkAllCallbacksComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1115
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mCallbackLock:Ljava/lang/Object;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    goto :goto_0

    .line 1119
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1116
    :catch_0
    move-exception v1

    .line 1117
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ScreenSwitchService"

    const-string/jumbo v3, "synchronized wait error "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1119
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1121
    :cond_0
    :goto_2
    return-void
.end method

.method private waitForTaskChangeComplete()V
    .locals 4

    .line 2556
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isAllHome()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2557
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNextTaskDrawn:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isLastTaskExit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2558
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2560
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mTaskLock:Ljava/lang/Object;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2563
    goto :goto_0

    .line 2564
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2561
    :catch_0
    move-exception v1

    .line 2562
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ScreenSwitchService"

    const-string/jumbo v3, "waitForTaskChangeComplete error "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2564
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mNextTaskDrawn:Z

    .line 2567
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2568
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mExitTask:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2569
    monitor-exit v1

    .line 2570
    return-void

    .line 2569
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2564
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2556
    :cond_3
    :goto_2
    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 4

    .line 561
    new-instance v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$9;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 575
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 576
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 575
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 578
    return-void
.end method

.method private writeScreenOffAodNode(I)V
    .locals 1
    .param p1, "device"    # I

    .line 1889
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAODHelper:Lcn/nubia/server/DualAODScreenStateHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/server/DualAODScreenStateHelper;->writeScreenOffAodNode(I)V

    .line 1890
    return-void
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mBinder:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$BinderService;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 1140
    const-string/jumbo v0, "nubia.screenswitch"

    return-object v0
.end method

.method public onStart()V
    .locals 3

    .line 378
    invoke-super {p0}, Lcn/nubia/server/NubiaSystemService;->onStart()V

    .line 379
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "onStart "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method protected systemReady()V
    .locals 7

    .line 237
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "systemReady "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 239
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 240
    .local v0, "internal":Landroid/hardware/display/DisplayManagerInternal;
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setDisplayManagerInternal(Landroid/hardware/display/DisplayManagerInternal;)V

    .line 241
    const-class v1, Lnubia/os/presssensor/PressSensorInternal;

    invoke-virtual {p0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnubia/os/presssensor/PressSensorInternal;

    iput-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressSensorInternal:Lnubia/os/presssensor/PressSensorInternal;

    .line 242
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    invoke-virtual {v1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->systemReady()V

    .line 243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsAwake:Z

    .line 244
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

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
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAutoSwitch:Z

    .line 246
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

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
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsFloatSwitch:Z

    .line 248
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "switch_screen_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchMode:I

    .line 250
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

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
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDonotRemind:Z

    .line 251
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

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
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mEnableInLearningWizard:Z

    .line 252
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "multi_screen_multi_tasks"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mMultiTasks:Z

    .line 253
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

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
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAlwaysWakeUpMainScreenOrBySensor:Z

    .line 254
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "nubia_pressure_long_switch"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_7

    move v2, v1

    goto :goto_6

    :cond_7
    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPressureLongSwitchEnabled:Z

    .line 255
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "dualscreen_screen_notification"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_8

    move v2, v1

    goto :goto_7

    :cond_8
    move v2, v3

    :goto_7
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHeadsUpSwitchEnable:Z

    .line 256
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "dualscreen_send_application"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_9

    move v2, v1

    goto :goto_8

    :cond_9
    move v2, v3

    :goto_8
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mThreeFingersSwitchEnable:Z

    .line 257
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "nubia_dualscreen_shortcut_switch"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_a

    move v2, v1

    goto :goto_9

    :cond_a
    move v2, v3

    :goto_9
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDualScreenShortcutEnable:Z

    .line 259
    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mIsFloatSwitch:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAutoSwitch:Z

    if-nez v2, :cond_d

    .line 260
    sget-boolean v2, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ScreenSwitchService"

    const-string/jumbo v4, "switch state mismatch, modify it"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_b
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "auto_switch_screen"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "auto_switch_screen"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_c

    move v2, v1

    goto :goto_a

    :cond_c
    move v2, v3

    :goto_a
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAutoSwitch:Z

    .line 266
    :cond_d
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 267
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPowerManager:Landroid/os/PowerManager;

    .line 268
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mAudioManager:Landroid/media/AudioManager;

    .line 269
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    iput-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 271
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "HorizontalDetector"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 272
    .local v2, "detectorThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 273
    new-instance v4, Lcn/nubia/server/screenswitch/HorizontalDetector;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcn/nubia/server/screenswitch/HorizontalDetector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

    .line 274
    new-instance v4, Lcn/nubia/server/screenswitch/DaemonDetector;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcn/nubia/server/screenswitch/DaemonDetector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDaemonDetector:Lcn/nubia/server/screenswitch/DaemonDetector;

    .line 275
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->registerApplicaitonManagerCallback()V

    .line 276
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->registerReceivers()V

    .line 277
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initCameraListener()V

    .line 278
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->registerSettingsOberser()V

    .line 279
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initMotionDetector()V

    .line 280
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->isDeviceProvisionedInSettingsDb()Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDeviceProvisioned:Z

    .line 281
    iget-boolean v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mDeviceProvisioned:Z

    if-nez v4, :cond_e

    .line 282
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->watchForDeviceProvisioning()V

    .line 285
    :cond_e
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "ScreenSwitchManager"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 286
    .local v4, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 287
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mReadLcdStateHandler:Landroid/os/Handler;

    .line 288
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    iget-object v6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mReadLcdStateHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->setHandler(Landroid/os/Handler;)V

    .line 290
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "poweron_upturned_screen"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPoweronUpScreen:I

    .line 292
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initReflects()V

    .line 293
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->resetScreenState()V

    .line 294
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mHorizontalDetector:Lcn/nubia/server/screenswitch/HorizontalDetector;

    new-instance v5, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$3;

    invoke-direct {v5, p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$3;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    invoke-virtual {v3, v5}, Lcn/nubia/server/screenswitch/HorizontalDetector;->setResultListener(Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;)V

    .line 302
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSwitchInterface:Lcn/nubia/server/screenswitch/SwitchImplFor627;

    invoke-virtual {v3}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->checkBackscreenLossOrNot()Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLossSecondScreen:Z

    .line 303
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mSystemReady:Z

    .line 304
    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mLossSecondScreen:Z

    if-nez v1, :cond_f

    .line 305
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->showSubContent()V

    .line 307
    :cond_f
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->initNubiaTrackManager()V

    .line 308
    return-void
.end method

.method public updateBrightScreenChange(I)V
    .locals 5
    .param p1, "backScreen"    # I

    .line 2078
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mUpdateBrightScreenChange:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 2080
    :try_start_0
    sget-boolean v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->DEBUG:Z

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

    .line 2081
    :cond_0
    sget-object v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mUpdateBrightScreenChange:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2084
    goto :goto_0

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2086
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
