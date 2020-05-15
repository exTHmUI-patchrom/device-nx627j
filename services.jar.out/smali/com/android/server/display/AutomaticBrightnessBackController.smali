.class Lcom/android/server/display/AutomaticBrightnessBackController;
.super Lcom/android/server/display/AutomaticBrightnessController;
.source "AutomaticBrightnessBackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x2710

.field private static final AMBIENT_LIGHT_LUX_MAX_OUTDOOR_MODE:F = 6000.0f

.field private static final AMBIENT_LIGHT_LUX_THRESHOLD_OUTDOOR_MODE:F = 5000.0f

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0x7d0

.field private static final AUTO_BRIGHTNESS_VALUE_AT_MANUAL_MODE:Ljava/lang/String; = "auto_brightness_value_at_manual_mode_back"

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DEBUG:Z

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final MANUAL_SET_BRIGHTNESS_VALUE:Ljava/lang/String; = "manual_set_birghtness_value_back"

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_INVALIDATE_SHORT_TERM_MODEL:I = 0x3

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final SCREEN_AUTO_BRIGHTNESS:Ljava/lang/String; = "screen_auto_brightness_back"

.field private static final SCREEN_AUTO_BRIGHTNESS_MANUAL_MODE:Ljava/lang/String; = "screen_auto_brightness_manual_mode_back"

.field private static final SCREEN_BRIGHTNESS_BACK:Ljava/lang/String; = "screen_brightness_back"

.field private static final SCREEN_BRIGHTNESS_MODE_BACK:Ljava/lang/String; = "screen_brightness_mode_back"

.field private static final SCREEN_LAST_AUTO_BRIGHTNESS:Ljava/lang/String; = "screen_last_auto_brightness_back"

.field private static final SHORT_TERM_MODEL_TIMEOUT_MILLIS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "AutoBrightnessBackController"

.field private static final THRESHOLD_LUX_NOT_USED_FIT_CURVE:I = 0x1e

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static isSupportBrightPreResearch:Z

.field private static mScreenBrightnessRangeMinimum:I


# instance fields
.field private SHORT_TERM_MODEL_THRESHOLD_RATIO:F

.field private mAmbientBrighteningThreshold:F

.field private final mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field private mAmbientDarkeningThreshold:F

.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mAutoBirghtValAtManualMode:I

.field private final mBrighteningLightDebounceConfig:J

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mCurrentLightSensorRate:I

.field private mCurrentUserAutoMode:Z

.field private final mDarkeningLightDebounceConfig:J

.field private mDisplayPolicy:I

.field private final mDozeScaleFactor:F

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

.field private mIncreaseMininumBrightness:I

.field private final mInitialLightSensorRate:I

.field private mIsManualMode:Z

.field mIsSupportOutdoorBrightMode:Z

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private mManualScaleBright:F

.field private mManualSetBirghtVal:I

.field private mManualSettingBoundary:I

.field private mManualSettingRangeA:I

.field private mManualSettingRangeB:I

.field private final mNormalLightSensorRate:I

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mScreenAutoBrightness:I

.field private mScreenBrighteningThreshold:F

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

.field private mScreenDarkeningThreshold:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mShortTermModelAnchor:F

.field private mShortTermModelValid:Z

.field private mUserId:I

