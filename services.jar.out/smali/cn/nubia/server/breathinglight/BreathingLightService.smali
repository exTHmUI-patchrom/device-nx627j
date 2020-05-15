.class public Lcn/nubia/server/breathinglight/BreathingLightService;
.super Lcn/nubia/server/NubiaSystemService;
.source "BreathingLightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;,
        Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;,
        Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;
    }
.end annotation


# static fields
.field public static final COLOR_BLUE:I = 0x3

.field public static final COLOR_GREEN:I = 0x2

.field public static final COLOR_RED:I = 0x1

.field public static final GREEN_AND_RED_LIGHTS:Z = true

.field public static final GREEN_LIGHT:I = 0x2

.field public static final GREEN_OUTN:I = 0x40

.field public static final KEYGUARD_DRAG_RELEASE:I = 0x2

.field public static final KEYGUARD_DRAG_START:I = 0x1

.field public static final LEFT:I = 0x20

.field public static final LIGHT_ALWAYS_OFF:I = 0x2

.field public static final LIGHT_ALWAYS_ON:I = 0x1

.field public static final LIGHT_BLINK:I = 0x3

.field public static final LIGHT_BLINK_ONCE:I = 0x6

.field public static final LIGHT_IC_OFF:I = 0x0

.field public static final LIGHT_RESERVE:I = 0x7

.field public static final LIGHT_TURN_OFF:I = 0x5

.field public static final LIGHT_TURN_ON:I = 0x4

.field public static final LOWPOWER_TIME:I = 0x4

.field public static final LOW_POWER_LEVEL:I = 0x14

.field public static final MAX_FREQUENCY:I = 0xff

.field public static final MESSAGE_SCREEN_OFF:I = 0x64

.field public static final MIDDLE:I = 0x10

.field public static final MIN_FREQUENCY:I = 0x0

.field public static final MISSEVENT_TIME:I = 0x4

.field public static final MODE_ALWAYS_ON:I = 0x1

.field public static final MODE_BLINK:I = 0x2

.field public static final MODE_IC_OFF:I = 0x0

.field public static final MSG_SET_LIGHT:I = 0x64

.field public static final PRESS_KEY:I = 0x3

.field public static final PROXIMITY_SCREEN_OFF:I = 0x6

.field public static final PROXIMITY_SCREEN_ON:I = 0x7

.field public static final RED_LIGHT:I = 0x1

.field public static final RED_OUTN:I = 0x30

.field public static final RIGHT:I = 0x8

.field public static final SCENE_KEYGUARD_LOCKED:I = 0x2

.field public static final SCENE_SCREEN_IDLE:I = 0x3

.field public static final SCENE_SCREEN_OFF:I = 0x1

.field private static final SERVICE_NAME:Ljava/lang/String; = "nubia.breathinglight"

.field public static final SHUTDOWN:I = 0x5

.field public static final SYMBOL_FADE_TIME:I = 0xa

.field public static final SYMBOL_LIGHT_OUTN:I = 0x50

.field public static final SYMBOL_OFF_TIME:I = 0x7

.field public static final SYMBOL_ON_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BreathingLightService"

.field public static final TIME_0:I = 0x0

.field public static final TIME_1:I = 0x1

.field public static final TIME_2:I = 0x2

.field public static final TIME_3:I = 0x3

.field public static final TIME_4:I = 0x4

.field public static final TIME_5:I = 0x5

.field public static final TIME_6:I = 0x6

.field public static final TIME_7:I = 0x7

.field public static final TOUCH_SCREEN:I = 0x4

.field private static final mIsGreenAndRedEnabled:Z

.field private static final mIsHomeLightDisenabled:Z

.field private static final mIsNewGreenAndRedEnabled:Z

.field private static final mIsNewSolution:Z

.field private static final mIsRedEnabled:Z


# instance fields
.field private bootCompleted:Z

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mCallJNIHandler:Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

.field private mCallJNIThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mInit:Z

.field private mLastFrequency:I

.field private mLastLights:I

.field private mLastMode:I

.field private mMainHandler:Landroid/os/Handler;

.field private mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

.field private mNotifition:Landroid/app/INotificationManager;

.field private mNubiaLightsManager:Lcn/nubia/server/breathinglight/NubiaLightsManager;

