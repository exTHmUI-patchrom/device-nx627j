.class public Lcn/nubia/server/breathinglight/BreathingLightSettings;
.super Ljava/lang/Object;
.source "BreathingLightSettings.java"


# static fields
.field private static final BRIGHTNESS_AUTO:I = 0x1

.field private static final BRIGHTNESS_MANUAL:I = 0x0

.field private static final DEFAULT_LIGHT_BRIGHTNESS:I = 0xa

.field private static final DEFAULT_LIGHT_BRIGHTNESS_FOR_NX595:I = 0x64

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final LED_LIGHT_BRIGHTNESS:Ljava/lang/String; = "led_light_brightness"

.field private static final LED_LIGHT_BRIGHTNESS_MODE:Ljava/lang/String; = "led_light_brightness_mode"

.field private static final LED_LIGHT_CHARGE_ENABLE:Ljava/lang/String; = "led_light_charge_enable"

.field private static final LED_LIGHT_TOUCH_ENABLE:Ljava/lang/String; = "led_light_touch_enable"

.field private static final LED_NO_DISTURB_ENABLE:Ljava/lang/String; = "led_no_disturb_enable"

.field private static final LED_SWITCH_MAIN_LAMP_PREFERENCE:Ljava/lang/String; = "switch_main_lamp_enable"

.field private static final LED_SYMBOL_LAMP_ENABLE:Ljava/lang/String; = "switch_symbol_lamp_enable"

.field private static final NOTIFICATION_ENABLE:Ljava/lang/String; = "notificationsettings"

.field private static final NUBIA_SYMBOL_LAMP_MODE:Ljava/lang/String; = "nubia_symbol_mode"

.field private static final TAG:Ljava/lang/String; = "BreathingLightSettings"

.field private static final mIsNewGreenAndRedEnabled:Z


# instance fields
.field private final mBreathLightBrightness:[I

.field private mBrightnessMode:I

.field private mContext:Landroid/content/Context;

.field private mIsSwitchMainEnable:Z

.field private mLastObservedLuxTime:J

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorLux:[F

.field private mNotificationLightEnable:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSymbolLampEnable:Z

.field private mSymbolLampMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_breathlight_feature"

    const-string v2, "breath_light_new_green_red_indicator"

    .line 56
    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mIsNewGreenAndRedEnabled:Z

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mIsSwitchMainEnable:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    .line 58
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;-><init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 324
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    .line 326
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    .line 347
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;-><init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 88
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 93
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensor:Landroid/hardware/Sensor;

    .line 95
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->registerSettingsObserver()V

    .line 96
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x7
        0xa
        0xf
        0x14
        0x23
        0x32
    .end array-data

    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x42480000    # 50.0f
        0x42c80000    # 100.0f
        0x43c80000    # 400.0f
        0x44610000    # 900.0f
        0x44fa0000    # 2000.0f
        0x459c4000    # 5000.0f
    .end array-data
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->brightnessModeChange()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->manualBrightnessChange()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/breathinglight/BreathingLightSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # I

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->notificationSettingsChange()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->noDisturbModeChange()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mainLampChange()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->symbolLampChange()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->symbolLampModeChange()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/breathinglight/BreathingLightSettings;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 17
    iget-wide v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcn/nubia/server/breathinglight/BreathingLightSettings;J)J
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # J

    .line 17
    iput-wide p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcn/nubia/server/breathinglight/BreathingLightSettings;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 17
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->getCurrentBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/server/breathinglight/BreathingLightSettings;F)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # F

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->getBrightnessByLux(F)I

    move-result v0

    return v0
.end method

.method private brightnessModeChange()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "led_light_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 280
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v1, :cond_0

    .line 281
    invoke-direct {p0, v2}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    .line 282
    const-string/jumbo v1, "led_light_brightness"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    goto :goto_0

    .line 285
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    .line 287
    :goto_0
    return-void
.end method