.field private final mWeightingIntercept:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-string v0, "AutoBrightnessBackController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    .line 227
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->isSupportBrightPreResearch:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;)V
    .locals 16
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "mapper"    # Lcom/android/server/display/BrightnessMappingStrategy;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "brightnessMin"    # I
    .param p7, "brightnessMax"    # I
    .param p8, "dozeScaleFactor"    # F
    .param p9, "lightSensorRate"    # I
    .param p10, "initialLightSensorRate"    # I
    .param p11, "brighteningLightDebounceConfig"    # J
    .param p13, "darkeningLightDebounceConfig"    # J
    .param p15, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p16, "ambientBrightnessThresholds"    # Lcom/android/server/display/HysteresisLevels;
    .param p17, "screenBrightnessThresholds"    # Lcom/android/server/display/HysteresisLevels;

    move-object/from16 v0, p0

    .line 247
    invoke-direct/range {p0 .. p17}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;)V

    .line 188
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    .line 192
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDisplayPolicy:I

    .line 203
    const/16 v3, 0x6b

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingBoundary:I

    .line 204
    const/16 v3, 0x6e

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingRangeA:I

    .line 205
    const/16 v3, 0x52

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingRangeB:I

    .line 206
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIncreaseMininumBrightness:I

    .line 220
    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    .line 221
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentUserAutoMode:Z

    .line 224
    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    .line 225
    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    .line 226
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualScaleBright:F

    .line 230
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsSupportOutdoorBrightMode:Z

    .line 238
    const v2, 0x3f19999a    # 0.6f

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->SHORT_TERM_MODEL_THRESHOLD_RATIO:F

    .line 1076
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessBackController$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v0, v4}, Lcom/android/server/display/AutomaticBrightnessBackController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessBackController;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1098
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessBackController$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v0, v4}, Lcom/android/server/display/AutomaticBrightnessBackController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessBackController;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 1245
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessBackController$3;

    invoke-direct {v2, v0}, Lcom/android/server/display/AutomaticBrightnessBackController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessBackController;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 252
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 253
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 254
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 255
    sput p6, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessRangeMinimum:I

    .line 256
    move/from16 v6, p7

    iput v6, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessRangeMaximum:I

    .line 257
    move/from16 v7, p5

    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorWarmUpTimeConfig:I

    .line 258
    move/from16 v8, p8

    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDozeScaleFactor:F

    .line 259
    move/from16 v9, p9

    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mNormalLightSensorRate:I

    .line 260
    move/from16 v10, p10

    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mInitialLightSensorRate:I

    .line 261
    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentLightSensorRate:I

    .line 262
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrighteningLightDebounceConfig:J

    .line 263
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDarkeningLightDebounceConfig:J

    .line 264
    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 265
    const/16 v3, 0x2710

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightHorizon:I

    .line 266
    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mWeightingIntercept:I

    .line 267
    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    .line 268
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelValid:Z

    .line 270
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelAnchor:F

    .line 272
    new-instance v1, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    move-object/from16 v2, p2

    invoke-direct {v1, v0, v2}, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessBackController;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    .line 273
    new-instance v1, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mNormalLightSensorRate:I

    int-to-long v2, v2

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightHorizon:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;-><init>(JI)V

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    .line 277
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensor:Landroid/hardware/Sensor;

    .line 281
    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NX627J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessBackController;->isSupportBrightPreResearch:Z

    .line 283
    const-string v1, "AutoBrightnessBackController"

    const-string/jumbo v2, "ro.product.name NX627J"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessBackController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessBackController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsManualMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessBackController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/display/AutomaticBrightnessBackController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsManualMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessBackController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/AutomaticBrightnessBackController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->invalidateShortTermModel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/AutomaticBrightnessBackController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/AutomaticBrightnessBackController;JF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessBackController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/AutomaticBrightnessBackController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/AutomaticBrightnessBackController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/AutomaticBrightnessBackController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;
    .param p1, "x1"    # I

    .line 53
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessBackController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->getLastAutomaticBrightnessFromSettingsSystem()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessBackController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->getScreenBrightnessFromSettingsSystem()I

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->isSupportBrightPreResearch:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessBackController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;
    .param p1, "x1"    # Z

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessBackController;->setManualModeBrightnessVal(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessBackController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessBackController;

    .line 53
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->saveScreenAutoBrightness()V

    return-void
.end method

.method private adjustLightSensorRate(I)V
    .locals 5
    .param p1, "lightSensorRate"    # I

    .line 597
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentLightSensorRate:I

    if-eq p1, v0, :cond_1

    .line 598
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 599
    const-string v0, "AutoBrightnessBackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustLightSensorRate: previousRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentLightSensorRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentLightSensorRate:I

    .line 604
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 605
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v3, p1, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 608
    :cond_1
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 574
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mRecentLightSamples:I

    .line 575
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightHorizon:I

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->prune(J)V

    .line 578
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsSupportOutdoorBrightMode:Z

    if-eqz v0, :cond_0

    .line 579
    const v0, 0x45bb8000    # 6000.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 580
    const p3, 0x45bb8000    # 6000.0f

    goto :goto_0

    .line 582
    :cond_0
    const v0, 0x459c4000    # 5000.0f

    .line 583
    .local v0, "MAXLUX":F
    cmpl-float v1, p3, v0

    if-lez v1, :cond_1

    .line 584
    move p3, v0

    .line 588
    .end local v0    # "MAXLUX":F
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->push(JF)V

    .line 591
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLastObservedLux:F

    .line 592
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLastObservedLuxTime:J

    .line 593
    return-void
.end method

.method private calculateAmbientLux(JJ)F
    .locals 19
    .param p1, "now"    # J
    .param p3, "horizon"    # J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 647
    move-wide/from16 v3, p3

    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 648
    const-string v5, "AutoBrightnessBackController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateAmbientLux("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->size()I

    move-result v5

    .line 651
    .local v5, "N":I
    if-nez v5, :cond_1

    .line 652
    const-string v6, "AutoBrightnessBackController"

    const-string v7, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/high16 v6, -0x40800000    # -1.0f

    return v6

    .line 657
    :cond_1
    const/4 v6, 0x0

    .line 658
    .local v6, "endIndex":I
    sub-long v7, v1, v3

    .line 659
    .local v7, "horizonStartTime":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    add-int/lit8 v10, v5, -0x1

    if-ge v9, v10, :cond_2

    .line 660
    iget-object v10, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    cmp-long v10, v10, v7

    if-gtz v10, :cond_2

    .line 661
    add-int/lit8 v6, v6, 0x1

    .line 659
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 666
    .end local v9    # "i":I
    :cond_2
    sget-boolean v9, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 667
    const-string v9, "AutoBrightnessBackController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateAmbientLux: selected endIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", point=("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    .line 668
    invoke-virtual {v11, v6}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    .line 669
    invoke-virtual {v11, v6}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getLux(I)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 667
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_3
    const/4 v9, 0x0

    .line 672
    .local v9, "sum":F
    const/4 v10, 0x0

    .line 673
    .local v10, "totalWeight":F
    const-wide/16 v11, 0x64

    .line 674
    .local v11, "endTime":J
    add-int/lit8 v13, v5, -0x1

    .local v13, "i":I
    :goto_1
    if-lt v13, v6, :cond_6

    .line 675
    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v14, v13}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v14

    .line 676
    .local v14, "eventTime":J
    if-ne v13, v6, :cond_4

    cmp-long v16, v14, v7

    if-gez v16, :cond_4

    .line 679
    move-wide v14, v7

    .line 681
    :cond_4
    sub-long v3, v14, v1

    .line 682
    .local v3, "startTime":J
    invoke-direct {v0, v3, v4, v11, v12}, Lcom/android/server/display/AutomaticBrightnessBackController;->calculateWeight(JJ)F

    move-result v1

    .line 683
    .local v1, "weight":F
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v2, v13}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    .line 684
    .local v2, "lux":F
    sget-boolean v16, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v16, :cond_5

    .line 685
    const-string v0, "AutoBrightnessBackController"

    move/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "N":I
    .local v17, "N":I
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    const-string v6, "calculateAmbientLux: ["

    .end local v6    # "endIndex":I
    .local v18, "endIndex":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]: lux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", weight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 689
    .end local v17    # "N":I
    .end local v18    # "endIndex":I
    .restart local v5    # "N":I
    .restart local v6    # "endIndex":I
    :cond_5
    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "N":I
    .end local v6    # "endIndex":I
    .restart local v17    # "N":I
    .restart local v18    # "endIndex":I
    :goto_2
    add-float/2addr v10, v1

    .line 690
    mul-float v0, v2, v1

    add-float/2addr v9, v0

    .line 691
    move-wide v11, v3

    .line 674
    .end local v1    # "weight":F
    .end local v2    # "lux":F
    .end local v3    # "startTime":J
    .end local v14    # "eventTime":J
    add-int/lit8 v13, v13, -0x1

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    goto :goto_1

    .line 693
    .end local v13    # "i":I
    .end local v17    # "N":I
    .end local v18    # "endIndex":I
    .restart local v5    # "N":I
    .restart local v6    # "endIndex":I
    :cond_6
    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "N":I
    .end local v6    # "endIndex":I
    .restart local v17    # "N":I
    .restart local v18    # "endIndex":I
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 694
    const-string v0, "AutoBrightnessBackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateAmbientLux: totalWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", newAmbientLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_7
    div-float v0, v9, v10

    return v0