.field private mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

.field private mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

.field private mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_breathlight_feature"

    const-string v2, "breath_light_use_new_solution"

    .line 44
    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsNewSolution:Z

    .line 153
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_breathlight_feature"

    const-string v2, "breath_light_green_red_indicator"

    .line 154
    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsGreenAndRedEnabled:Z

    .line 157
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_breathlight_feature"

    const-string v2, "breath_light_new_green_red_indicator"

    .line 158
    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsNewGreenAndRedEnabled:Z

    .line 160
    const-string v0, "false"

    const-string/jumbo v1, "nubia_breathlight_feature"

    const-string v2, "breath_light_home_enable"

    .line 161
    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsHomeLightDisenabled:Z

    .line 163
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_breathlight_feature"

    const-string v2, "breath_light_red_indicator"

    .line 164
    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsRedEnabled:Z

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 206
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->bootCompleted:Z

    .line 40
    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->shutdown:Z

    .line 41
    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mInit:Z

    .line 316
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightService$1;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMainHandler:Landroid/os/Handler;

    .line 327
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightService$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightService$2;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    .line 209
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BreathLightCallJNI"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIThread:Landroid/os/HandlerThread;

    .line 210
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 211
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIHandler:Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

    .line 212
    new-instance v0, Lcn/nubia/server/breathinglight/NubiaLightsManager;

    invoke-direct {v0}, Lcn/nubia/server/breathinglight/NubiaLightsManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mNubiaLightsManager:Lcn/nubia/server/breathinglight/NubiaLightsManager;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/MissEventObserver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 26
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->bootCompleted()V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsNewSolution:Z

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/NubiaLightsManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mNubiaLightsManager:Lcn/nubia/server/breathinglight/NubiaLightsManager;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsGreenAndRedEnabled:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsNewGreenAndRedEnabled:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsRedEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/breathinglight/BreathingLightService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 26
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->handleSymbolLampChange()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/breathinglight/BreathingLightService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService;->handleBatteryChange(Landroid/content/Intent;)V

    return-void
.end method

.method private bootCompleted()V
    .locals 2

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->bootCompleted:Z

    .line 282
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .line 283
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 284
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->handleBootCompeleted()V

    .line 285
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleBootCompleted()V

    .line 286
    return-void
.end method

.method private changeBatteryState(II)V
    .locals 1
    .param p1, "plugged"    # I
    .param p2, "level"    # I

    .line 397
    const/16 v0, 0x64

    if-lez p1, :cond_0

    if-ge p2, v0, :cond_0

    .line 398
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 399
    :cond_0
    if-lez p1, :cond_1

    if-lt p2, v0, :cond_1

    .line 400
    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 401
    :cond_1
    const/16 v0, 0x14

    if-gt p2, v0, :cond_2

    .line 402
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 404
    :cond_2
    :goto_0
    return-void
.end method

.method private getCheckTime(III)I
    .locals 0
    .param p1, "fadeTime"    # I
    .param p2, "minTime"    # I
    .param p3, "maxTime"    # I

    .line 435
    if-ge p1, p2, :cond_0

    .line 436
    move p1, p2

    goto :goto_0

    .line 437
    :cond_0
    if-le p1, p3, :cond_1

    .line 438
    move p1, p3

    .line 440
    :cond_1
    :goto_0
    return p1
.end method

