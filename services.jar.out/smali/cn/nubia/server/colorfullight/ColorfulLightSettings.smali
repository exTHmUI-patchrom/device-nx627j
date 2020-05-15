.class public final Lcn/nubia/server/colorfullight/ColorfulLightSettings;
.super Ljava/lang/Object;
.source "ColorfulLightSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;,
        Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;
    }
.end annotation


# static fields
.field private static final CHECK_STATE_DELAY:I = 0x1388

.field private static final DEBUG:Z

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final GAME_KEYS_OFF_ON:I = 0x1

.field private static final KEYS_SWITCH_COLOR_LAMP_PREFERENCE:Ljava/lang/String; = "switch_color_lamp_enable"

.field private static final KEYS_SWITCH_MAIN_LAMP_PREFERENCE:Ljava/lang/String; = "switch_main_lamp_enable"

.field private static final KEYS_SWITCH_MEDIA_LAMP_PREFERENCE:Ljava/lang/String; = "switch_video_lamp_enable"

.field private static final LED_LIGHT_ALARM_ENABLE:Ljava/lang/String; = "led_light_alarm_enable"

.field private static final LED_LIGHT_BOOT_ENABLE:Ljava/lang/String; = "led_light_boot_enable"

.field private static final LED_LIGHT_CALL_ENABLE:Ljava/lang/String; = "led_light_call_enable"

.field private static final LED_LIGHT_CHARGE_ENABLE:Ljava/lang/String; = "led_light_charge_enable"

.field private static final LED_LIGHT_NOTIFY_ENABLE:Ljava/lang/String; = "led_light_notify_enable"

.field private static final LED_SETTING_GAME_MODE_ENABLE:I = 0x10

.field private static final MSG_CANCLE_PREVIEW_ALARM_MODE:I = 0x68

.field private static final MSG_CANCLE_PREVIEW_CALLING_MODE:I = 0x66

.field private static final MSG_CANCLE_PREVIEW_LAMP_MODE:I = 0x65

.field private static final MSG_CANCLE_PREVIEW_MEDIA_MODE:I = 0x67

.field private static final NUBIA_ALARM_MODE:Ljava/lang/String; = "nubia_alarm_mode"

.field private static final NUBIA_CALLING_MODE:Ljava/lang/String; = "nubia_calling_mode"

.field private static final NUBIA_GAMEKEYS_LAMP:Ljava/lang/String; = "nubia_gamekeys_lamp"

.field private static final NUBIA_MEDIA_LAMP_MODE:Ljava/lang/String; = "nubia_media_lamp_mode"

.field private static final STR_GAME_KEYS_OFF_ON:Ljava/lang/String; = "nubia_db_game_keys"

.field private static final TAG:Ljava/lang/String;

.field private static final mIsColorNewSolution:Z

.field private static mIsMediaPlayState:Z