.end method

.method private calculateWeight(JJ)F
    .locals 2
    .param p1, "startDelta"    # J
    .param p3, "endDelta"    # J

    .line 702
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessBackController;->weightIntegral(J)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessBackController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    .line 1196
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 1197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSamplePending:Z

    .line 1198
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1200
    :cond_0
    return-void
.end method

.method private changeAutoBrightnessManualMode()V
    .locals 4

    .line 1128
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_manual_mode_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1130
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_last_auto_brightness_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1132
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1133
    const-string v0, "AutoBrightnessBackController"

    const-string v1, "[ScreenAutoBrightness] changeAutoBrightnessManualMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_0
    return-void
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .line 1178
    sget v0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 4

    .line 1203
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_1

    .line 1204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSamplePending:Z

    .line 1205
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLuxValid:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    if-ltz v1, :cond_1

    .line 1206
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1207
    const-string v1, "AutoBrightnessBackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto-brightness adjustment changed by user: lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ring="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_0
    const v1, 0x88b8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1214
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 1215
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    .line 1216
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    .line 1217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1213
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1220
    :cond_1
    return-void
.end method

.method private compareAutomaticAndSettingsValue(III)I
    .locals 3
    .param p1, "autoBrightness"    # I
    .param p2, "lastAutoBrightness"    # I
    .param p3, "settingsBrightness"    # I

    .line 1042
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1043
    const-string v0, "AutoBrightnessBackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareAutomaticAndSettingsValue: autoBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lastAutoBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", settingsBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    if-le p3, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1049
    .local v0, "isIncrease":Z
    :goto_0
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingBoundary:I

    if-ge p3, v1, :cond_4

    .line 1050
    if-nez v0, :cond_2

    sub-int v1, p1, p2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingRangeA:I

    if-gt v1, v2, :cond_3

    :cond_2
    if-eqz v0, :cond_7

    sub-int v1, p2, p1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingRangeA:I

    if-le v1, v2, :cond_7

    .line 1052
    :cond_3
    return p1

    .line 1055
    :cond_4
    if-nez v0, :cond_5

    sub-int v1, p1, p2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingRangeB:I

    if-gt v1, v2, :cond_6

    :cond_5
    if-eqz v0, :cond_7

    sub-int v1, p2, p1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingRangeB:I

    if-le v1, v2, :cond_7

    .line 1057
    :cond_6
    return p1

    .line 1060
    :cond_7
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->getSpecManualSettingBrightness(IIZ)I

    move-result v1

    return v1