.method private handleBatteryChange(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 388
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isChargeSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/MissEventObserver;->isUseingMiddleLight()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    const-string/jumbo v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 391
    .local v0, "plugged":I
    const-string/jumbo v2, "level"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 392
    .local v1, "level":I
    invoke-direct {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->changeBatteryState(II)V

    .line 394
    .end local v0    # "plugged":I
    .end local v1    # "level":I
    :cond_0
    return-void
.end method

.method private handleSymbolLampChange()V
    .locals 5

    .line 377
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isSymbolLampSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getSymbolLampMode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x50

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0, v2, v1, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getSymbolLampMode()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 381
    const/4 v0, 0x3

    const/16 v1, 0xa

    const/4 v4, 0x7

    .line 382
    invoke-virtual {p0, v1, v4, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v1

    .line 381
    invoke-virtual {p0, v2, v0, v1, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 385
    :cond_1
    :goto_0
    return-void
.end method

.method private setLightWhenShutdown()V
    .locals 4

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->shutdown:Z

    .line 258
    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-virtual {p0, v2, v1, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 259
    nop

    .line 260
    invoke-virtual {p0, v0, v1, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v0

    .line 259
    const/16 v2, 0x10

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 261
    return-void
.end method


# virtual methods
.method checkBatteryState()V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isChargeSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/MissEventObserver;->isUseingMiddleLight()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v0

    .line 311
    .local v0, "plugged":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    .line 312
    .local v1, "level":I
    invoke-direct {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->changeBatteryState(II)V

    .line 314
    .end local v0    # "plugged":I
    .end local v1    # "level":I
    :cond_0
    return-void
.end method

.method native getCurrentModeJNI()I
.end method

.method public getLightBrightness()I
    .locals 1

    .line 415
    sget-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsNewSolution:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mNubiaLightsManager:Lcn/nubia/server/breathinglight/NubiaLightsManager;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/NubiaLightsManager;->getBrightness()I

    move-result v0

    return v0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getMinGradeJNI()I

    move-result v0

    return v0
.end method

.method public getLightFrequency(III)I
    .locals 2
    .param p1, "fadeTime"    # I
    .param p2, "fullOffTime"    # I
    .param p3, "fullOnTime"    # I

    .line 423
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getCheckTime(III)I

    move-result p1

    .line 426
    invoke-direct {p0, p2, v1, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getCheckTime(III)I

    move-result p2

    .line 429
    invoke-direct {p0, p3, v1, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getCheckTime(III)I

    move-result p3

    .line 431
    shl-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method native getMinGradeJNI()I
.end method

.method public getServiceBinder()Landroid/os/IBinder;
    .locals 2

    .line 531
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightService$1;)V

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 526
    const-string/jumbo v0, "nubia.breathinglight"

    return-object v0
.end method

.method public getSymbolLampMode()I
    .locals 1

    .line 297
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->getSymbolLampMode()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 7

    .line 216
    const-string/jumbo v0, "notification"

    .line 217
    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mNotifition:Landroid/app/INotificationManager;

    .line 218
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 229
    new-instance v1, Lcn/nubia/server/breathinglight/BreathingLightSettings;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 230
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mNotifition:Landroid/app/INotificationManager;

    invoke-direct {v1, v2, p0, v3, v4}, Lcn/nubia/server/breathinglight/MissEventObserver;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/app/INotificationManager;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

    .line 232
    sget-boolean v1, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsGreenAndRedEnabled:Z

    if-eqz v1, :cond_2

    .line 233
    sget-boolean v1, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsNewGreenAndRedEnabled:Z

    if-eqz v1, :cond_0

    .line 234
    new-instance v1, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcn/nubia/server/breathinglight/NewGreenAndRedLightsStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    goto :goto_0

    .line 235
    :cond_0
    sget-boolean v1, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsRedEnabled:Z

    if-eqz v1, :cond_1

    .line 236
    new-instance v1, Lcn/nubia/server/breathinglight/RedLightsStateMachine;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcn/nubia/server/breathinglight/RedLightsStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    goto :goto_0

    .line 238
    :cond_1
    new-instance v1, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcn/nubia/server/breathinglight/GreenAndRedLightsStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    goto :goto_0

    .line 240
    :cond_2
    sget-boolean v1, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsHomeLightDisenabled:Z

    if-eqz v1, :cond_3

    .line 241
    new-instance v1, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcn/nubia/server/breathinglight/HomeDisabledBreathingLightStateMatchine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    goto :goto_0

    .line 243
    :cond_3
    new-instance v1, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .line 245
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->start()V

    .line 247
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mInit:Z

    .line 248
    return-void
.end method

.method public isBootCompleted()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->bootCompleted:Z

    return v0
.end method

.method public isBreathingLightTouchEnable()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isBreathingLightTouchEnable()Z

    move-result v0

    return v0
.end method

.method public isChargeSwitchEnable()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isChargeSwitchEnable()Z

    move-result v0

    return v0
.end method

.method public isSymbolLampSwitchEnable()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isSymbolLampSwitchEnable()Z

    move-result v0

    return v0
.end method

.method public missEventsChangeToNull()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->setHasMissEvent(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method public noDisturbModeChange()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/MissEventObserver;->setNoDisturb()V

    .line 306
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 519
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->init()V

    .line 522
    :cond_0
    return-void
.end method

.method public requestBreathingLightExtInternal(IIIII)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "mode"    # I
    .param p3, "frequency"    # I
    .param p4, "scene"    # I
    .param p5, "color"    # I

    .line 579
    return-void
.end method

.method public requestBreathingLightInternal(I)V
    .locals 2
    .param p1, "known"    # I

    .line 535
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->shutdown:Z

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "BreathingLightService"

    const-string/jumbo v1, "reject all request when shutdown!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 540
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mInit:Z

    if-nez v0, :cond_1

    .line 541
    const-string v0, "BreathingLightService"

    const-string/jumbo v1, "reject all request when the breathing Light is not init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 545
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 572
    const-string v0, "BreathingLightService"

    const-string v1, "Unknown request type!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :pswitch_0
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 570
    goto :goto_0

    .line 566
    :pswitch_1
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 567
    goto :goto_0

    .line 563
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightWhenShutdown()V

    .line 564
    goto :goto_0

    .line 558
    :pswitch_3
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isBreathingLightTouchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 553
    :pswitch_4
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isBreathingLightTouchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 550
    :pswitch_5
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 551
    goto :goto_0

    .line 547
    :pswitch_6
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 548
    nop

    .line 574
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendRequestToStateMachine(I)V
    .locals 1
    .param p1, "what"    # I

    .line 264
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0, p1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 265
    return-void
.end method

.method public sendRequestToStateMachine(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0, p1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 270
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 271
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 272
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v1, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 274
    return-void
.end method

.method native setBreathingLightJNI(IIII)V
.end method

.method public setBreathingLightState(IIII)V
    .locals 3
    .param p1, "lights"    # I
    .param p2, "mode"    # I
    .param p3, "frequency"    # I
    .param p4, "color"    # I

    .line 445
    sget-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsGreenAndRedEnabled:Z

    if-eqz v0, :cond_0

    .line 446
    sget-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsNewGreenAndRedEnabled:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsRedEnabled:Z

    if-nez v0, :cond_2

    .line 447
    and-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 449
    :cond_0
    sget-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsHomeLightDisenabled:Z

    if-eqz v0, :cond_1

    .line 450
    and-int/lit8 p1, p1, 0x28

    goto :goto_0

    .line 452
    :cond_1
    and-int/lit8 p1, p1, 0x38

    .line 454
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 455
    return-void

    .line 457
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIHandler:Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->isPocessing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastMode:I

    if-ne v0, p2, :cond_4

    const/4 v0, 0x6

    if-ne p2, v0, :cond_4

    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastLights:I

    if-ne v0, p1, :cond_4

    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastFrequency:I

    if-ne v0, p3, :cond_4

    .line 460
    const-string v0, "BreathingLightService"

    const-string/jumbo v1, "setBreathingLightState: repeated process!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 464
    :cond_4
    iput p2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastMode:I

    .line 465
    iput p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastLights:I

    .line 466
    iput p3, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastFrequency:I

    .line 468
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightService$1;)V

    .line 469
    .local v0, "data":Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;
    invoke-virtual {v0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->setLight(I)V

    .line 470
    invoke-virtual {v0, p2}, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->setMode(I)V

    .line 471
    invoke-virtual {v0, p3}, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->setFrequency(I)V

    .line 472
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService$MsgData;->setColor(I)V

    .line 473
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIHandler:Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

    const/16 v2, 0x64

    .line 474
    invoke-virtual {v1, v2}, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 475
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 476
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIHandler:Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 477
    return-void
.end method

.method native setGreenAndRedLightsJNI(IIII)V
.end method

.method public setLightBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 407
    sget-boolean v0, Lcn/nubia/server/breathinglight/BreathingLightService;->mIsNewSolution:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mNubiaLightsManager:Lcn/nubia/server/breathinglight/NubiaLightsManager;

    invoke-virtual {v0, p1}, Lcn/nubia/server/breathinglight/NubiaLightsManager;->setBrightness(I)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setMinGradeJNI(I)V

    .line 412
    :goto_0
    return-void
.end method

.method native setMinGradeJNI(I)V
.end method
