.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x3c

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final DEBUG:Z

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final DUMPTRACE_TIMEOUT:J = 0xbb8L

.field private static final MSG_CONFIGURE_BRIGHTNESS:I = 0x5

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_RECOVER_BRIGHT_RATE_TO_DEFAULT:I = 0x8

.field private static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x4

.field private static final MSG_SCREEN_ON_DUMP:I = 0x4

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x7

.field private static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x6

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field private static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field private static final RAMP_STATE_SKIP_NONE:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_BRIGHTNESS_BACK:Ljava/lang/String; = "screen_brightness_back"

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z = false


# instance fields
.field private final GAMESTATE_CLOSEED:I

.field private final GAMESTATE_CLOSEING:I

.field private final GAMESTATE_OPEN:I

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedBrightnessBoost:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAppliedScreenBrightnessOverride:Z

.field private mAppliedTemporaryAutoBrightnessAdjustment:Z

.field private mAppliedTemporaryBrightness:Z

.field private mAutoBrightnessAdjustment:F

.field private mAutomaticBrightnessBackController:Lcom/android/server/display/AutomaticBrightnessController;

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private mAutomaticBrightnessFrontController:Lcom/android/server/display/AutomaticBrightnessController;

.field private mBackScreen:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBlockForAod:Z

.field private mBlockForSwitch:Z

.field private mBoost:Landroid/os/IBinder;

.field private mBrightNoAanimation:Z

.field private mBrightnessBucketsInDozeConfig:Z

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessRampRateFast:I

.field private final mBrightnessRampRateSlow:I

.field private final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private final mColorFadeEnabled:Z

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenBrightnessSetting:I

.field private mDisplayBlanksAfterDozeConfig:Z

.field private mDisplayReadyLocked:Z

.field private mDozing:Z

.field private mForceBrightRate:I

.field private mGameModeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mInitialAutoBrightness:I

.field private mIsSupportBrightPreResearch:Z

.field private mIsSupportOutdoorBrightMode:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastAutomaticBrightness:Z

.field private mLastBlockType:I

.field private mLastScreenStateNotStateOn:Z

.field private mLastUpdateTime:J

.field private mLastUserSetScreenBrightness:I

.field private final mLock:Ljava/lang/Object;

.field private mNubiaBrightnessUtils:Lcom/android/server/display/NubiaBrightnessUtils;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingAutoBrightnessAdjustment:F

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenBrightnessSetting:I

.field private mPendingScreenOff:Z

.field private mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/NubiaRampAnimator$Listener;

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDefault:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessForVr:I

.field private final mScreenBrightnessForVrDefault:I

.field private final mScreenBrightnessForVrRangeMaximum:I

.field private final mScreenBrightnessForVrRangeMinimum:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/NubiaRampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOffBlockStartRealTime:J

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnDumpThead:Landroid/os/HandlerThread;

.field private mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

.field private mScreenoffPowersaveAcquired:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private volatile mSensorReady:Z

.field private mSensorTargetId:I

.field private final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field private mSkipRampState:I

.field private final mSkipScreenOnBrightnessRamp:Z

.field private mSyncLock:Ljava/lang/Object;

.field private mTemporaryAutoBrightnessAdjustment:F

.field private mTemporaryScreenBrightness:I

.field private mTraceDateFormat:Ljava/text/SimpleDateFormat;

.field private mUnfinishedBusiness:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private screenOnDumpHandler:Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