.end method

.method private getLastAutomaticBrightnessFromSettingsSystem()I
    .locals 4

    .line 1123
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_last_auto_brightness_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static getOptimalNitFromLux(F)D
    .locals 6
    .param p0, "ambientLux"    # F

    .line 965
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 966
    const v0, 0x402edfa4    # 2.7324f

    mul-float/2addr v0, p0

    const v1, 0x40811f8a    # 4.0351f

    add-float/2addr v0, v1

    float-to-double v0, v0

    .local v0, "nit":D
    goto :goto_0

    .line 968
    .end local v0    # "nit":D
    :cond_0
    const-wide v0, 0x3ee2dfd6a0000000L    # 9.000000318337698E-6

    float-to-double v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const v2, 0x3d88ce70    # 0.0668f

    mul-float/2addr v2, p0

    float-to-double v2, v2

    add-double/2addr v0, v2

    const-wide v2, 0x40561199a0000000L    # 88.2750015258789

    add-double/2addr v0, v2

    .line 970
    .restart local v0    # "nit":D
    :goto_0
    return-wide v0
.end method

.method private static getOptimalScreenBrightness(D)D
    .locals 7
    .param p0, "nit"    # D

    .line 980
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->isSupportBrightPreResearch:Z

    const-wide v1, 0x406fe00000000000L    # 255.0

    if-nez v0, :cond_0

    .line 981
    sget v0, Landroid/os/PowerManager;->INTERNAL_OPTIMAL_NIT_MAX:I

    int-to-double v3, v0

    div-double v3, p0, v3

    sget v0, Landroid/os/PowerManager;->INTERNAL_ADJ_COEFFICIENT:F

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v1

    return-wide v3

    .line 984
    :cond_0
    sget v0, Landroid/os/PowerManager;->INTERNAL_OPTIMAL_NIT_MAX:I

    int-to-double v3, v0

    div-double v3, p0, v3

    sget v0, Landroid/os/PowerManager;->INTERNAL_ADJ_COEFFICIENT:F

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v3, v1

    .line 986
    .local v3, "new_nit":D
    const-wide/high16 v0, 0x403c000000000000L    # 28.0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private getScreenAutoBrightness(F)I
    .locals 6
    .param p1, "ambientLux"    # F

    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, "brightness":F
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessBackController;->getOptimalNitFromLux(F)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/server/display/AutomaticBrightnessBackController;->getOptimalScreenBrightness(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 1007
    const-string/jumbo v1, "persist.sys.lcd.comp.ratio"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1009
    .local v2, "ratio":F
    :goto_0
    mul-float/2addr v0, v2

    .line 1011
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsSupportOutdoorBrightMode:Z

    if-eqz v3, :cond_1

    const v3, 0x459c4000    # 5000.0f

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 1013
    const/high16 v3, 0x437e0000    # 254.0f

    invoke-static {v3, v0}, Landroid/util/MathUtils;->min(FF)F

    move-result v0

    .line 1016
    :cond_1
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1017
    const-string v3, "AutoBrightnessBackController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getScreenAutoBrightness] ambientLux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", brightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->clampScreenBrightness(I)I

    move-result v3

    return v3
.end method

.method private getScreenBrightnessFromSettingsSystem()I
    .locals 4

    .line 1118
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getSpecManualSettingBrightness(IIZ)I
    .locals 0
    .param p1, "autoBrightness"    # I
    .param p2, "settingsBrightness"    # I
    .param p3, "isIncrease"    # Z

    .line 1064
    if-eqz p3, :cond_0

    .line 1065
    if-le p1, p2, :cond_1

    .line 1066
    return p1

    .line 1069
    :cond_0
    if-ge p1, p2, :cond_1

    .line 1070
    return p1

    .line 1073
    :cond_1
    return p2
.end method

.method private handleLightSensorEvent(JF)V
    .locals 4
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 561
    invoke-direct {p0, p3}, Lcom/android/server/display/AutomaticBrightnessBackController;->isDirtyLux(F)F

    move-result p3

    .line 562
    const-string v0, "ALS"

    float-to-int v1, p3

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 563
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 565
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mNormalLightSensorRate:I

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->adjustLightSensorRate(I)V

    .line 569
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessBackController;->applyLightSensorMeasurement(JF)V

    .line 570
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateAmbientLux(J)V

    .line 571
    return-void
.end method

.method private invalidateShortTermModel()V
    .locals 2

    .line 438
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "AutoBrightnessBackController"

    const-string v1, "ShortTermModel: invalidate user data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelValid:Z

    .line 442
    return-void
.end method

.method private isDirtyLux(F)F
    .locals 5
    .param p1, "lux"    # F

    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "dirtyMinLux":F
    const/4 v1, 0x0

    .line 551
    .local v1, "dirtyMaxLux":F
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    const/high16 v4, 0x42480000    # 50.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 552
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    sub-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 553
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    add-float v1, v2, v3

    .line 554
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    .line 555
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    .line 558
    :cond_0
    return p1
.end method

.method private static isInteractivePolicy(I)Z
    .locals 1
    .param p0, "policy"    # I

    .line 411
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

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

.method private manualActOnAutoBrightness(I)I
    .locals 2
    .param p1, "newScreenAutoBrightness"    # I

    .line 777
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateManualModeBrightnessVal()V

    .line 779
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    if-le v0, v1, :cond_1

    .line 780
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    if-gt p1, v0, :cond_0

    .line 781
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    goto :goto_0

    .line 782
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    if-ge p1, v0, :cond_3

    .line 783
    const/16 v0, 0x31

    if-lt p1, v0, :cond_3

    .line 784
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualScaleBright:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    .line 788
    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    if-ge v0, v1, :cond_3

    .line 789
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    if-gt p1, v0, :cond_2

    .line 790
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    goto :goto_0

    .line 791
    :cond_2
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    if-le p1, v0, :cond_3

    .line 792
    const/16 v0, 0xe2

    if-gt p1, v0, :cond_3

    .line 793
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualScaleBright:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 801
    :cond_3
    :goto_0
    return p1
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 6
    .param p1, "time"    # J

    .line 712
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 713
    .local v0, "N":I
    move-wide v1, p1

    .line 714
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 715
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientBrighteningThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 716
    goto :goto_1

    .line 718
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 714
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 720
    .end local v3    # "i":I
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrighteningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 6
    .param p1, "time"    # J

    .line 724
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 725
    .local v0, "N":I
    move-wide v1, p1

    .line 726
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 727
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientDarkeningThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 728
    goto :goto_1

    .line 730
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 726
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 732
    .end local v3    # "i":I
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    .line 1183
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSamplePending:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSamplePending:Z

    .line 1185
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1186
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSampleOldBrightness:I

    goto :goto_1

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1191
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1193
    return-void
.end method

.method private saveScreenAutoBrightness()V
    .locals 4

    .line 1168
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1170
    return-void
.end method

.method private saveScreenBrightness(II)V
    .locals 3
    .param p1, "brightness"    # I
    .param p2, "settingsBrightness"    # I

    .line 1030
    if-eq p1, p2, :cond_1

    .line 1031
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1032
    const-string v0, "AutoBrightnessBackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[saveScreenBrightness] brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", settingsBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1039
    :cond_1
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 5
    .param p1, "lux"    # F

    .line 615
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 616
    const-string v0, "AutoBrightnessBackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLux("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 619
    const-string v0, "AutoBrightnessBackController"

    const-string v1, "Ambient lux was negative, ignoring and setting to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 p1, 0x0

    .line 622
    :cond_1
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    .line 623
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientBrighteningThreshold:F

    .line 624
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientDarkeningThreshold:F

    .line 627
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelValid:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelAnchor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 628
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelAnchor:F

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelAnchor:F

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->SHORT_TERM_MODEL_THRESHOLD_RATIO:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 630
    .local v0, "minAmbientLux":F
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelAnchor:F

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelAnchor:F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->SHORT_TERM_MODEL_THRESHOLD_RATIO:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 632
    .local v1, "maxAmbientLux":F
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    .line 633
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 634
    const-string v2, "AutoBrightnessBackController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelValid:Z

    goto :goto_0

    .line 639
    :cond_3
    const-string v2, "AutoBrightnessBackController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->resetShortTermModel()V

    .line 644
    .end local v0    # "minAmbientLux":F
    .end local v1    # "maxAmbientLux":F
    :cond_4
    :goto_0
    return-void
.end method

.method private setAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    .line 611
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessAdjustment(F)Z

    move-result v0

    return v0
.end method

.method private setDisplayPolicy(I)Z
    .locals 5
    .param p1, "policy"    # I

    .line 393
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDisplayPolicy:I

    if-ne v0, p1, :cond_0

    .line 394
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDisplayPolicy:I

    .line 397
    .local v0, "oldPolicy":I
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDisplayPolicy:I

    .line 398
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 399
    const-string v1, "AutoBrightnessBackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display policy transitioning from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessBackController;->isInteractivePolicy(I)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->isInteractivePolicy(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 404
    :cond_2
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessBackController;->isInteractivePolicy(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->isInteractivePolicy(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 405
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 407
    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .line 511
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 512
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorEnabled:Z

    if-nez v3, :cond_1

    .line 513
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorEnabled:Z

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorEnableTime:J

    .line 515
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mInitialLightSensorRate:I

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentLightSensorRate:I

    .line 516
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensor:Landroid/hardware/Sensor;

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentLightSensorRate:I

    mul-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 519
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 520
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_auto_brightness_manual_mode_back"

    .line 521
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 520
    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 523
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 526
    return v2

    .line 528
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorEnabled:Z

    if-eqz v3, :cond_1

    .line 529
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorEnabled:Z

    .line 530
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mResetAmbientLuxAfterWarmUpConfig:Z

    xor-int/2addr v3, v2

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLuxValid:Z

    .line 531
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mRecentLightSamples:I

    .line 532
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->clear()V

    .line 533
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentLightSensorRate:I

    .line 534
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 535
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 537
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 539
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode_back"

    .line 540
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 539
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 544
    :cond_1
    return v1
.end method

.method private setManualModeBrightnessVal(Z)V
    .locals 4
    .param p1, "set"    # Z

    .line 753
    if-eqz p1, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->getScreenBrightnessFromSettingsSystem()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    .line 755
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->getScreenAutoBrightness(F)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    .line 756
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualScaleBright:F

    goto :goto_0

    .line 758
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    .line 759
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    .line 760
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualScaleBright:F

    .line 763
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "manual_set_birghtness_value_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 765
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_value_at_manual_mode_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 768
    const-string v0, "AutoBrightnessBackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setManualModeBrightnessVal set:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mManualScaleBright:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualScaleBright:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mManualSetBirghtVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAutoBirghtValAtManualMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void
.end method

.method private setScreenBrightnessByUser(F)Z
    .locals 4
    .param p1, "brightness"    # F

    .line 417
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLuxValid:Z

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    return v0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelValid:Z

    .line 424
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelAnchor:F

    .line 425
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 426
    const-string v1, "AutoBrightnessBackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShortTermModel: anchor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelAnchor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_1
    return v0
.end method

.method private updateAmbientLux()V
    .locals 5

    .line 806
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 807
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightHorizon:I

    int-to-long v3, v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;->prune(J)V

    .line 808
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateAmbientLux(J)V

    .line 809
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 12
    .param p1, "time"    # J

    .line 814
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLuxValid:Z

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 815
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v0

    iget-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorEnableTime:J

    add-long/2addr v4, v6

    .line 817
    .local v4, "timeWhenSensorWarmedUp":J
    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 818
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 819
    const-string v0, "AutoBrightnessBackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAmbientLux: Sensor not  ready yet: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", timeWhenSensorWarmedUp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 825
    return-void

    .line 827
    :cond_1
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/display/AutomaticBrightnessBackController;->calculateAmbientLux(JJ)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->setAmbientLux(F)V

    .line 828
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLuxValid:Z

    .line 829
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 830
    const-string v0, "AutoBrightnessBackController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", mAmbientLux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateAutoBrightness(Z)V

    .line 837
    .end local v4    # "timeWhenSensorWarmedUp":J
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessBackController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 838
    .local v4, "nextBrightenTransition":J
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessBackController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 847
    .local v6, "nextDarkenTransition":J
    const-wide/16 v8, 0x2710

    invoke-direct {p0, p1, p2, v8, v9}, Lcom/android/server/display/AutomaticBrightnessBackController;->calculateAmbientLux(JJ)F

    move-result v0

    .line 848
    .local v0, "slowAmbientLux":F
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/display/AutomaticBrightnessBackController;->calculateAmbientLux(JJ)F

    move-result v1

    .line 850
    .local v1, "fastAmbientLux":F
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientBrighteningThreshold:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientBrighteningThreshold:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_4

    cmp-long v2, v4, p1

    if-lez v2, :cond_5

    :cond_4
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientDarkeningThreshold:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_8

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientDarkeningThreshold:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_8

    cmp-long v2, v6, p1

    if-gtz v2, :cond_8

    .line 856
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController;->setAmbientLux(F)V

    .line 857
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 858
    const-string v2, "AutoBrightnessBackController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAmbientLux: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    cmpl-float v9, v1, v9

    if-lez v9, :cond_6

    const-string v9, "Brightened"

    goto :goto_0

    :cond_6
    const-string v9, "Darkened"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": mAmbientBrighteningThreshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", mAmbientLightRingBuffer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", mAmbientLux="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 858
    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateAutoBrightness(Z)V

    .line 865
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessBackController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 866
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessBackController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 868
    :cond_8
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 876
    .local v8, "nextTransitionTime":J
    cmp-long v2, v8, p1

    if-lez v2, :cond_9

    move-wide v10, v8

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mNormalLightSensorRate:I

    int-to-long v10, v2

    add-long/2addr v10, p1

    :goto_1
    move-wide v8, v10

    .line 877
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 878
    const-string v2, "AutoBrightnessBackController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 879
    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 878
    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_a
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mHandler:Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/display/AutomaticBrightnessBackController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 882
    return-void
.end method

.method private updateAutoBrightness(Z)V
    .locals 7
    .param p1, "sendUpdate"    # Z

    .line 885
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLuxValid:Z

    if-nez v0, :cond_0

    .line 886
    return-void

    .line 889
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateAutoMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    return-void

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(F)F

    move-result v0

    .line 894
    .local v0, "value":F
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    .line 895
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController;->clampScreenBrightness(I)I

    move-result v1

    .line 897
    .local v1, "newScreenAutoBrightness":I
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessBackController;->getScreenAutoBrightness(F)I

    move-result v1

    .line 899
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateAutoManualMode()V

    .line 901
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 902
    const-string v2, "AutoBrightnessBackController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ScreenAutoBrightness] getScreenAutoBrightness: ambientLux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", newScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mIsManualMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsManualMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->getScreenBrightnessFromSettingsSystem()I

    move-result v2

    .line 908
    .local v2, "settingsBrightness":I
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessBackController;->isSupportBrightPreResearch:Z

    if-nez v3, :cond_5

    .line 909
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsManualMode:Z

    if-eqz v3, :cond_7

    .line 910
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->getLastAutomaticBrightnessFromSettingsSystem()I

    move-result v3

    .line 911
    .local v3, "lastScreenAutoBrightness":I
    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/display/AutomaticBrightnessBackController;->compareAutomaticAndSettingsValue(III)I

    move-result v1

    .line 913
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 914
    const-string v4, "AutoBrightnessBackController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ScreenAutoBrightness] setScreenAutoBrightness: settingsBrightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lastScreenAutoBrightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", newScreenAutoBrightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_3
    if-eq v1, v2, :cond_4

    .line 920
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->changeAutoBrightnessManualMode()V

    .line 922
    .end local v3    # "lastScreenAutoBrightness":I
    :cond_4
    goto :goto_0

    .line 924
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsManualMode:Z

    if-eqz v3, :cond_6

    .line 925
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessBackController;->setManualModeBrightnessVal(Z)V

    .line 926
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->changeAutoBrightnessManualMode()V

    .line 927
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsManualMode:Z

    .line 929
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController;->manualActOnAutoBrightness(I)I

    move-result v1

    .line 933
    :cond_7
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessBackController;->saveScreenBrightness(II)V

    .line 935
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    if-eq v3, v1, :cond_9

    .line 936
    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 937
    const-string v3, "AutoBrightnessBackController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", newScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_8
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    .line 943
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    int-to-float v4, v1

    .line 944
    invoke-virtual {v3, v4}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrighteningThreshold:F

    .line 945
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    int-to-float v4, v1

    .line 946
    invoke-virtual {v3, v4}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenDarkeningThreshold:F

    .line 948
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->saveScreenAutoBrightness()V

    .line 950
    if-eqz p1, :cond_9

    .line 951
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v3}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 954
    :cond_9
    return-void
.end method

.method private updateAutoManualMode()V
    .locals 4

    .line 1159
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_manual_mode_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsManualMode:Z

    .line 1160
    return-void
.end method

.method private updateAutoMode()Z
    .locals 4

    .line 1150
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    .line 1151
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 1152
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentUserAutoMode:Z

    goto :goto_0

    .line 1154
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentUserAutoMode:Z

    .line 1155
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentUserAutoMode:Z

    return v0
.end method

.method private updateManualModeBrightnessVal()V
    .locals 4

    .line 737
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "manual_set_birghtness_value_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    .line 740
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_value_at_manual_mode_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    .line 743
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualScaleBright:F

    goto :goto_1

    .line 744
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualScaleBright:F

    .line 749
    :goto_1
    const-string v0, "AutoBrightnessBackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateManualModeBrightnessVal mManualScaleBright:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualScaleBright:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mManualSetBirghtVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAutoBirghtValAtManualMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method private updateScreenAutoBrightness()V
    .locals 4

    .line 1163
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_back"

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    .line 1165
    return-void
.end method

.method private weightIntegral(J)F
    .locals 3
    .param p1, "x"    # J

    .line 708
    long-to-float v0, p1

    long-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mWeightingIntercept:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "configuration"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p3, "brightness"    # F
    .param p4, "userChangedBrightness"    # Z
    .param p5, "adjustment"    # F
    .param p6, "userChangedAutoBrightnessAdjustment"    # Z
    .param p7, "displayPolicy"    # I

    .line 358
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p7, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 359
    .local v2, "dozing":Z
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/display/AutomaticBrightnessBackController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v3

    .line 360
    .local v3, "changed":Z
    invoke-direct {p0, p7}, Lcom/android/server/display/AutomaticBrightnessBackController;->setDisplayPolicy(I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 361
    if-eqz p6, :cond_1

    .line 362
    invoke-direct {p0, p5}, Lcom/android/server/display/AutomaticBrightnessBackController;->setAutoBrightnessAdjustment(F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 364
    :cond_1
    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    .line 367
    invoke-direct {p0, p3}, Lcom/android/server/display/AutomaticBrightnessBackController;->setScreenBrightnessByUser(F)Z

    move-result v4

    or-int/2addr v3, v4

    .line 369
    :cond_2
    if-nez p4, :cond_4

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v1

    .line 371
    .local v4, "userInitiatedChange":Z
    :goto_2
    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    .line 372
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->prepareBrightnessAdjustmentSample()V

    .line 374
    :cond_5
    if-eqz p1, :cond_6

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController;->setLightSensorEnabled(Z)Z

    move-result v1

    or-int/2addr v1, v3

    .line 375
    .end local v3    # "changed":Z
    .local v1, "changed":Z
    if-eqz v1, :cond_7

    .line 376
    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateAutoBrightness(Z)V

    .line 378
    :cond_7
    return-void
.end method

.method disableLightSensor()V
    .locals 1

    .line 1396
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessBackController;->setLightSensorEnabled(Z)Z

    .line 1397
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 453
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 454
    const-string v0, "Automatic Brightness Controller Configuration(Back):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mInitialLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNormalLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mNormalLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWeightingIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mWeightingIntercept:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 468
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrighteningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrighteningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenDarkeningThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenDarkeningThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessBackController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDisplayPolicy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelAnchor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSamplePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSamplePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentUserAutoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentUserAutoMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsManualMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsManualMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mManualSetBirghtVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSetBirghtVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBirghtValAtManualMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAutoBirghtValAtManualMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mManualScaleBright="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualScaleBright:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 503
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    .line 505
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 506
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    .line 507
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessThresholds:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    .line 508
    return-void
.end method

.method public enableBrightMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 327
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsSupportOutdoorBrightMode:Z

    .line 328
    return-void
.end method

.method public getAmbientLux()F
    .locals 1

    .line 330
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLux:F

    return v0
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    .line 334
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mAmbientLuxValid:Z

    if-nez v0, :cond_0

    .line 335
    const/4 v0, -0x1

    return v0

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->getScreenBrightnessFromSettingsSystem()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    .line 340
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDisplayPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 341
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 343
    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    return v0
.end method

.method public getAutomaticScreenBrightnessAdjustment()F
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result v0

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    return v0
.end method

.method public initializeAutoController(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 289
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    .line 291
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    .line 293
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->isSupportBrightPreResearch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessBackController;->setManualModeBrightnessVal(Z)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0093

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 298
    .local v0, "screenBrightnessSettingMinimum":I
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIncreaseMininumBrightness:I

    .line 301
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 302
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10e0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingBoundary:I

    .line 304
    const v2, 0x10e0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingRangeA:I

    .line 306
    const v2, 0x10e0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingRangeB:I

    .line 308
    const v2, 0x10e0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIncreaseMininumBrightness:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v1    # "res":Landroid/content/res/Resources;
    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 314
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIncreaseMininumBrightness:I

    add-int/2addr v1, v0

    sput v1, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessRangeMinimum:I

    .line 315
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessBackController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 316
    const-string v1, "AutoBrightnessBackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ScreenAutoBrightness] initializeAutoController: screenBrightnessSettingMinimum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIncreaseMininumBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIncreaseMininumBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenBrightnessRangeMinimum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mManualSettingBoundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingBoundary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mManualSettingRangeA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingRangeA:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mManualSettingRangeB="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mManualSettingRangeB:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    return-void
.end method

.method public isAutoManualMode()Z
    .locals 1

    .line 1173
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsManualMode:Z

    return v0
.end method

.method public isDefaultConfig()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    move-result v0

    return v0
.end method

.method public resetShortTermModel()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelValid:Z

    .line 434
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mShortTermModelAnchor:F

    .line 435
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 1
    .param p1, "configuration"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 445
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->resetShortTermModel()V

    .line 447
    const/4 v0, 0x1

    return v0

    .line 449
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public switchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1139
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mUserId:I

    .line 1140
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateAutoMode()Z

    .line 1141
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateAutoManualMode()V

    .line 1142
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateScreenAutoBrightness()V

    .line 1144
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessBackController;->isSupportBrightPreResearch:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessBackController;->updateManualModeBrightnessVal()V

    .line 1146
    :cond_0
    const-string v0, "AutoBrightnessBackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchUser userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentUserAutoMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mCurrentUserAutoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenAutoBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mScreenAutoBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsManualMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessBackController;->mIsManualMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-void
.end method