.field private static final mStreamTypes:[I


# instance fields
.field private mAlarmMode:I

.field private mCallingMode:I

.field private mContext:Landroid/content/Context;

.field private mGameKeyHelper:Lcn/nubia/game/GameKeysHelper;

.field private mGameLampMode:I

.field private mIsAlarmEnable:Z

.field private mIsBootEnable:Z

.field private mIsCallEnable:Z

.field private mIsChargeEnable:Z

.field private mIsGameModeEnable:Z

.field private mIsMediaModeEnable:Z

.field private mIsNotifyEnable:Z

.field private mIsPreviewMode:Z

.field private mIsSwitchColorEnable:Z

.field private mIsSwitchMainEnable:Z

.field private mMediaMode:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mResources:Landroid/content/res/Resources;

.field private mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

.field private mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

.field private mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const-class v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->TAG:Ljava/lang/String;

    .line 27
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->DEBUG:Z

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaPlayState:Z

    .line 92
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_colorfullight_feature"

    const-string/jumbo v2, "support_new_lamp_mode"

    .line 93
    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsColorNewSolution:Z

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mStreamTypes:[I

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/colorfullight/ColorfulLightService;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/colorfullight/ColorfulLightService;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    .line 39
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchMainEnable:Z

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsGameModeEnable:Z

    .line 41
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaModeEnable:Z

    .line 42
    const/4 v2, 0x5

    iput v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mMediaMode:I

    .line 43
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsCallEnable:Z

    .line 44
    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mCallingMode:I

    .line 45
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsChargeEnable:Z

    .line 46
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsNotifyEnable:Z

    .line 47
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    .line 48
    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mAlarmMode:I

    .line 49
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsBootEnable:Z

    .line 50
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsPreviewMode:Z

    .line 160
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResources:Landroid/content/res/Resources;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    .line 164
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mGameKeyHelper:Lcn/nubia/game/GameKeysHelper;

    .line 165
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    invoke-direct {v0, p0, p3}, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    .line 166
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;

    .line 167
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->initialValue()V

    .line 168
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->registerColorfulLightContentObserver()V

    .line 169
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)Lcn/nubia/server/colorfullight/ColorfulLightService;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleNotifyChange()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleMediaLampChange()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleMediaLampModeChange()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleAlarmChange()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleAlarmModeChange()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleBootChange()V

    return-void
.end method

.method static synthetic access$202(Lcn/nubia/server/colorfullight/ColorfulLightSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;
    .param p1, "x1"    # Z

    .line 25
    iput-boolean p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsPreviewMode:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleMainLampChange()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleColorfulLightChange()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleGameModeChange()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleGameLampModeChange()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleCallChange()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleCallingModeChange()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/colorfullight/ColorfulLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->handleChargeChange()V

    return-void
.end method

.method private checkAlarmModeState()V
    .locals 5

    .line 450
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->isAlarmAlertState()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->TAG:Ljava/lang/String;

    const-string v3, "[ColorfulLight] checkAlarmModeState isAlarmAlertState"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v3, 0x67

    iget v4, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mAlarmMode:I

    invoke-virtual {v0, v3, v4, v2, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v3, 0x4

    if-ne v3, v0, :cond_1

    .line 456
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v4, 0x6d

    invoke-virtual {v0, v4, v3, v2, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 460
    :cond_1
    :goto_0
    return-void
.end method

.method private checkCallingModeState()V
    .locals 5

    .line 438
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsCallEnable:Z

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getPhoneState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 440
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v1, 0x65

    iget v4, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mCallingMode:I

    invoke-virtual {v0, v1, v4, v3, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_1

    .line 443
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v4, 0x6d

    invoke-virtual {v0, v4, v1, v3, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 447
    :cond_1
    :goto_0
    return-void
.end method

.method private checkGameModeState()V
    .locals 5

    .line 463
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsGameModeEnable:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v3, 0x69

    iget v4, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mGameLampMode:I

    invoke-virtual {v0, v3, v4, v2, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 467
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v4, 0x6d

    invoke-virtual {v0, v4, v3, v2, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 470
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->checkMediaPlayState()V

    .line 472
    :goto_0
    return-void
.end method

.method private checkMediaPlayState()V
    .locals 5

    .line 475
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaModeEnable:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->isGameKeyEnable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaPlayState:Z

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->TAG:Ljava/lang/String;

    const-string v3, "[ColorfulLight] checkMediaPlayState isMediaPalyState!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v3, 0x6a

    iget v4, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mMediaMode:I

    invoke-virtual {v0, v3, v4, v2, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    .line 480
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v4, 0x6d

    invoke-virtual {v0, v4, v3, v2, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 483
    :cond_1
    :goto_0
    return-void
.end method

.method private getColorfulLightStateValue()V
    .locals 5

    .line 218
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsColorNewSolution:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "switch_color_lamp_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    goto :goto_2

    .line 222
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "switch_main_lamp_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    .line 225
    :goto_2
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_gamekeys_lamp"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mGameLampMode:I

    .line 226
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "switch_video_lamp_enable"

    .line 227
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaModeEnable:Z

    .line 228
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_media_lamp_mode"

    const/4 v4, 0x5

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mMediaMode:I

    .line 229
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_call_enable"

    .line 230
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsCallEnable:Z

    .line 231
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_calling_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mCallingMode:I

    .line 232
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_charge_enable"

    .line 233
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsChargeEnable:Z

    .line 234
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_notify_enable"

    .line 235
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsNotifyEnable:Z

    .line 236
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsColorNewSolution:Z

    if-eqz v0, :cond_8

    .line 237
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_alarm_enable"

    .line 238
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    goto :goto_8

    .line 240
    :cond_8
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    .line 242
    :goto_8
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_alarm_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mAlarmMode:I

    .line 243
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_boot_enable"

    .line 244
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsBootEnable:Z

    .line 245
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsColorNewSolution:Z

    if-eqz v0, :cond_b

    .line 246
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsBootEnable:Z

    if-eqz v0, :cond_a

    .line 247
    const-string/jumbo v0, "persist.vendor.leds_bootmode"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 249
    :cond_a
    const-string/jumbo v0, "persist.vendor.leds_bootmode"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_b
    :goto_a
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_db_game_keys"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 253
    .local v0, "dbValue":I
    iget-boolean v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mGameKeyHelper:Lcn/nubia/game/GameKeysHelper;

    const/16 v4, 0x10

    .line 254
    invoke-virtual {v3, v0, v4}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeysSubSwitch(II)Z

    move-result v3

    if-eqz v3, :cond_c

    move v1, v2

    nop

    :cond_c
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsGameModeEnable:Z

    .line 255
    return-void
.end method

.method private handleAlarmChange()V
    .locals 5

    .line 401
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsColorNewSolution:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 402
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_alarm_enable"

    .line 403
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    goto :goto_1

    .line 405
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    .line 407
    :goto_1
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ColorfulLight] handleAlarmChange mIsAlarmEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", LightLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 408
    invoke-virtual {v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 410
    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v2, 0x4

    if-ne v2, v0, :cond_2

    .line 411
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 414
    :cond_2
    return-void
.end method

.method private handleAlarmModeChange()V
    .locals 6

    .line 417
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nubia_alarm_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mAlarmMode:I

    .line 418
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->removeMessages(I)V

    .line 419
    iput-boolean v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsPreviewMode:Z

    .line 420
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    iget v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mAlarmMode:I

    const/16 v3, 0x67

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    return-void
.end method

.method private handleBootChange()V
    .locals 3

    .line 426
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "led_light_boot_enable"

    .line 427
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsBootEnable:Z

    .line 428
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsColorNewSolution:Z

    if-eqz v0, :cond_2

    .line 429
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsBootEnable:Z

    if-eqz v0, :cond_1

    .line 430
    const-string/jumbo v0, "persist.vendor.leds_bootmode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 432
    :cond_1
    const-string/jumbo v0, "persist.vendor.leds_bootmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_2
    :goto_1
    return-void
.end method

.method private handleCallChange()V
    .locals 5

    .line 356
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_call_enable"

    .line 357
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsCallEnable:Z

    .line 358
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsCallEnable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 359
    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    const/4 v2, 0x5

    if-ne v2, v0, :cond_1

    .line 360
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 363
    :cond_1
    return-void
.end method

.method private handleCallingModeChange()V
    .locals 6

    .line 366
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nubia_calling_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mCallingMode:I

    .line 367
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->removeMessages(I)V

    .line 368
    iput-boolean v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsPreviewMode:Z

    .line 369
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    iget v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mCallingMode:I

    const/16 v3, 0x65

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 372
    return-void
.end method

.method private handleChargeChange()V
    .locals 3

    .line 375
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "led_light_charge_enable"

    .line 376
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsChargeEnable:Z

    .line 377
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkBatteryState()V

    .line 378
    return-void
.end method

.method private handleColorfulLightChange()V
    .locals 5

    .line 329
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->getColorfulLightStateValue()V

    .line 330
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v1, 0x6d

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 336
    :goto_0
    return-void
.end method

.method private handleGameLampModeChange()V
    .locals 6

    .line 347
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nubia_gamekeys_lamp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mGameLampMode:I

    .line 348
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->removeMessages(I)V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsPreviewMode:Z

    .line 350
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    iget v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mGameLampMode:I

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v2, v5}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 353
    return-void
.end method

.method private handleGameModeChange()V
    .locals 5

    .line 339
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nubia_db_game_keys"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 340
    .local v0, "dbValue":I
    sget-object v1, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorfulLight] handleGameModeChange_dbValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mGameKeyHelper:Lcn/nubia/game/GameKeysHelper;

    const/16 v3, 0x10

    .line 342
    invoke-virtual {v1, v0, v3}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeysSubSwitch(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsGameModeEnable:Z

    .line 343
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->checkGameModeState()V

    .line 344
    return-void
.end method

.method private handleMainLampChange()V
    .locals 5

    .line 319
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->initialValue()V

    .line 320
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v1, 0x6d

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 326
    :goto_0
    return-void
.end method

.method private handleMediaLampChange()V
    .locals 4

    .line 387
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "switch_video_lamp_enable"

    .line 388
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaModeEnable:Z

    .line 389
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->checkMediaPlayState()V

    .line 390
    return-void
.end method

.method private handleMediaLampModeChange()V
    .locals 5

    .line 393
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nubia_media_lamp_mode"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mMediaMode:I

    .line 394
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    iget v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mMediaMode:I

    const/16 v2, 0x6a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->removeMessages(I)V

    .line 397
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsHandler:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 398
    return-void
.end method

.method private handleNotifyChange()V
    .locals 4

    .line 381
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_notify_enable"

    .line 382
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsNotifyEnable:Z

    .line 383
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkMissEventState()V

    .line 384
    return-void
.end method

.method private initialValue()V
    .locals 5

    .line 172
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsColorNewSolution:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "switch_main_lamp_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchMainEnable:Z

    .line 175
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchMainEnable:Z

    if-ne v0, v2, :cond_2

    .line 176
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "switch_color_lamp_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    goto :goto_3

    .line 179
    :cond_2
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    goto :goto_3

    .line 182
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "switch_main_lamp_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    .line 185
    :goto_3
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_gamekeys_lamp"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mGameLampMode:I

    .line 186
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "switch_video_lamp_enable"

    .line 187
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaModeEnable:Z

    .line 188
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_media_lamp_mode"

    const/4 v4, 0x5

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mMediaMode:I

    .line 189
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_call_enable"

    .line 190
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsCallEnable:Z

    .line 191
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_calling_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mCallingMode:I

    .line 192
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_charge_enable"

    .line 193
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsChargeEnable:Z

    .line 194
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_notify_enable"

    .line 195
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsNotifyEnable:Z

    .line 196
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsColorNewSolution:Z

    if-eqz v0, :cond_a

    .line 197
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_alarm_enable"

    .line 198
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_9

    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    goto :goto_9

    .line 200
    :cond_a
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    .line 202
    :goto_9
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_alarm_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mAlarmMode:I

    .line 203
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "led_light_boot_enable"

    .line 204
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_b

    move v0, v2

    goto :goto_a

    :cond_b
    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsBootEnable:Z

    .line 205
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsColorNewSolution:Z

    if-eqz v0, :cond_d

    .line 206
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsBootEnable:Z

    if-eqz v0, :cond_c

    .line 207
    const-string/jumbo v0, "persist.vendor.leds_bootmode"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 209
    :cond_c
    const-string/jumbo v0, "persist.vendor.leds_bootmode"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_d
    :goto_b
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "nubia_db_game_keys"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, "dbValue":I
    iget-boolean v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mGameKeyHelper:Lcn/nubia/game/GameKeysHelper;

    const/16 v4, 0x10

    .line 214
    invoke-virtual {v3, v0, v4}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeysSubSwitch(II)Z

    move-result v3

    if-eqz v3, :cond_e

    move v1, v2

    nop

    :cond_e
    iput-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsGameModeEnable:Z

    .line 215
    return-void
.end method

.method private registerColorfulLightContentObserver()V
    .locals 13

    .line 258
    const-string/jumbo v0, "nubia_db_game_keys"

    const-string/jumbo v1, "switch_main_lamp_enable"

    const-string/jumbo v2, "switch_color_lamp_enable"

    const-string/jumbo v3, "switch_video_lamp_enable"

    const-string/jumbo v4, "nubia_media_lamp_mode"

    const-string/jumbo v5, "nubia_gamekeys_lamp"

    const-string/jumbo v6, "led_light_call_enable"

    const-string/jumbo v7, "nubia_calling_mode"

    const-string/jumbo v8, "led_light_charge_enable"

    const-string/jumbo v9, "led_light_notify_enable"

    const-string/jumbo v10, "led_light_alarm_enable"

    const-string/jumbo v11, "nubia_alarm_mode"

    const-string/jumbo v12, "led_light_boot_enable"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "uris":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 275
    .local v4, "uri":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings$SettingsObserver;

    const/4 v8, -0x1

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 274
    .end local v4    # "uri":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method


# virtual methods
.method checkSettingsState()V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->checkCallingModeState()V

    .line 487
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->checkAlarmModeState()V

    .line 488
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->checkGameModeState()V

    .line 489
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->checkMediaPlayState()V

    .line 490
    return-void
.end method

.method dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsSwitchColorEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsSwitchColorEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsGameModeEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsGameModeEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameLampMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mGameLampMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsCallEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsCallEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCallingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mCallingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsNotifyEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsNotifyEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsChargeEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsChargeEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsMediaModeEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaModeEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMediaMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mMediaMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAlarmEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAlarmMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mAlarmMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsBootEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsBootEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method getAlarmMode()I
    .locals 1

    .line 517
    iget v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mAlarmMode:I

    return v0
.end method

.method getCallMode()I
    .locals 1

    .line 513
    iget v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mCallingMode:I

    return v0
.end method

.method isAlarmSwitchEnable()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsAlarmEnable:Z

    return v0
.end method

.method isBootSwitchEnable()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsBootEnable:Z

    return v0
.end method

.method isCallSwitchEnable()Z
    .locals 1

    .line 497
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsCallEnable:Z

    return v0
.end method

.method isChargeSwitchEnable()Z
    .locals 1

    .line 509
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsChargeEnable:Z

    return v0
.end method

.method isGameKeyEnable()Z
    .locals 4

    .line 536
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nubia_db_game_keys"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 537
    .local v0, "dbValue":I
    sget-object v1, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ColorfulLight] isGameKeyEnable_dbValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, "gameKeyEnable":Z
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 540
    const/4 v1, 0x1

    .line 542
    :cond_0
    return v1
.end method

.method isNotifySwitchEnable()Z
    .locals 1

    .line 505
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsNotifyEnable:Z

    return v0
.end method

.method noteEndMedia()Z
    .locals 5

    .line 559
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaPlayState:Z

    .line 560
    sget-object v1, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ColorfulLight] noteEndMedia: mService.getLightLevel() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 562
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v0, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 565
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method noteStartMedia()Z
    .locals 6

    .line 546
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaPlayState:Z

    .line 547
    sget-object v1, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ColorfulLight] mIsMediaModeEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaModeEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isGameKeyEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->isGameKeyEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsPreviewMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsPreviewMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsMediaModeEnable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->isGameKeyEnable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mIsPreviewMode:Z

    if-nez v1, :cond_0

    .line 551
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/16 v3, 0x6a

    iget v4, p0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->mMediaMode:I

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v2, v5}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 553
    return v0

    .line 555
    :cond_0
    return v2
.end method