.field wasDim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 115
    nop

    .line 121
    const-string v0, "DisplayPowerController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 56
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    .line 457
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 301
    const/4 v14, -0x1

    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 304
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 305
    const-wide/16 v0, -0x1

    iput-wide v0, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 352
    const/4 v0, 0x0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 366
    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mIsSupportOutdoorBrightMode:Z

    .line 369
    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mIsSupportBrightPreResearch:Z

    .line 371
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mForceBrightRate:I

    .line 419
    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->GAMESTATE_CLOSEED:I

    .line 420
    const/4 v11, 0x1

    iput v11, v15, Lcom/android/server/display/DisplayPowerController;->GAMESTATE_OPEN:I

    .line 421
    const/4 v1, 0x2

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->GAMESTATE_CLOSEING:I

    .line 428
    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightNoAanimation:Z

    .line 436
    const/4 v1, 0x0

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBoost:Landroid/os/IBinder;

    .line 437
    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenoffPowersaveAcquired:Z

    .line 443
    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mSensorReady:Z

    .line 444
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mSyncLock:Ljava/lang/Object;

    .line 449
    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mBackScreen:Z

    .line 828
    new-instance v2, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v2, v15}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 861
    new-instance v2, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v2, v15}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/NubiaRampAnimator$Listener;

    .line 881
    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->wasDim:Z

    .line 1668
    iput-boolean v11, v15, Lcom/android/server/display/DisplayPowerController;->mLastScreenStateNotStateOn:Z

    .line 1958
    new-instance v2, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v2, v15}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 2172
    new-instance v2, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v2, v15}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 2188
    new-instance v2, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v2, v15}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 2204
    new-instance v2, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v2, v15}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 2424
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 2426
    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenOnDumpThead:Landroid/os/HandlerThread;

    .line 2427
    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->screenOnDumpHandler:Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    .line 2497
    new-instance v2, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v2, v15}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 2571
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mLastBlockType:I

    .line 458
    new-instance v2, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v15, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 459
    new-instance v2, Lcom/android/server/display/BrightnessTracker;

    invoke-direct {v2, v13, v1}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 460
    new-instance v1, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v1, v15, v2}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 461
    move-object/from16 v12, p2

    iput-object v12, v15, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 463
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 464
    move-object/from16 v10, p4

    iput-object v10, v15, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 465
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 466
    move-object/from16 v9, p5

    iput-object v9, v15, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 467
    iput-object v13, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 469
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBoost:Landroid/os/IBinder;

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 473
    .local v8, "resources":Landroid/content/res/Resources;
    const v1, 0x10e0093

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v7

    .line 476
    .local v7, "screenBrightnessSettingMinimum":I
    const v1, 0x10e008d

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 479
    const v1, 0x10e008c

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 482
    iget v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 483
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 485
    const v1, 0x10e0092

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 487
    const v1, 0x10e0091

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    .line 490
    const v1, 0x10e0090

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    .line 492
    const v1, 0x10e008f

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    .line 494
    const v1, 0x10e008e

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    .line 497
    const v1, 0x112001f

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 500
    const v1, 0x1120008

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 503
    const v1, 0x10e001e

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    .line 505
    const v1, 0x10e001f

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    .line 507
    const v1, 0x11200a7

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    .line 510
    iget-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v1, :cond_4

    .line 511
    const v1, 0x1130003

    invoke-virtual {v8, v1, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v36

    .line 515
    .local v36, "dozeScaleFactor":F
    const v1, 0x107000c

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 517
    .local v6, "ambientBrighteningThresholds":[I
    const v1, 0x107000d

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 519
    .local v5, "ambientDarkeningThresholds":[I
    const v1, 0x107000e

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 521
    .local v4, "ambientThresholdLevels":[I
    new-instance v1, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v1, v6, v5, v4}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v16, v1

    .line 525
    .local v16, "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v1, 0x1070041

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 527
    .local v3, "screenBrighteningThresholds":[I
    const v1, 0x1070044

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 529
    .local v2, "screenDarkeningThresholds":[I
    const v1, 0x1070045

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 531
    .local v1, "screenThresholdLevels":[I
    new-instance v0, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v17, v0

    .line 535
    .local v17, "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v0, 0x10e000d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v11, v0

    .line 537
    .local v11, "brighteningLightDebounce":J
    const v0, 0x10e000e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v14, v0

    .line 539
    .local v14, "darkeningLightDebounce":J
    const v0, 0x112001b

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v41

    .line 542
    .local v41, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v0, 0x10e0053

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v42

    .line 544
    .local v42, "lightSensorWarmUpTimeConfig":I
    const v0, 0x10e0010

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 546
    .local v0, "lightSensorRate":I
    move-object/from16 v43, v1

    const v1, 0x10e000f

    .line 546
    .end local v1    # "screenThresholdLevels":[I
    .local v43, "screenThresholdLevels":[I
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 548
    .local v1, "initialLightSensorRate":I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_0

    .line 549
    move v1, v0

    .line 556
    move/from16 v40, v1

    move-object/from16 v44, v2

    move-object/from16 v45, v3

    goto :goto_1

    .line 550
    :cond_0
    if-le v1, v0, :cond_1

    .line 551
    const-string v13, "DisplayPowerController"

    move-object/from16 v44, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 551
    .end local v2    # "screenDarkeningThresholds":[I
    .local v44, "screenDarkeningThresholds":[I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v3

    const-string v3, "Expected config_autoBrightnessInitialLightSensorRate ("

    .line 551
    .end local v3    # "screenBrighteningThresholds":[I
    .local v45, "screenBrighteningThresholds":[I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    .end local v44    # "screenDarkeningThresholds":[I
    .end local v45    # "screenBrighteningThresholds":[I
    .restart local v2    # "screenDarkeningThresholds":[I
    .restart local v3    # "screenBrighteningThresholds":[I
    :cond_1
    move-object/from16 v44, v2

    move-object/from16 v45, v3

    .line 556
    .end local v2    # "screenDarkeningThresholds":[I
    .end local v3    # "screenBrighteningThresholds":[I
    .restart local v44    # "screenDarkeningThresholds":[I
    .restart local v45    # "screenBrighteningThresholds":[I
    :goto_0
    move/from16 v40, v1

    .line 556
    .end local v1    # "initialLightSensorRate":I
    .local v40, "initialLightSensorRate":I
    :goto_1
    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "627"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    move-wide/from16 v46, v14

    const/4 v13, 0x1

    move-object/from16 v15, p0

    iput-boolean v13, v15, Lcom/android/server/display/DisplayPowerController;->mIsSupportBrightPreResearch:Z

    goto :goto_2

    .line 560
    :cond_2
    move-wide/from16 v46, v14

    const/4 v13, 0x1

    move-object/from16 v15, p0

    .line 560
    .end local v14    # "darkeningLightDebounce":J
    .local v46, "darkeningLightDebounce":J
    :goto_2
    invoke-static {v8}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 561
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_3

    .line 562
    new-instance v14, Lcom/android/server/display/AutomaticBrightnessController;

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v13, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move/from16 v37, v0

    move-object v0, v14

    .line 563
    .end local v0    # "lightSensorRate":I
    .local v37, "lightSensorRate":I
    move/from16 v18, v1

    move-object/from16 v39, v43

    move-object v1, v15

    .line 563
    .end local v43    # "screenThresholdLevels":[I
    .local v39, "screenThresholdLevels":[I
    move-object/from16 v43, v44

    .line 563
    .end local v44    # "screenDarkeningThresholds":[I
    .local v43, "screenDarkeningThresholds":[I
    move-object/from16 v19, v3

    move-object/from16 v44, v45

    move-object v3, v10

    .line 563
    .end local v45    # "screenBrighteningThresholds":[I
    .local v44, "screenBrighteningThresholds":[I
    move-object/from16 v45, v4

    move-object/from16 v4, v19

    .line 563
    .end local v4    # "ambientThresholdLevels":[I
    .local v45, "ambientThresholdLevels":[I
    move-object/from16 v48, v5

    move/from16 v5, v42

    .line 563
    .end local v5    # "ambientDarkeningThresholds":[I
    .local v48, "ambientDarkeningThresholds":[I
    move-object/from16 v49, v6

    move/from16 v6, v18

    .line 563
    .end local v6    # "ambientBrighteningThresholds":[I
    .local v49, "ambientBrighteningThresholds":[I
    move/from16 v50, v7

    move v7, v13

    .line 563
    .end local v7    # "screenBrightnessSettingMinimum":I
    .local v50, "screenBrightnessSettingMinimum":I
    move-object v13, v8

    move/from16 v8, v36

    .line 563
    .end local v8    # "resources":Landroid/content/res/Resources;
    .local v13, "resources":Landroid/content/res/Resources;
    move/from16 v9, v37

    move/from16 v10, v40

    move-wide/from16 v51, v11

    const/16 v38, 0x1

    .line 563
    .end local v11    # "brighteningLightDebounce":J
    .local v51, "brighteningLightDebounce":J
    move-object/from16 v53, v13

    move-object/from16 v54, v14

    move-wide/from16 v13, v46

    .line 563
    .end local v13    # "resources":Landroid/content/res/Resources;
    .local v53, "resources":Landroid/content/res/Resources;
    move/from16 v15, v41

    invoke-direct/range {v0 .. v17}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;)V

    move-object/from16 v1, v54

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 571
    new-instance v1, Lcom/android/server/display/NubiaBrightnessUtils;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/display/NubiaBrightnessUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mNubiaBrightnessUtils:Lcom/android/server/display/NubiaBrightnessUtils;

    .line 573
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->initializeAutoController(Landroid/content/Context;)V

    .line 575
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mNubiaBrightnessUtils:Lcom/android/server/display/NubiaBrightnessUtils;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaBrightnessUtils;->isSupportOutdoorBrightMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportOutdoorBrightMode:Z

    .line 576
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportOutdoorBrightMode:Z

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->enableBrightMode(Z)V

    .line 580
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 581
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessFrontController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 582
    new-instance v1, Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object/from16 v18, v1

    move-object/from16 v19, v0

    move-object/from16 v21, p4

    move-object/from16 v22, v2

    move/from16 v23, v42

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v36

    move/from16 v27, v37

    move/from16 v28, v40

    move-wide/from16 v29, v51

    move-wide/from16 v31, v46

    move/from16 v33, v41

    move-object/from16 v34, v16

    move-object/from16 v35, v17

    invoke-direct/range {v18 .. v35}, Lcom/android/server/display/AutomaticBrightnessBackController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessBackController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 588
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessBackController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->initializeAutoController(Landroid/content/Context;)V

    goto :goto_3

    .line 592
    .end local v37    # "lightSensorRate":I
    .end local v39    # "screenThresholdLevels":[I
    .end local v48    # "ambientDarkeningThresholds":[I
    .end local v49    # "ambientBrighteningThresholds":[I
    .end local v50    # "screenBrightnessSettingMinimum":I
    .end local v51    # "brighteningLightDebounce":J
    .end local v53    # "resources":Landroid/content/res/Resources;
    .restart local v0    # "lightSensorRate":I
    .restart local v4    # "ambientThresholdLevels":[I
    .restart local v5    # "ambientDarkeningThresholds":[I
    .restart local v6    # "ambientBrighteningThresholds":[I
    .restart local v7    # "screenBrightnessSettingMinimum":I
    .restart local v8    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "brighteningLightDebounce":J
    .local v43, "screenThresholdLevels":[I
    .local v44, "screenDarkeningThresholds":[I
    .local v45, "screenBrighteningThresholds":[I
    :cond_3
    move/from16 v37, v0

    move-object/from16 v48, v5

    move-object/from16 v49, v6

    move/from16 v50, v7

    move-object/from16 v53, v8

    move-wide/from16 v51, v11

    move/from16 v38, v13

    move-object v0, v15

    move-object/from16 v39, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v45

    move-object/from16 v45, v4

    .end local v0    # "lightSensorRate":I
    .end local v4    # "ambientThresholdLevels":[I
    .end local v5    # "ambientDarkeningThresholds":[I
    .end local v6    # "ambientBrighteningThresholds":[I
    .end local v7    # "screenBrightnessSettingMinimum":I
    .end local v8    # "resources":Landroid/content/res/Resources;
    .end local v11    # "brighteningLightDebounce":J
    .restart local v37    # "lightSensorRate":I
    .restart local v39    # "screenThresholdLevels":[I
    .local v43, "screenDarkeningThresholds":[I
    .local v44, "screenBrighteningThresholds":[I
    .local v45, "ambientThresholdLevels":[I
    .restart local v48    # "ambientDarkeningThresholds":[I
    .restart local v49    # "ambientBrighteningThresholds":[I
    .restart local v50    # "screenBrightnessSettingMinimum":I
    .restart local v51    # "brighteningLightDebounce":J
    .restart local v53    # "resources":Landroid/content/res/Resources;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 592
    .end local v16    # "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v17    # "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v36    # "dozeScaleFactor":F
    .end local v37    # "lightSensorRate":I
    .end local v39    # "screenThresholdLevels":[I
    .end local v40    # "initialLightSensorRate":I
    .end local v41    # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .end local v42    # "lightSensorWarmUpTimeConfig":I
    .end local v43    # "screenDarkeningThresholds":[I
    .end local v44    # "screenBrighteningThresholds":[I
    .end local v45    # "ambientThresholdLevels":[I
    .end local v46    # "darkeningLightDebounce":J
    .end local v48    # "ambientDarkeningThresholds":[I
    .end local v49    # "ambientBrighteningThresholds":[I
    .end local v51    # "brighteningLightDebounce":J
    goto :goto_3

    .line 596
    .end local v50    # "screenBrightnessSettingMinimum":I
    .end local v53    # "resources":Landroid/content/res/Resources;
    .restart local v7    # "screenBrightnessSettingMinimum":I
    .restart local v8    # "resources":Landroid/content/res/Resources;
    :cond_4
    move/from16 v50, v7

    move-object/from16 v53, v8

    move/from16 v38, v11

    move-object v0, v15

    .line 596
    .end local v7    # "screenBrightnessSettingMinimum":I
    .end local v8    # "resources":Landroid/content/res/Resources;
    .restart local v50    # "screenBrightnessSettingMinimum":I
    .restart local v53    # "resources":Landroid/content/res/Resources;
    :cond_5
    :goto_3
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 597
    const v1, 0x1120018

    move-object/from16 v2, v53

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 597
    .end local v53    # "resources":Landroid/content/res/Resources;
    .local v2, "resources":Landroid/content/res/Resources;
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 600
    const v1, 0x1120045

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 603
    const v1, 0x1120046

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 607
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 608
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_6

    .line 609
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 614
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    .line 616
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 617
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 618
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 619
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 620
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 621
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/NubiaRampAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 115
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I

    .line 115
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/display/DisplayPowerController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # F

    .line 115
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I

    .line 115
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mForceBrightRate:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->dumpStackTraces()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnDumpThead:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/DisplayPowerController;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .line 115
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnDumpThead:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;)Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    .line 115
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->screenOnDumpHandler:Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/DisplayPowerController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorReady:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorReady:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I

    .line 115
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorTargetId:I

    return p1
.end method

.method static synthetic access$2802(Lcom/android/server/display/DisplayPowerController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method private animateScreenBrightness(II)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .line 1751
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPowerRequest.screenBrightnessOverride:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTemporaryScreenBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->disableDcByNubiaPolicy()V

    .line 1754
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->getMinBrightness(I)I

    move-result p1

    .line 1755
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayPowerController;->getRateByNubiaPolicy(I)I

    move-result p2

    .line 1757
    move v0, p1

    .line 1760
    .local v0, "srcTarget":I
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportOutdoorBrightMode:Z

    if-eqz v1, :cond_1

    .line 1761
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaRampAnimator;->getDoubleScreenMode()I

    move-result v1

    .line 1762
    .local v1, "screenStatus":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 1763
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, -0x3

    .line 1762
    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    nop

    :cond_0
    move v2, v5

    .line 1767
    .local v2, "autoBrightSwitch":Z
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mNubiaBrightnessUtils:Lcom/android/server/display/NubiaBrightnessUtils;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v4

    invoke-virtual {v3, v1, v2, p1, v4}, Lcom/android/server/display/NubiaBrightnessUtils;->setBrightModeByNubiaPolicy(IZIF)Z

    .line 1772
    .end local v1    # "screenStatus":I
    .end local v2    # "autoBrightSwitch":Z
    :cond_1
    sget v1, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    mul-int/2addr p1, v1

    .line 1773
    sget v1, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    mul-int/2addr p2, v1

    .line 1775
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->makeSureSetBrightCanToHal(II)I

    move-result p1

    .line 1777
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/NubiaRampAnimator;->animateTo(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1778
    const-wide/32 v1, 0x20000

    const-string v3, "TargetScreenBrightness"

    invoke-static {v1, v2, v3, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1780
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    goto :goto_0

    .line 1781
    :catch_0
    move-exception v1

    .line 1785
    :cond_2
    :goto_0
    return-void
.end method

.method private animateScreenBrightness(IIZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "automatic"    # Z

    .line 1716
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", automatic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPowerRequest.screenBrightnessOverride:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTemporaryScreenBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->disableDcByNubiaPolicy()V

    .line 1720
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->getMinBrightness(I)I

    move-result p1

    .line 1721
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayPowerController;->getRateByNubiaPolicy(I)I

    move-result p2

    .line 1723
    move v0, p1

    .line 1726
    .local v0, "srcTarget":I
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportOutdoorBrightMode:Z

    if-eqz v1, :cond_1

    .line 1727
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaRampAnimator;->getDoubleScreenMode()I

    move-result v1

    .line 1728
    .local v1, "screenStatus":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 1729
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, -0x3

    .line 1728
    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    nop

    :cond_0
    move v2, v5

    .line 1733
    .local v2, "autoBrightSwitch":Z
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mNubiaBrightnessUtils:Lcom/android/server/display/NubiaBrightnessUtils;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v4

    invoke-virtual {v3, v1, v2, p1, v4}, Lcom/android/server/display/NubiaBrightnessUtils;->setBrightModeByNubiaPolicy(IZIF)Z

    .line 1737
    .end local v1    # "screenStatus":I
    .end local v2    # "autoBrightSwitch":Z
    :cond_1
    sget v1, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    mul-int/2addr p1, v1

    .line 1738
    sget v1, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    mul-int/2addr p2, v1

    .line 1740
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->makeSureSetBrightCanToHal(II)I

    move-result p1

    .line 1741
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/display/NubiaRampAnimator;->animateTo(IIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1743
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    goto :goto_0

    .line 1744
    :catch_0
    move-exception v1

    .line 1748
    :cond_2
    :goto_0
    return-void
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .line 1789
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1790
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1791
    :cond_0
    if-eq p1, v2, :cond_1

    .line 1792
    return-void

    .line 1795
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1798
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1799
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1800
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1803
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 1804
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_3

    .line 1803
    move v5, v2

    goto :goto_0

    .line 1804
    :cond_3
    nop

    .line 1803
    move v5, v1

    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 1805
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 1806
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1813
    :cond_4
    if-eq p1, v3, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    .line 1819
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_7

    if-eq p1, v3, :cond_7

    .line 1820
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1821
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1822
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 1825
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_9

    .line 1829
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1830
    return-void

    .line 1846
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1847
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 1849
    :cond_9
    const/4 v4, 0x5

    if-ne p1, v4, :cond_c

    .line 1853
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaRampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1854
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 1855
    return-void

    .line 1859
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1860
    return-void

    .line 1864
    :cond_b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1865
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 1866
    :cond_c
    const/4 v4, 0x3

    if-ne p1, v4, :cond_e

    .line 1879
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1880
    return-void

    .line 1884
    :cond_d
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1885
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 1886
    :cond_e
    const/4 v5, 0x4

    if-ne p1, v5, :cond_11

    .line 1899
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_10

    .line 1900
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1901
    return-void

    .line 1903
    :cond_f
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1907
    :cond_10
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1908
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 1909
    :cond_11
    const/4 v4, 0x6

    if-ne p1, v4, :cond_15

    .line 1913
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaRampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1914
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_12

    .line 1915
    return-void

    .line 1920
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_14

    .line 1921
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1922
    return-void

    .line 1924
    :cond_13
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1928
    :cond_14
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1929
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_3

    .line 1932
    :cond_15
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1933
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v4, 0x0

    if-nez v0, :cond_16

    .line 1934
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1937
    :cond_16
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_17

    .line 1940
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1941
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1942
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_3

    .line 1943
    :cond_17
    if-eqz p2, :cond_19

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 1945
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_18

    .line 1946
    goto :goto_2

    .line 1944
    :cond_18
    move v2, v3

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1947
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_19

    .line 1949
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    .line 1953
    :cond_19
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1956
    :goto_3
    return-void
.end method

.method private blockScreenOff()V
    .locals 4

    .line 1521
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_0

    .line 1522
    const-wide/32 v0, 0x20000

    const-string v2, "Screen off blocked"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1523
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 1524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 1525
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_0
    return-void
.end method

.method private blockScreenOn()V
    .locals 4

    .line 1497
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 1499
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->scheduleDumpStackTraces()V

    .line 1501
    const-wide/32 v0, 0x20000

    const-string v2, "Screen on blocked"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1502
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1503
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1504
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_0
    return-void
.end method

.method private cancelDumpStackTraces()V
    .locals 2

    .line 2464
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->screenOnDumpHandler:Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    if-eqz v0, :cond_0

    .line 2465
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->screenOnDumpHandler:Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;->removeMessages(I)V

    .line 2467
    :cond_0
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .line 2357
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAutoBrightnessAdjustment(F)F
    .locals 2
    .param p0, "value"    # F

    .line 2361
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .line 1631
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessForVr(I)I
    .locals 2
    .param p1, "value"    # I

    .line 1626
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .line 2040
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2041
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2042
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 2044
    :cond_0
    return-void
.end method

.method private convertToNits(I)F
    .locals 1
    .param p1, "backlight"    # I

    .line 2165
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    return v0

    .line 2168
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private debounceProximitySensor()V
    .locals 6

    .line 2017
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 2020
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2021
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1

    .line 2023
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2025
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-nez v2, :cond_0

    .line 2026
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightNoAanimation:Z

    .line 2028
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 2029
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0

    .line 2033
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2034
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2037
    .end local v0    # "now":J
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void
.end method

.method private disableDcByNubiaPolicy()V
    .locals 1

    .line 1707
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportOutdoorBrightMode:Z

    if-nez v0, :cond_0

    .line 1708
    return-void

    .line 1709
    :cond_0
    const-string v0, "cn.nubia.factory"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->isForegroundApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1710
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaRampAnimator;->disableDcBright()V

    goto :goto_0

    .line 1712
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/NubiaRampAnimator;->resetDcBright()V

    .line 1714
    :goto_0
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2254
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2255
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2265
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2264
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2289
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2288
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    .line 2292
    invoke-virtual {v1}, Lcom/android/server/display/NubiaRampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2291
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2294
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2296
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2295
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 2300
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2303
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 2304
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2307
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3

    .line 2308
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2311
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_4

    .line 2312
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2313
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 2315
    :cond_4
    return-void
.end method

.method private dumpStackTraces()V
    .locals 8

    .line 2470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2472
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1, v1, v1}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v1

    .line 2475
    .local v1, "tracesFile":Ljava/io/File;
    monitor-enter v0

    .line 2477
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2480
    goto :goto_0

    .line 2481
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 2478
    :catch_0
    move-exception v2

    .line 2479
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2481
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2482
    const-string v2, "dalvik.vm.stack-trace-dir"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2483
    .local v2, "tracesDirProp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 2484
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2485
    .local v3, "tracesFileName":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2486
    .local v4, "p":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 2487
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_ScreenOn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2488
    .local v5, "newTracesFileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2489
    .local v6, "newTracesFile":Ljava/io/File;
    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2490
    move-object v1, v6

    .line 2494
    .end local v3    # "tracesFileName":Ljava/lang/String;
    .end local v4    # "p":I
    .end local v5    # "newTracesFileName":Ljava/lang/String;
    .end local v6    # "newTracesFile":Ljava/io/File;
    :cond_0
    return-void

    .line 2481
    .end local v2    # "tracesDirProp":Ljava/lang/String;
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private getAutoBrightnessAdjustmentSetting()F
    .locals 4

    .line 2075
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2077
    .local v0, "adj":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAutoBrightnessAdjustment(F)F

    move-result v2

    :goto_0
    return v2
.end method

.method private getGameModeState()I
    .locals 3

    .line 1463
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_on_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1465
    .local v0, "gameState":I
    return v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 1636
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getMinBrightness(I)I
    .locals 3
    .param p1, "brightness"    # I

    .line 1645
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportBrightPreResearch:Z

    if-eqz v0, :cond_0

    .line 1646
    if-lez p1, :cond_0

    const/16 v0, 0x15

    if-ge p1, v0, :cond_0

    .line 1647
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "627 allow min brightness is 21,is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/16 p1, 0x15

    .line 1651
    :cond_0
    return p1
.end method

.method private getRateByNubiaPolicy(I)I
    .locals 3
    .param p1, "rate"    # I

    .line 1655
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportBrightPreResearch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mForceBrightRate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1656
    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-ge p1, v0, :cond_0

    .line 1657
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "627 when screen_state=on,bright rate=mForceBrightRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mForceBrightRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in 2 seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mForceBrightRate:I

    .line 1661
    :cond_0
    return p1
.end method

.method private getScreenBrightModeSetting(Z)I
    .locals 4
    .param p1, "isBackScreen"    # Z

    .line 2556
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2557
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 2558
    const-string/jumbo v1, "screen_brightness_mode_back"

    .line 2558
    .local v1, "brightnessModeStr":Ljava/lang/String;
    goto :goto_0

    .line 2560
    .end local v1    # "brightnessModeStr":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "screen_brightness_mode"

    .line 2562
    .restart local v1    # "brightnessModeStr":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    return v2
.end method

.method private getScreenBrightnessForVrSetting()I
    .locals 4

    .line 2097
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_for_vr"

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2100
    .local v0, "brightness":I
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForVr(I)I

    move-result v1

    return v1
.end method

.method private getScreenBrightnessSetting()I
    .locals 4

    .line 2082
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->backScreen:Z

    if-eqz v0, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_brightness_back"

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2087
    .local v0, "brightness":I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    return v1

    .line 2090
    .end local v0    # "brightness":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_brightness"

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2093
    .restart local v0    # "brightness":I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    return v1
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 4
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .line 1989
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_3

    .line 1990
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 1991
    return-void

    .line 1993
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 1994
    return-void

    .line 2000
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2001
    const-wide/16 v2, 0x0

    if-eqz p3, :cond_2

    .line 2002
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2003
    add-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_0

    .line 2006
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2007
    add-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 2012
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    .line 2014
    :cond_3
    return-void
.end method

.method private handleSettingsChange(Z)V
    .locals 1
    .param p1, "userSwitch"    # Z

    .line 2059
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 2060
    if-eqz p1, :cond_0

    .line 2062
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 2063
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 2067
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2070
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    .line 2071
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2072
    return-void
.end method

.method private initialize()V
    .locals 6

    .line 742
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 743
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/display/ColorFade;

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 745
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 748
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 749
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 751
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 753
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 754
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 760
    :cond_1
    new-instance v0, Lcom/android/server/display/NubiaRampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/NubiaRampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    .line 764
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/NubiaRampAnimator;->setContext(Landroid/content/Context;)V

    .line 767
    new-instance v0, Lcom/android/server/display/DisplayPowerController$1;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mGameModeObserver:Landroid/database/ContentObserver;

    .line 784
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mGameModeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/NubiaRampAnimator$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/NubiaRampAnimator;->setListener(Lcom/android/server/display/NubiaRampAnimator$Listener;)V

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 791
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    goto :goto_1

    .line 792
    :catch_0
    move-exception v0

    .line 797
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    .line 798
    .local v0, "brightness":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 799
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 802
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    .line 803
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 802
    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 805
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_for_vr"

    .line 806
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 805
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 808
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_auto_brightness_adj"

    .line 809
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 808
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 813
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 814
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_back"

    .line 815
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 814
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 819
    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private interceptForScreenSwitch(II)I
    .locals 10
    .param p1, "state"    # I
    .param p2, "mode"    # I

    .line 1409
    const/4 v0, -0x1

    .line 1410
    .local v0, "screenId":I
    invoke-static {p2}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->checkSolutionWithDevice(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1411
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->startOrientationSensor:Z

    if-eqz v1, :cond_3

    .line 1412
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorReady:Z

    .line 1414
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1415
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mSensorReady:Z

    if-nez v3, :cond_1

    .line 1416
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    invoke-virtual {v3}, Lnubia/os/screenswitch/ScreenSwitchInternal;->startDetectingScreen()V

    .line 1417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    .local v3, "startTime":J
    :try_start_1
    const-string v5, "DisplayPowerController"

    const-string v6, "Sensor waitting for mSensorReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mSyncLock:Ljava/lang/Object;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 1421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 1422
    .local v5, "duration":J
    const-wide/16 v7, 0x96

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    .line 1423
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sensor waitting time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", ready "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/server/display/DisplayPowerController;->mSensorReady:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1427
    .end local v5    # "duration":J
    :cond_0
    goto :goto_0

    .line 1425
    :catch_0
    move-exception v5

    .line 1426
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "DisplayPowerController"

    const-string/jumbo v7, "wait error"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1429
    .end local v3    # "startTime":J
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1430
    const/4 v2, 0x0

    .line 1431
    .local v2, "targetId":I
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mSensorReady:Z

    if-eqz v3, :cond_2

    .line 1432
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mSensorTargetId:I

    .line 1433
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ready to switch screen for display ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1435
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    invoke-virtual {v3}, Lnubia/os/screenswitch/ScreenSwitchInternal;->resetDetectorWhenTimeout()V

    .line 1436
    const-string v3, "DisplayPowerController"

    const-string v4, "Require sensor data but not ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :goto_1
    move v0, v2

    .line 1439
    const-string/jumbo v3, "sensor"

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->switchScreenForNubia(ILjava/lang/String;)V

    .line 1440
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v1, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->startOrientationSensor:Z

    .line 1440
    .end local v2    # "targetId":I
    goto :goto_2

    .line 1429
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1443
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forcedScreenId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_4

    .line 1444
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forcedScreenId:I

    .line 1445
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forcedScreenId:I

    const-string v3, "force"

    invoke-direct {p0, v1, v3}, Lcom/android/server/display/DisplayPowerController;->switchScreenForNubia(ILjava/lang/String;)V

    .line 1446
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v2, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forcedScreenId:I

    .line 1449
    :cond_4
    return v0
.end method

.method private isBackScreen(I)Z
    .locals 3
    .param p1, "screenId"    # I

    .line 2544
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    if-eqz v2, :cond_1

    .line 2545
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    invoke-virtual {v2}, Lnubia/os/screenswitch/ScreenSwitchInternal;->getShowingDisplayId()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 2546
    :cond_1
    if-nez p1, :cond_2

    .line 2547
    return v0

    .line 2548
    :cond_2
    if-ne p1, v1, :cond_3

    .line 2549
    return v1

    .line 2551
    :cond_3
    return v0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "ret":Z
    const-string/jumbo v1, "sys.perf.activate"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "curActivity":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    const/4 v0, 0x1

    .line 876
    :cond_0
    return v0
.end method

.method private makeSureSetBrightCanToHal(II)I
    .locals 10
    .param p1, "value"    # I
    .param p2, "rate"    # I

    .line 1670
    move v0, p1

    .line 1671
    .local v0, "retValue":I
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportOutdoorBrightMode:Z

    if-nez v1, :cond_0

    .line 1672
    return v0

    .line 1673
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    .line 1674
    .local v1, "curScreenState":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v2

    sget v3, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    mul-int/2addr v2, v3

    .line 1675
    .local v2, "powerStateValue":I
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v3}, Lcom/android/server/display/NubiaRampAnimator;->getCurrentValueFromRamp()I

    move-result v3

    .line 1676
    .local v3, "rampCurentValue":I
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenStateNotStateOn:Z

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    if-ne v1, v6, :cond_3

    .line 1677
    const-string/jumbo v4, "persist.sys.lcd.ramprate.fast"

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget v7, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    mul-int/2addr v4, v7

    .line 1679
    .local v4, "rampRateFast":I
    if-eqz p2, :cond_1

    if-ne p2, v4, :cond_3

    .line 1680
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1681
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "makeSureSetBrightCanToHal value=rampCurentValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Lcom/android/server/display/NubiaRampAnimator;->modifyCurrentValue(I)V

    .line 1684
    :cond_2
    if-ne p1, v2, :cond_3

    .line 1685
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "makeSureSetBrightCanToHal value=powerStateValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1687
    .local v7, "value_tmp":I
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v8, v9}, Lcom/android/server/display/DisplayPowerState;->modifyScreenBrightValue(I)V

    .line 1691
    .end local v4    # "rampRateFast":I
    .end local v7    # "value_tmp":I
    :cond_3
    if-ne v1, v6, :cond_4

    .line 1692
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenStateNotStateOn:Z

    goto :goto_0

    .line 1694
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenStateNotStateOn:Z

    .line 1695
    if-eq v1, v4, :cond_5

    if-ne v1, v5, :cond_6

    .line 1696
    :cond_5
    if-eqz v0, :cond_6

    .line 1697
    const/4 v0, 0x0

    .line 1698
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScreenState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",so bright should set 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_6
    :goto_0
    return v0
.end method

.method private notifyBrightnessChanged(IZZ)V
    .locals 7
    .param p1, "brightness"    # I
    .param p2, "userInitiated"    # Z
    .param p3, "hadUserDataPoint"    # Z

    .line 2149
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v6

    .line 2150
    .local v6, "brightnessInNits":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1

    .line 2155
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v0, :cond_0

    .line 2156
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 2157
    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2158
    .local v3, "powerFactor":F
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2160
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v5

    .line 2158
    move v1, v6

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZ)V

    .line 2162
    .end local v3    # "powerFactor":F
    :cond_1
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2318
    packed-switch p0, :pswitch_data_0

    .line 2326
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2324
    :pswitch_0
    const-string v0, "Positive"

    return-object v0

    .line 2322
    :pswitch_1
    const-string v0, "Negative"

    return-object v0

    .line 2320
    :pswitch_2
    const-string v0, "Unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private putAutoBrightnessAdjustmentSetting(F)V
    .locals 3
    .param p1, "adjustment"    # F

    .line 2113
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2114
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2116
    return-void
.end method

.method private putScreenBrightnessSetting(I)V
    .locals 3
    .param p1, "brightness"    # I

    .line 2104
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 2106
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2108
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2110
    return-void
.end method

.method private registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 823
    const-string v0, "game_mode_on_off"

    .line 824
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 823
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 825
    return-void
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2331
    packed-switch p0, :pswitch_data_0

    .line 2339
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2337
    :pswitch_0
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 2335
    :pswitch_1
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 2333
    :pswitch_2
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleDumpStackTraces()V
    .locals 4

    .line 2450
    const-string/jumbo v0, "on"

    const-string/jumbo v1, "persist.sys.nblog.enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2451
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnDumpThead:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2452
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "screen_on_dump"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnDumpThead:Landroid/os/HandlerThread;

    .line 2453
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnDumpThead:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2454
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnDumpThead:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->screenOnDumpHandler:Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    .line 2456
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->screenOnDumpHandler:Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;->removeMessages(I)V

    .line 2457
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->screenOnDumpHandler:Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2458
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2459
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->screenOnDumpHandler:Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/DisplayPowerController$ScreenOnDumpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2461
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .line 2197
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2198
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2200
    const/4 v0, 0x7

    invoke-static {v0}, Lnubia/hardware/BreathingLightManager;->requestBreathingLight(I)V

    .line 2202
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .line 2181
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2182
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2184
    const/4 v0, 0x6

    invoke-static {v0}, Lnubia/hardware/BreathingLightManager;->requestBreathingLight(I)V

    .line 2186
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .line 2054
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2055
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2056
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 727
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 728
    monitor-exit v0

    .line 729
    return-void

    .line 728
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 2

    .line 732
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 734
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 735
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 737
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setGameModeState(I)V
    .locals 2
    .param p1, "gameState"    # I

    .line 1469
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_on_off"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1471
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4
    .param p1, "debounceTime"    # J

    .line 2047
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2048
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2050
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2051
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 1966
    if-eqz p1, :cond_0

    .line 1967
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 1970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1971
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1975
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 1978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1979
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1980
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1981
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1982
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1983
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1986
    :cond_1
    :goto_0
    return-void
.end method

.method private setReportedScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1621
    const-string v0, "ReportedScreenStateToPolicy"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1622
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 1623
    return-void
.end method

.method private setScreenState(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 1539
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IZ)Z
    .locals 8
    .param p1, "state"    # I
    .param p2, "reportOnly"    # Z

    .line 1543
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1544
    .local v2, "isOff":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, p1, :cond_5

    .line 1548
    const/4 v3, 0x2

    if-eqz v2, :cond_2

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v5, :cond_2

    .line 1549
    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v5, v3, :cond_1

    .line 1550
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1551
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 1552
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 1553
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    goto :goto_1

    .line 1554
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v5, :cond_2

    .line 1556
    return v0

    .line 1560
    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 1561
    const-wide/32 v5, 0x20000

    const-string v7, "ScreenState"

    invoke-static {v5, v6, v7, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1562
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 1565
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    goto :goto_2

    .line 1566
    :catch_0
    move-exception v5

    .line 1571
    :cond_3
    :goto_2
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportBrightPreResearch:Z

    if-eqz v5, :cond_5

    .line 1572
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v3, :cond_4

    .line 1573
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v6}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1574
    const/16 v3, 0xb4

    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mForceBrightRate:I

    .line 1575
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v6}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1576
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1577
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1578
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_3

    .line 1579
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v3, v6}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1580
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mForceBrightRate:I

    .line 1592
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_6

    .line 1594
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1595
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1596
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_4

    .line 1597
    :cond_6
    if-nez v2, :cond_7

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_7

    .line 1602
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 1603
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    .line 1604
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1606
    :cond_7
    :goto_4
    if-nez v2, :cond_9

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v3, :cond_9

    .line 1607
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1608
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    .line 1609
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_5

    .line 1611
    :cond_8
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1613
    :goto_5
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 1617
    :cond_9
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v3, :cond_a

    move v0, v1

    nop

    :cond_a
    return v0
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2344
    packed-switch p0, :pswitch_data_0

    .line 2352
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2350
    :pswitch_0
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    .line 2348
    :pswitch_1
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    .line 2346
    :pswitch_2
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private switchScreenForNubia(ILjava/lang/String;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1453
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1454
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change to Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const-class v1, Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchManager;

    .line 1456
    .local v0, "ssm":Lnubia/os/screenswitch/ScreenSwitchManager;
    or-int/lit8 v1, p1, 0x40

    invoke-virtual {v0, v1}, Lnubia/os/screenswitch/ScreenSwitchManager;->switchScreen(I)V

    .line 1458
    .end local v0    # "ssm":Lnubia/os/screenswitch/ScreenSwitchManager;
    :cond_0
    return-void
.end method

.method private unblockScreenOff()V
    .locals 6

    .line 1530
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_0

    .line 1531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 1532
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 1533
    .local v0, "delay":J
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen off after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const-wide/32 v2, 0x20000

    const-string v4, "Screen off blocked"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1536
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private unblockScreenOn()V
    .locals 6

    .line 1509
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_0

    .line 1510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 1512
    .local v0, "delay":J
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const-wide/32 v2, 0x20000

    const-string v4, "Screen on blocked"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1515
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->cancelDumpStackTraces()V

    .line 1518
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updateAutoBrightnessAdjustment()Z
    .locals 3

    .line 2119
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2120
    return v1

    .line 2122
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_1

    .line 2123
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2124
    return v1

    .line 2126
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2127
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2128
    const/4 v0, 0x1

    return v0
.end method

.method private updatePowerState()V
    .locals 45

    .line 887
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 889
    .local v2, "mustInitialize":Z
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 890
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 891
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v4, :cond_0

    .line 892
    monitor-exit v3

    return-void

    .line 895
    :cond_0
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v4, :cond_1

    .line 896
    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v4, v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 897
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 898
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 899
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 900
    const/4 v2, 0x1

    goto :goto_0

    .line 901
    :cond_1
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v4, :cond_2

    .line 902
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 903
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v4, v5

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 904
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 905
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 906
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 909
    :cond_2
    :goto_0
    :try_start_1
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 910
    .local v4, "mustNotify":Z
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 913
    if-eqz v2, :cond_3

    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 920
    :cond_3
    const/4 v3, -0x1

    .line 921
    .local v3, "brightness":I
    const/4 v6, 0x0

    .line 922
    .local v6, "performScreenOffTransition":Z
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v7, v8, :cond_5

    packed-switch v7, :pswitch_data_0

    .line 945
    move v7, v10

    goto :goto_2

    .line 930
    :pswitch_0
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v7, :cond_4

    .line 931
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 931
    .local v7, "state":I
    goto :goto_1

    .line 933
    .end local v7    # "state":I
    :cond_4
    move v7, v9

    .line 935
    .restart local v7    # "state":I
    :goto_1
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v11, :cond_6

    .line 936
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto :goto_2

    .line 924
    .end local v7    # "state":I
    :pswitch_1
    const/4 v7, 0x1

    .line 928
    .restart local v7    # "state":I
    goto :goto_2

    .line 940
    .end local v7    # "state":I
    :cond_5
    const/4 v7, 0x5

    .line 941
    .restart local v7    # "state":I
    nop

    .line 945
    :cond_6
    :goto_2
    nop

    .line 948
    nop

    .line 951
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v11, :cond_a

    .line 952
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v11, :cond_7

    if-eq v7, v5, :cond_7

    .line 953
    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 954
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v11, :cond_9

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v5, :cond_9

    .line 956
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto :goto_3

    .line 959
    :cond_7
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v11, :cond_8

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_8

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v5, :cond_8

    if-eq v7, v5, :cond_8

    .line 963
    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_3

    .line 965
    :cond_8
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 966
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 968
    :cond_9
    :goto_3
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_b

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-eq v11, v5, :cond_b

    .line 970
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 971
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto :goto_4

    .line 974
    :cond_a
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 976
    :cond_b
    :goto_4
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_c

    .line 977
    const/4 v7, 0x1

    .line 983
    :cond_c
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v11

    .line 985
    .local v11, "oldState":I
    invoke-direct {v1, v7, v10}, Lcom/android/server/display/DisplayPowerController;->interceptForScreenSwitch(II)I

    move-result v12

    .line 988
    .local v12, "screenId":I
    invoke-direct {v1, v12}, Lcom/android/server/display/DisplayPowerController;->isBackScreen(I)Z

    move-result v13

    .line 989
    .local v13, "isBackScreen":Z
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->backScreen:Z

    if-eq v13, v14, :cond_e

    .line 990
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v13, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->backScreen:Z

    .line 991
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v1, v13}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightModeSetting(Z)I

    move-result v15

    if-ne v15, v5, :cond_d

    move v15, v5

    goto :goto_5

    :cond_d
    move v15, v0

    :goto_5
    iput-boolean v15, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 993
    const-string v14, "DisplayPowerController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updatePowerState interceptForScreenSwitch: isBackScreen="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", useAutoBrightness="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_e
    invoke-direct {v1, v7, v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 998
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v10}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v7

    .line 1000
    invoke-direct {v1, v7, v5}, Lcom/android/server/display/DisplayPowerController;->interceptForScreenSwitch(II)I

    .line 1004
    if-eq v7, v5, :cond_10

    if-eq v7, v9, :cond_10

    if-ne v7, v8, :cond_f

    goto :goto_6

    .line 1014
    :cond_f
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mScreenoffPowersaveAcquired:Z

    if-eqz v10, :cond_11

    .line 1015
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenoffPowersaveAcquired:Z

    .line 1016
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mBoost:Landroid/os/IBinder;

    invoke-static {v10}, Landroid/os/BSPApplicationManager$Trigger;->releasePerformanceLock(Landroid/os/IBinder;)V

    goto :goto_7

    .line 1005
    :cond_10
    :goto_6
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mScreenoffPowersaveAcquired:Z

    if-nez v10, :cond_11

    .line 1006
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenoffPowersaveAcquired:Z

    .line 1007
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mBoost:Landroid/os/IBinder;

    const-string v14, "com.screen.off"

    const/16 v15, 0xf

    const-wide/16 v0, 0x0

    invoke-static {v10, v14, v15, v0, v1}, Landroid/os/BSPApplicationManager$Trigger;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 1021
    :cond_11
    :goto_7
    if-ne v7, v5, :cond_13

    .line 1023
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1024
    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-virtual {v1, v9, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenBrightness(IZ)V

    goto :goto_8

    .line 1027
    :cond_12
    move-object/from16 v1, p0

    :goto_8
    const/4 v3, 0x0

    goto :goto_9

    .line 1031
    :cond_13
    move-object/from16 v1, p0

    :goto_9
    const/4 v0, 0x5

    if-ne v7, v0, :cond_14

    .line 1032
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    .line 1035
    :cond_14
    if-gez v3, :cond_15

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    if-lez v10, :cond_15

    .line 1036
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    .line 1037
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    goto :goto_a

    .line 1039
    :cond_15
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    .line 1042
    :goto_a
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mIsSupportBrightPreResearch:Z

    if-eqz v10, :cond_16

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    xor-int/2addr v14, v5

    invoke-virtual {v10, v14}, Lcom/android/server/display/NubiaRampAnimator;->changeProcessBarEnable(Z)V

    .line 1045
    :cond_16
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v10, :cond_17

    .line 1046
    invoke-static {v7}, Landroid/view/Display;->isDozeState(I)Z

    move-result v10

    if-eqz v10, :cond_17

    move v10, v5

    goto :goto_b

    :cond_17
    const/4 v10, 0x0

    .line 1047
    .local v10, "autoBrightnessEnabledInDoze":Z
    :goto_b
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v14, :cond_19

    const/4 v14, 0x2

    if-eq v7, v14, :cond_18

    if-eqz v10, :cond_19

    :cond_18
    if-gez v3, :cond_19

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v14, :cond_19

    move v14, v5

    goto :goto_c

    :cond_19
    const/4 v14, 0x0

    .line 1052
    .local v14, "autoBrightnessEnabled":Z
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateUserSetScreenBrightness()Z

    move-result v15

    .line 1056
    .local v15, "userSetBrightnessChanged":Z
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    if-lez v8, :cond_1a

    .line 1057
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 1058
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    goto :goto_d

    .line 1060
    :cond_1a
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1063
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustment()Z

    move-result v8

    .line 1064
    .local v8, "autoBrightnessAdjustmentChanged":Z
    if-eqz v8, :cond_1b

    .line 1065
    const/high16 v9, 0x7fc00000    # Float.NaN

    iput v9, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1070
    :cond_1b
    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 1071
    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1072
    .local v9, "autoBrightnessAdjustment":F
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    goto :goto_e

    .line 1074
    .end local v9    # "autoBrightnessAdjustment":F
    :cond_1c
    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 1075
    .restart local v9    # "autoBrightnessAdjustment":F
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 1082
    :goto_e
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v0, :cond_1d

    if-eqz v3, :cond_1d

    .line 1084
    const/16 v3, 0xff

    .line 1085
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    goto :goto_f

    .line 1087
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    .line 1092
    :goto_f
    if-gez v3, :cond_1f

    if-nez v8, :cond_1e

    if-eqz v15, :cond_1f

    :cond_1e
    move v0, v5

    goto :goto_10

    :cond_1f
    const/4 v0, 0x0

    :goto_10
    move/from16 v25, v0

    .line 1095
    .local v25, "userInitiatedChange":Z
    const/4 v0, 0x0

    .line 1098
    .local v0, "hadUserBrightnessPoint":Z
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v16

    if-eqz v16, :cond_23

    .line 1099
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->backScreen:Z

    if-eqz v5, :cond_20

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessFrontController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v5, :cond_20

    .line 1100
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessBackController:Lcom/android/server/display/AutomaticBrightnessController;

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1101
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessFrontController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController;->disableLightSensor()V

    goto :goto_11

    .line 1102
    :cond_20
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessBackController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v5, :cond_21

    .line 1103
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessFrontController:Lcom/android/server/display/AutomaticBrightnessController;

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1104
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessBackController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController;->disableLightSensor()V

    .line 1107
    :cond_21
    :goto_11
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mBackScreen:Z

    move/from16 v26, v0

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1107
    .end local v0    # "hadUserBrightnessPoint":Z
    .local v26, "hadUserBrightnessPoint":Z
    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->backScreen:Z

    if-eq v5, v0, :cond_24

    .line 1108
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->backScreen:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBackScreen:Z

    .line 1109
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    if-eqz v0, :cond_22

    .line 1110
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mBackScreen:Z

    invoke-virtual {v0, v5}, Lcom/android/server/display/NubiaRampAnimator;->setScreenState(Z)V

    .line 1112
    :cond_22
    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    goto :goto_12

    .line 1116
    .end local v26    # "hadUserBrightnessPoint":Z
    .restart local v0    # "hadUserBrightnessPoint":Z
    :cond_23
    move/from16 v26, v0

    .line 1116
    .end local v0    # "hadUserBrightnessPoint":Z
    .restart local v26    # "hadUserBrightnessPoint":Z
    :cond_24
    :goto_12
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_25

    .line 1117
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v0

    .line 1118
    .end local v26    # "hadUserBrightnessPoint":Z
    .restart local v0    # "hadUserBrightnessPoint":Z
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move/from16 v27, v0

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 1118
    .end local v0    # "hadUserBrightnessPoint":Z
    .local v27, "hadUserBrightnessPoint":Z
    move/from16 v28, v2

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    .line 1118
    .end local v2    # "mustInitialize":Z
    .local v28, "mustInitialize":Z
    int-to-float v2, v2

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v20, v2, v16

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move-object/from16 v17, v5

    move/from16 v18, v14

    move-object/from16 v19, v0

    move/from16 v21, v15

    move/from16 v22, v9

    move/from16 v23, v8

    move/from16 v24, v2

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZI)V

    .line 1126
    move/from16 v2, v27

    goto :goto_13

    .line 1126
    .end local v27    # "hadUserBrightnessPoint":Z
    .end local v28    # "mustInitialize":Z
    .restart local v2    # "mustInitialize":Z
    .restart local v26    # "hadUserBrightnessPoint":Z
    :cond_25
    move/from16 v28, v2

    move/from16 v2, v26

    .line 1126
    .end local v26    # "hadUserBrightnessPoint":Z
    .local v2, "hadUserBrightnessPoint":Z
    .restart local v28    # "mustInitialize":Z
    :goto_13
    const/4 v0, 0x0

    .line 1127
    .local v0, "slowChange":Z
    if-gez v3, :cond_2a

    .line 1128
    move v5, v9

    .line 1129
    .local v5, "newAutoBrightnessAdjustment":F
    if-eqz v14, :cond_26

    .line 1130
    move/from16 v29, v0

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1130
    .end local v0    # "slowChange":Z
    .local v29, "slowChange":Z
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v3

    .line 1131
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1132
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v5

    goto :goto_14

    .line 1135
    .end local v29    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    :cond_26
    move/from16 v29, v0

    .line 1135
    .end local v0    # "slowChange":Z
    .restart local v29    # "slowChange":Z
    :goto_14
    if-ltz v3, :cond_28

    .line 1137
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v0

    .line 1138
    .end local v3    # "brightness":I
    .local v0, "brightness":I
    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v3, :cond_27

    .line 1139
    const/4 v3, 0x1

    .line 1145
    .end local v29    # "slowChange":Z
    .local v3, "slowChange":Z
    move/from16 v29, v3

    .line 1145
    .end local v3    # "slowChange":Z
    .restart local v29    # "slowChange":Z
    :cond_27
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(I)V

    .line 1146
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1150
    move v3, v0

    goto :goto_15

    .line 1148
    .end local v0    # "brightness":I
    .local v3, "brightness":I
    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1150
    .end local v29    # "slowChange":Z
    .local v0, "slowChange":Z
    :goto_15
    move/from16 v0, v29

    cmpl-float v16, v9, v5

    if-eqz v16, :cond_29

    .line 1153
    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessAdjustmentSetting(F)V

    .line 1155
    .end local v5    # "newAutoBrightnessAdjustment":F
    :cond_29
    goto :goto_16

    .line 1156
    :cond_2a
    move/from16 v29, v0

    .line 1156
    .end local v0    # "slowChange":Z
    .restart local v29    # "slowChange":Z
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1160
    move/from16 v0, v29

    .line 1160
    .end local v29    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    :goto_16
    if-gez v3, :cond_2b

    invoke-static {v7}, Landroid/view/Display;->isDozeState(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1162
    const/4 v3, 0x0

    .line 1167
    :cond_2b
    if-gez v3, :cond_2c

    .line 1168
    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v3

    .line 1173
    :cond_2c
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v30, v0

    const/4 v0, 0x2

    if-ne v5, v0, :cond_30

    .line 1174
    .end local v0    # "slowChange":Z
    .local v30, "slowChange":Z
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v0, :cond_2e

    .line 1175
    add-int/lit8 v0, v3, -0xa

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1178
    .end local v3    # "brightness":I
    .local v0, "brightness":I
    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mIsSupportBrightPreResearch:Z

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/display/NubiaRampAnimator;->changeProcessBarEnable(Z)V

    .line 1181
    :cond_2d
    move v3, v0

    .line 1181
    .end local v0    # "brightness":I
    .restart local v3    # "brightness":I
    :cond_2e
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v0, :cond_2f

    .line 1182
    const/4 v0, 0x0

    .line 1182
    .end local v30    # "slowChange":Z
    .local v0, "slowChange":Z
    goto :goto_17

    .line 1184
    .end local v0    # "slowChange":Z
    .restart local v30    # "slowChange":Z
    :cond_2f
    move/from16 v0, v30

    .line 1184
    .end local v30    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    :goto_17
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1187
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->wasDim:Z

    goto :goto_18

    .line 1189
    .end local v0    # "slowChange":Z
    .restart local v30    # "slowChange":Z
    :cond_30
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v0, :cond_31

    .line 1190
    const/4 v0, 0x0

    .line 1191
    .end local v30    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto :goto_18

    .line 1196
    .end local v0    # "slowChange":Z
    .restart local v30    # "slowChange":Z
    :cond_31
    move/from16 v0, v30

    .line 1196
    .end local v30    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    :goto_18
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    move/from16 v31, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1196
    .end local v0    # "slowChange":Z
    .local v31, "slowChange":Z
    if-eqz v5, :cond_34

    .line 1197
    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v5, :cond_32

    .line 1198
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 1199
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1200
    .local v5, "brightnessFactor":F
    int-to-float v0, v3

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 1201
    .local v0, "lowPowerBrightness":I
    move/from16 v32, v3

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 1201
    .end local v3    # "brightness":I
    .local v32, "brightness":I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1203
    .end local v5    # "brightnessFactor":F
    .end local v32    # "brightness":I
    .local v0, "brightness":I
    move v3, v0

    goto :goto_19

    .line 1203
    .end local v0    # "brightness":I
    .restart local v3    # "brightness":I
    :cond_32
    move/from16 v32, v3

    :goto_19
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v0, :cond_33

    .line 1204
    const/4 v0, 0x0

    .line 1204
    .end local v31    # "slowChange":Z
    .local v0, "slowChange":Z
    goto :goto_1a

    .line 1206
    .end local v0    # "slowChange":Z
    .restart local v31    # "slowChange":Z
    :cond_33
    move/from16 v0, v31

    .line 1206
    .end local v31    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    :goto_1a
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    goto :goto_1c

    .line 1207
    .end local v0    # "slowChange":Z
    .restart local v31    # "slowChange":Z
    :cond_34
    move/from16 v32, v3

    .line 1207
    .end local v3    # "brightness":I
    .restart local v32    # "brightness":I
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-eqz v0, :cond_35

    .line 1208
    const/4 v0, 0x0

    .line 1209
    .end local v31    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    goto :goto_1b

    .line 1211
    .end local v0    # "slowChange":Z
    .restart local v31    # "slowChange":Z
    :cond_35
    move/from16 v0, v31

    .line 1211
    .end local v31    # "slowChange":Z
    .end local v32    # "brightness":I
    .restart local v0    # "slowChange":Z
    .restart local v3    # "brightness":I
    :goto_1b
    move/from16 v3, v32

    :goto_1c
    move v5, v0

    .line 1214
    .local v5, "slowChangeRecord":Z
    move/from16 v33, v6

    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1214
    .end local v6    # "performScreenOffTransition":Z
    .local v33, "performScreenOffTransition":Z
    if-nez v6, :cond_5c

    .line 1215
    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v6, :cond_39

    .line 1216
    const/4 v6, 0x2

    if-ne v7, v6, :cond_38

    .line 1217
    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v6, :cond_36

    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v6, :cond_36

    .line 1218
    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    .line 1219
    const/4 v6, 0x1

    iput v6, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 1232
    move/from16 v34, v8

    goto :goto_1d

    .line 1220
    :cond_36
    const/4 v6, 0x1

    move/from16 v34, v8

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 1220
    .end local v8    # "autoBrightnessAdjustmentChanged":Z
    .local v34, "autoBrightnessAdjustmentChanged":Z
    if-ne v8, v6, :cond_37

    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_37

    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    if-eq v3, v6, :cond_37

    .line 1223
    const/4 v6, 0x2

    iput v6, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_1d

    .line 1224
    :cond_37
    const/4 v6, 0x2

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v8, v6, :cond_3a

    .line 1225
    const/4 v6, 0x0

    iput v6, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_1d

    .line 1228
    .end local v34    # "autoBrightnessAdjustmentChanged":Z
    .restart local v8    # "autoBrightnessAdjustmentChanged":Z
    :cond_38
    move/from16 v34, v8

    const/4 v6, 0x0

    .line 1228
    .end local v8    # "autoBrightnessAdjustmentChanged":Z
    .restart local v34    # "autoBrightnessAdjustmentChanged":Z
    iput v6, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_1d

    .line 1232
    .end local v34    # "autoBrightnessAdjustmentChanged":Z
    .restart local v8    # "autoBrightnessAdjustmentChanged":Z
    :cond_39
    move/from16 v34, v8

    .line 1232
    .end local v8    # "autoBrightnessAdjustmentChanged":Z
    .restart local v34    # "autoBrightnessAdjustmentChanged":Z
    :cond_3a
    :goto_1d
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceBrightnessOff:Z

    if-eqz v6, :cond_3b

    .line 1233
    const/4 v3, 0x0

    .line 1237
    :cond_3b
    const/4 v6, 0x5

    if-eq v7, v6, :cond_3d

    if-ne v11, v6, :cond_3c

    goto :goto_1e

    :cond_3c
    const/4 v6, 0x0

    goto :goto_1f

    :cond_3d
    :goto_1e
    const/4 v6, 0x1

    .line 1239
    .local v6, "wasOrWillBeInVr":Z
    :goto_1f
    const/4 v8, 0x2

    if-ne v7, v8, :cond_3e

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-eqz v8, :cond_3e

    const/4 v8, 0x1

    goto :goto_20

    :cond_3e
    const/4 v8, 0x0

    .line 1244
    .local v8, "initialRampSkip":Z
    :goto_20
    nop

    .line 1245
    invoke-static {v7}, Landroid/view/Display;->isDozeState(I)Z

    move-result v16

    if-eqz v16, :cond_3f

    move/from16 v35, v9

    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 1245
    .end local v9    # "autoBrightnessAdjustment":F
    .local v35, "autoBrightnessAdjustment":F
    if-eqz v9, :cond_40

    const/4 v9, 0x1

    goto :goto_21

    .line 1245
    .end local v35    # "autoBrightnessAdjustment":F
    .restart local v9    # "autoBrightnessAdjustment":F
    :cond_3f
    move/from16 v35, v9

    .line 1245
    .end local v9    # "autoBrightnessAdjustment":F
    .restart local v35    # "autoBrightnessAdjustment":F
    :cond_40
    const/4 v9, 0x0

    .line 1248
    .local v9, "hasBrightnessBuckets":Z
    :goto_21
    move/from16 v36, v10

    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 1248
    .end local v10    # "autoBrightnessEnabledInDoze":Z
    .local v36, "autoBrightnessEnabledInDoze":Z
    if-eqz v10, :cond_41

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1249
    invoke-virtual {v10}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v10

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v16

    if-nez v10, :cond_41

    const/4 v10, 0x1

    goto :goto_22

    :cond_41
    const/4 v10, 0x0

    .line 1250
    .local v10, "isDisplayContentVisible":Z
    :goto_22
    move/from16 v37, v11

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1250
    .end local v11    # "oldState":I
    .local v37, "oldState":I
    if-nez v11, :cond_43

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz v11, :cond_42

    goto :goto_23

    :cond_42
    const/4 v11, 0x0

    goto :goto_24

    :cond_43
    :goto_23
    const/4 v11, 0x1

    .line 1252
    .local v11, "brightnessIsTemporary":Z
    :goto_24
    if-nez v8, :cond_59

    if-nez v9, :cond_59

    if-nez v6, :cond_59

    if-eqz v10, :cond_59

    if-eqz v11, :cond_44

    .line 1254
    move/from16 v41, v0

    move/from16 v38, v6

    move/from16 v39, v8

    move/from16 v40, v9

    goto/16 :goto_2d

    .line 1259
    :cond_44
    move/from16 v38, v6

    const-string/jumbo v6, "persist.sys.lcd.ramprate.fast"

    .line 1259
    .end local v6    # "wasOrWillBeInVr":Z
    .local v38, "wasOrWillBeInVr":Z
    move/from16 v39, v8

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    .line 1259
    .end local v8    # "initialRampSkip":Z
    .local v39, "initialRampSkip":Z
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1261
    .local v6, "rampRateFast":I
    const-string/jumbo v8, "persist.sys.lcd.ramprate.slow"

    move/from16 v40, v9

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    .line 1261
    .end local v9    # "hasBrightnessBuckets":Z
    .local v40, "hasBrightnessBuckets":Z
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1263
    .local v8, "rampRateSlow":I
    if-eqz v0, :cond_45

    move v9, v8

    goto :goto_25

    :cond_45
    move v9, v6

    .line 1264
    .local v9, "rate":I
    :goto_25
    if-eqz v0, :cond_4e

    .line 1265
    move/from16 v41, v0

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1265
    .end local v0    # "slowChange":Z
    .local v41, "slowChange":Z
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v0

    if-ge v3, v0, :cond_48

    .line 1266
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticBrightness:Z

    if-eqz v0, :cond_46

    .line 1267
    const/4 v0, 0x4

    .line 1310
    .end local v9    # "rate":I
    .local v0, "rate":I
    move/from16 v42, v8

    goto/16 :goto_2a

    .line 1268
    .end local v0    # "rate":I
    .restart local v9    # "rate":I
    :cond_46
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getGameModeState()I

    move-result v0

    move/from16 v42, v8

    const/4 v8, 0x2

    if-ne v0, v8, :cond_47

    .line 1269
    .end local v8    # "rampRateSlow":I
    .local v42, "rampRateSlow":I
    const/4 v0, 0x4

    .line 1270
    .end local v9    # "rate":I
    .restart local v0    # "rate":I
    const/4 v8, 0x0

    invoke-direct {v1, v8}, Lcom/android/server/display/DisplayPowerController;->setGameModeState(I)V

    goto/16 :goto_2a

    .line 1272
    .end local v0    # "rate":I
    .restart local v9    # "rate":I
    :cond_47
    const/4 v0, 0x0

    .line 1273
    .end local v41    # "slowChange":Z
    .local v0, "slowChange":Z
    move v8, v6

    .line 1310
    .end local v9    # "rate":I
    .local v8, "rate":I
    move/from16 v44, v8

    move v8, v0

    move/from16 v0, v44

    goto/16 :goto_2b

    .line 1276
    .end local v0    # "slowChange":Z
    .end local v42    # "rampRateSlow":I
    .local v8, "rampRateSlow":I
    .restart local v9    # "rate":I
    .restart local v41    # "slowChange":Z
    :cond_48
    move/from16 v42, v8

    .line 1276
    .end local v8    # "rampRateSlow":I
    .restart local v42    # "rampRateSlow":I
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticBrightness:Z

    if-eqz v0, :cond_4b

    .line 1277
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v0

    sub-int v0, v3, v0

    .line 1278
    .end local v9    # "rate":I
    .local v0, "rate":I
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mIsSupportBrightPreResearch:Z

    if-eqz v8, :cond_4d

    .line 1279
    const/16 v8, 0x18

    const/16 v9, 0x32

    if-lt v0, v8, :cond_49

    if-ge v0, v9, :cond_49

    .line 1280
    div-int/lit8 v0, v0, 0x2

    goto :goto_26

    .line 1281
    :cond_49
    if-lt v0, v9, :cond_4a

    .line 1282
    mul-int/lit8 v8, v0, 0x2

    const/4 v9, 0x3

    div-int/lit8 v0, v8, 0x3

    .line 1284
    :cond_4a
    :goto_26
    const/16 v8, 0x64

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_28

    .line 1287
    .end local v0    # "rate":I
    .restart local v9    # "rate":I
    :cond_4b
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsSupportBrightPreResearch:Z

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    .line 1287
    .end local v41    # "slowChange":Z
    .local v0, "slowChange":Z
    goto :goto_27

    .line 1288
    .end local v0    # "slowChange":Z
    .restart local v41    # "slowChange":Z
    :cond_4c
    move/from16 v0, v41

    .line 1288
    .end local v41    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    :goto_27
    move v8, v6

    .line 1291
    .end local v9    # "rate":I
    .local v8, "rate":I
    move/from16 v41, v0

    move v0, v8

    .line 1291
    .end local v8    # "rate":I
    .local v0, "rate":I
    .restart local v41    # "slowChange":Z
    :cond_4d
    :goto_28
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 1292
    if-ge v0, v6, :cond_51

    .line 1293
    const/4 v8, 0x0

    .line 1294
    .end local v41    # "slowChange":Z
    .local v8, "slowChange":Z
    move v0, v6

    goto :goto_2b

    .line 1303
    .end local v42    # "rampRateSlow":I
    .local v0, "slowChange":Z
    .local v8, "rampRateSlow":I
    .restart local v9    # "rate":I
    :cond_4e
    move/from16 v41, v0

    move/from16 v42, v8

    .line 1303
    .end local v0    # "slowChange":Z
    .end local v8    # "rampRateSlow":I
    .restart local v41    # "slowChange":Z
    .restart local v42    # "rampRateSlow":I
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    const/4 v8, 0x1

    if-eq v0, v8, :cond_50

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_4f

    goto :goto_29

    .line 1306
    :cond_4f
    const/4 v0, 0x0

    goto :goto_2a

    .line 1304
    :cond_50
    :goto_29
    move v0, v6

    .line 1310
    .end local v9    # "rate":I
    .end local v41    # "slowChange":Z
    .local v0, "rate":I
    .local v8, "slowChange":Z
    :cond_51
    :goto_2a
    move/from16 v8, v41

    :goto_2b
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceBrightnessOff:Z

    if-nez v9, :cond_52

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->stopBrightnessAnim:Z

    if-eqz v9, :cond_53

    .line 1311
    :cond_52
    const/4 v0, 0x0

    .line 1314
    :cond_53
    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mBrightNoAanimation:Z

    move/from16 v43, v0

    const/4 v0, 0x1

    if-ne v9, v0, :cond_54

    .line 1315
    .end local v0    # "rate":I
    .local v43, "rate":I
    const/4 v0, 0x0

    .line 1316
    .end local v43    # "rate":I
    .restart local v0    # "rate":I
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mBrightNoAanimation:Z

    goto :goto_2c

    .line 1319
    .end local v0    # "rate":I
    .restart local v43    # "rate":I
    :cond_54
    move/from16 v0, v43

    .line 1319
    .end local v43    # "rate":I
    .restart local v0    # "rate":I
    :goto_2c
    const-string v9, "com.android.camera"

    invoke-direct {v1, v9}, Lcom/android/server/display/DisplayPowerController;->isForegroundApp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_55

    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    if-eqz v9, :cond_55

    .line 1320
    const/4 v0, 0x0

    .line 1325
    :cond_55
    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-nez v9, :cond_56

    const/4 v9, 0x3

    if-eq v7, v9, :cond_56

    const/4 v9, 0x4

    if-ne v7, v9, :cond_57

    .line 1326
    :cond_56
    const/4 v0, 0x0

    .line 1331
    :cond_57
    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v9, :cond_58

    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->wasDim:Z

    if-eqz v9, :cond_58

    .line 1332
    const/4 v0, 0x0

    .line 1333
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->wasDim:Z

    .line 1337
    :cond_58
    invoke-direct {v1, v3, v0, v8}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(IIZ)V

    .line 1341
    .end local v0    # "rate":I
    .end local v6    # "rampRateFast":I
    .end local v42    # "rampRateSlow":I
    move v0, v8

    goto :goto_2e

    .line 1254
    .end local v38    # "wasOrWillBeInVr":Z
    .end local v39    # "initialRampSkip":Z
    .end local v40    # "hasBrightnessBuckets":Z
    .local v0, "slowChange":Z
    .local v6, "wasOrWillBeInVr":Z
    .local v8, "initialRampSkip":Z
    .local v9, "hasBrightnessBuckets":Z
    :cond_59
    move/from16 v41, v0

    move/from16 v38, v6

    move/from16 v39, v8

    move/from16 v40, v9

    .line 1254
    .end local v0    # "slowChange":Z
    .end local v6    # "wasOrWillBeInVr":Z
    .end local v8    # "initialRampSkip":Z
    .end local v9    # "hasBrightnessBuckets":Z
    .restart local v38    # "wasOrWillBeInVr":Z
    .restart local v39    # "initialRampSkip":Z
    .restart local v40    # "hasBrightnessBuckets":Z
    .restart local v41    # "slowChange":Z
    :goto_2d
    const/4 v0, 0x0

    invoke-direct {v1, v3, v0}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 1341
    move/from16 v0, v41

    .line 1341
    .end local v41    # "slowChange":Z
    .restart local v0    # "slowChange":Z
    :goto_2e
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticBrightness:Z

    .line 1342
    sget-boolean v6, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_5a

    .line 1343
    const-string v6, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[updatePowerState] mLastAutomaticBrightness = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticBrightness:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_5a
    if-nez v11, :cond_5b

    .line 1347
    move/from16 v6, v25

    invoke-direct {v1, v3, v6, v2}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessChanged(IZZ)V

    .line 1347
    .end local v10    # "isDisplayContentVisible":Z
    .end local v11    # "brightnessIsTemporary":Z
    .end local v25    # "userInitiatedChange":Z
    .end local v38    # "wasOrWillBeInVr":Z
    .end local v39    # "initialRampSkip":Z
    .end local v40    # "hasBrightnessBuckets":Z
    .local v6, "userInitiatedChange":Z
    goto :goto_2f

    .line 1356
    .end local v6    # "userInitiatedChange":Z
    .restart local v25    # "userInitiatedChange":Z
    :cond_5b
    move/from16 v6, v25

    .line 1356
    .end local v25    # "userInitiatedChange":Z
    .restart local v6    # "userInitiatedChange":Z
    :goto_2f
    move/from16 v41, v0

    goto :goto_30

    .line 1356
    .end local v6    # "userInitiatedChange":Z
    .end local v34    # "autoBrightnessAdjustmentChanged":Z
    .end local v35    # "autoBrightnessAdjustment":F
    .end local v36    # "autoBrightnessEnabledInDoze":Z
    .end local v37    # "oldState":I
    .local v8, "autoBrightnessAdjustmentChanged":Z
    .local v9, "autoBrightnessAdjustment":F
    .local v10, "autoBrightnessEnabledInDoze":Z
    .local v11, "oldState":I
    .restart local v25    # "userInitiatedChange":Z
    :cond_5c
    move/from16 v41, v0

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v36, v10

    move/from16 v37, v11

    move/from16 v6, v25

    .line 1356
    .end local v0    # "slowChange":Z
    .end local v8    # "autoBrightnessAdjustmentChanged":Z
    .end local v9    # "autoBrightnessAdjustment":F
    .end local v10    # "autoBrightnessEnabledInDoze":Z
    .end local v11    # "oldState":I
    .end local v25    # "userInitiatedChange":Z
    .restart local v6    # "userInitiatedChange":Z
    .restart local v34    # "autoBrightnessAdjustmentChanged":Z
    .restart local v35    # "autoBrightnessAdjustment":F
    .restart local v36    # "autoBrightnessEnabledInDoze":Z
    .restart local v37    # "oldState":I
    .restart local v41    # "slowChange":Z
    :goto_30
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_5e

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_5d

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1358
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5e

    :cond_5d
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1359
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x1

    goto :goto_31

    :cond_5e
    const/4 v0, 0x0

    :goto_31
    move v8, v0

    .line 1360
    .local v8, "ready":Z
    if-eqz v8, :cond_5f

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    .line 1361
    invoke-virtual {v0}, Lcom/android/server/display/NubiaRampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_5f

    const/4 v0, 0x1

    goto :goto_32

    :cond_5f
    const/4 v0, 0x0

    :goto_32
    move v9, v0

    .line 1364
    .local v9, "finished":Z
    if-eqz v8, :cond_60

    const/4 v0, 0x1

    if-eq v7, v0, :cond_60

    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v10, v0, :cond_60

    .line 1366
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1367
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn()V

    .line 1371
    :cond_60
    if-nez v9, :cond_62

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_62

    .line 1372
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_61

    .line 1373
    const-string v0, "DisplayPowerController"

    const-string v10, "Unfinished business..."

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_61
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1376
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1380
    :cond_62
    if-eqz v8, :cond_64

    if-eqz v4, :cond_64

    .line 1382
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1383
    :try_start_2
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v0, :cond_63

    .line 1384
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1386
    sget-boolean v11, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v11, :cond_63

    .line 1387
    const-string v11, "DisplayPowerController"

    const-string v0, "Display ready!"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_63
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1391
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_33

    .line 1390
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1395
    :cond_64
    :goto_33
    if-eqz v9, :cond_66

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v0, :cond_66

    .line 1396
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_65

    .line 1397
    const-string v0, "DisplayPowerController"

    const-string v10, "Finished business..."

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_65
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1400
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v10}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto :goto_34

    .line 1404
    :cond_66
    const/4 v0, 0x0

    :goto_34
    const/4 v10, 0x2

    if-eq v7, v10, :cond_67

    const/4 v0, 0x1

    nop

    :cond_67
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 1405
    return-void

    .line 910
    .end local v3    # "brightness":I
    .end local v4    # "mustNotify":Z
    .end local v5    # "slowChangeRecord":Z
    .end local v6    # "userInitiatedChange":Z
    .end local v7    # "state":I
    .end local v8    # "ready":Z
    .end local v9    # "finished":Z
    .end local v12    # "screenId":I
    .end local v13    # "isBackScreen":Z
    .end local v14    # "autoBrightnessEnabled":Z
    .end local v15    # "userSetBrightnessChanged":Z
    .end local v28    # "mustInitialize":Z
    .end local v33    # "performScreenOffTransition":Z
    .end local v34    # "autoBrightnessAdjustmentChanged":Z
    .end local v35    # "autoBrightnessAdjustment":F
    .end local v36    # "autoBrightnessEnabledInDoze":Z
    .end local v37    # "oldState":I
    .end local v41    # "slowChange":Z
    .local v2, "mustInitialize":Z
    :catchall_1
    move-exception v0

    move/from16 v28, v2

    .line 910
    .end local v2    # "mustInitialize":Z
    .restart local v28    # "mustInitialize":Z
    goto :goto_35

    .line 910
    .end local v28    # "mustInitialize":Z
    .restart local v2    # "mustInitialize":Z
    :catchall_2
    move-exception v0

    :goto_35
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateUserSetScreenBrightness()Z
    .locals 4

    .line 2132
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2133
    return v1

    .line 2135
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    .line 2136
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 2137
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 2138
    return v1

    .line 2140
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 2141
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    .line 2142
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 2143
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 2144
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2213
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2214
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2215
    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2225
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateFast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateSlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 2251
    return-void

    .line 2222
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "includePackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getScreenBrightness()I
    .locals 2

    .line 2597
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v0

    sget v1, Landroid/os/PowerManager;->EXPANDED_BRIGHTNESS_MUL:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 642
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->switchUser(I)V

    .line 645
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    .line 647
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    .line 659
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .line 677
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPowerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", waitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    const/4 v1, 0x0

    .line 686
    .local v1, "changed":Z
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 687
    const/4 v1, 0x1

    .line 688
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object p1, v3

    .line 689
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 690
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    goto :goto_0

    .line 718
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 694
    .restart local v1    # "changed":Z
    :cond_1
    :goto_0
    const/4 v3, 0x1

    if-eqz p2, :cond_2

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v4, :cond_2

    .line 696
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 697
    const/4 v1, 0x1

    .line 700
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v4, :cond_3

    .line 701
    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v4, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 702
    const/4 v1, 0x1

    goto :goto_1

    .line 703
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 704
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 705
    const/4 v1, 0x1

    .line 708
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 709
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 712
    :cond_5
    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v2, :cond_6

    .line 713
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 714
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 717
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    .line 718
    .end local v1    # "changed":Z
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBackScreenBrightness(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1665
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/NubiaRampAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/NubiaRampAnimator;->setBackScreenBrightness(I)V

    .line 1666
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 2
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1480
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1481
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1482
    return-void
.end method

.method public setScreenBrightness(IZ)V
    .locals 3
    .param p1, "brightness"    # I
    .param p2, "restore"    # Z

    .line 2573
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastBlockType:I

    if-ne v0, p1, :cond_0

    .line 2574
    return-void

    .line 2577
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastBlockType:I

    .line 2579
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 2580
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlockForSwitch:Z

    .line 2581
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/display/DisplayPowerState;->blockSetBrightness(ZZ)V

    goto :goto_0

    .line 2582
    :cond_1
    if-ne p1, v1, :cond_2

    .line 2583
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mBlockForSwitch:Z

    goto :goto_0

    .line 2584
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 2585
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlockForAod:Z

    .line 2586
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/display/DisplayPowerState;->blockSetBrightness(ZZ)V

    goto :goto_0

    .line 2587
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 2588
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mBlockForAod:Z

    .line 2591
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlockForSwitch:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlockForAod:Z

    if-nez v1, :cond_5

    .line 2592
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/display/DisplayPowerState;->blockSetBrightness(ZZ)V

    .line 2594
    :cond_5
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 4
    .param p1, "adjustment"    # F

    .line 1491
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1492
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1491
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1493
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1494
    return-void
.end method

.method public setTemporaryBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .line 1485
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1487
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1488
    return-void
.end method

.method public systemBooted()V
    .locals 2

    .line 2601
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2602
    return-void

    .line 2604
    :cond_0
    const-class v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    .line 2605
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    if-nez v0, :cond_1

    .line 2606
    const-string v0, "DisplayPowerController"

    const-string v1, "ScreenSwitchInternal local service is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    return-void

    .line 2609
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenSwitchInternal:Lnubia/os/screenswitch/ScreenSwitchInternal;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$10;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerController$10;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 2610
    invoke-virtual {v0, v1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->setScreenFaceUpListener(Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;)V

    .line 2630
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .line 1476
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1477
    return-void
.end method