.method private enableAutoBrightness(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 305
    if-eqz p1, :cond_0

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    .line 307
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 312
    :goto_0
    return-void
.end method

.method private getBrightnessByLux(F)I
    .locals 3
    .param p1, "lux"    # F

    .line 331
    const/16 v0, 0xa

    .line 333
    .local v0, "brightness":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v1, v2

    goto :goto_1

    .line 336
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 337
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    aget v2, v2, v1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    aget v0, v2, v1

    .line 339
    goto :goto_1

    .line 336
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private getCurrentBrightness()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightBrightness()I

    move-result v0

    return v0
.end method

.method private initSettings()V
    .locals 8

    .line 134
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "led_light_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 137
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 138
    sget-boolean v1, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mIsNewGreenAndRedEnabled:Z

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightBrightness(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const-string/jumbo v5, "led_light_brightness"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightBrightness(I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0, v4}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    .line 148
    :goto_0
    const-string/jumbo v1, "notificationsettings"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    .line 150
    const-string/jumbo v1, "switch_main_lamp_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mIsSwitchMainEnable:Z

    .line 152
    iget-boolean v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mIsSwitchMainEnable:Z

    if-ne v1, v4, :cond_4

    .line 153
    const-string/jumbo v1, "switch_symbol_lamp_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    goto :goto_3

    .line 156
    :cond_4
    iput-boolean v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    .line 158
    :goto_3
    const-string/jumbo v1, "nubia_symbol_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    .line 160
    iget-boolean v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    const/16 v5, 0x50

    if-eqz v1, :cond_6

    .line 161
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    if-nez v1, :cond_5

    .line 162
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v5, v4, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_4

    .line 164
    :cond_5
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    if-ne v4, v1, :cond_7

    .line 165
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v4, 0x3

    iget-object v6, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v7, 0x7

    .line 167
    invoke-virtual {v6, v3, v7, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v3

    .line 165
    invoke-virtual {v1, v5, v4, v3, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_4

    .line 171
    :cond_6
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v5, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 174
    :cond_7
    :goto_4
    return-void
.end method

.method private mainLampChange()V
    .locals 7

    .line 213
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "switch_main_lamp_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mIsSwitchMainEnable:Z

    .line 215
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mIsSwitchMainEnable:Z

    if-ne v0, v2, :cond_2

    .line 216
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "switch_symbol_lamp_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    goto :goto_2

    .line 219
    :cond_2
    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    .line 221
    :goto_2
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    const/16 v3, 0x50

    if-eqz v0, :cond_4

    .line 222
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    if-nez v0, :cond_3

    .line 223
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, v3, v2, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_3

    .line 225
    :cond_3
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    if-ne v2, v0, :cond_5

    .line 226
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v2, 0x3

    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v5, 0xa

    const/4 v6, 0x7

    .line 228
    invoke-virtual {v4, v5, v6, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v4

    .line 226
    invoke-virtual {v0, v3, v2, v4, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_3

    .line 232
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, v3, v1, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 235
    :cond_5
    :goto_3
    return-void
.end method

.method private manualBrightnessChange()V
    .locals 3

    .line 298
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "led_light_brightness"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    .line 302
    :cond_0
    return-void
.end method

.method private noDisturbModeChange()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->noDisturbModeChange()V

    .line 210
    return-void
.end method

.method private notificationSettingsChange()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notificationsettings"

    .line 200
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    .line 202
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "led_light_brightness_mode"

    .line 101
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 100
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    const-string/jumbo v1, "led_light_brightness"

    .line 105
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 104
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 108
    const-string/jumbo v1, "notificationsettings"

    .line 109
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 108
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 112
    const-string/jumbo v1, "led_no_disturb_enable"

    .line 113
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 112
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 116
    const-string/jumbo v1, "switch_main_lamp_enable"

    .line 117
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 116
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 120
    const-string/jumbo v1, "switch_symbol_lamp_enable"

    .line 121
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 120
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 124
    const-string/jumbo v1, "nubia_symbol_mode"

    .line 125
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 124
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 127
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .line 319
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightBrightness(I)V

    .line 320
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 321
    return-void
.end method

.method private symbolLampChange()V
    .locals 7

    .line 238
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "switch_symbol_lamp_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    .line 240
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    const/16 v3, 0x50

    if-eqz v0, :cond_2

    .line 241
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, v3, v1, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_1

    .line 244
    :cond_1
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    if-ne v1, v0, :cond_3

    .line 245
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x3

    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v5, 0xa

    const/4 v6, 0x7

    .line 247
    invoke-virtual {v4, v5, v6, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v4

    .line 245
    invoke-virtual {v0, v3, v1, v4, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_1

    .line 251
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, v3, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 254
    :cond_3
    :goto_1
    return-void
.end method

.method private symbolLampModeChange()V
    .locals 7

    .line 257
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_symbol_mode"

    .line 257
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    .line 259
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    if-eqz v0, :cond_1

    .line 260
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    const/4 v1, 0x1

    const/16 v3, 0x50

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, v3, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 264
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, v3, v1, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_0

    .line 266
    :cond_0
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    if-ne v1, v0, :cond_1

    .line 267
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v1, 0x3

    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v5, 0xa

    const/4 v6, 0x7

    .line 269
    invoke-virtual {v4, v5, v6, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v4

    .line 267
    invoke-virtual {v0, v3, v1, v4, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 273
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getSymbolLampMode()I
    .locals 1

    .line 196
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampMode:I

    return v0
.end method

.method public handleBootCompeleted()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->initSettings()V

    .line 131
    return-void
.end method

.method public isBreathingLightTouchEnable()Z
    .locals 3

    .line 187
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "led_light_touch_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isChargeSwitchEnable()Z
    .locals 3

    .line 177
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "led_light_charge_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isNoDisturbEnable()Z
    .locals 3

    .line 182
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "led_no_disturb_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isNotificationEnable()Z
    .locals 2

    .line 205
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSymbolLampSwitchEnable()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSymbolLampEnable:Z

    return v0
.end method

.method public updateAutoBrightnessState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 290
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "led_light_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 292
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 293
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    .line 295
    :cond_0
    return-void
.end method
