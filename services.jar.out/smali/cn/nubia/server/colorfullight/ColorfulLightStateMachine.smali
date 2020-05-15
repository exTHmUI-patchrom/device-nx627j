.class public final Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "ColorfulLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;,
        Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOffState;,
        Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final CFG_ALARM_MODE_ARRAY:[I

.field public static final CFG_AUDIO_POINT:I = 0x25

.field public static final CFG_AUDIO_RANDOM:I = 0x23

.field public static final CFG_AUDIO_SPEED:I = 0x24

.field public static final CFG_AlERM_USER_DEFINED_SAVE:I = 0x3c

.field private static final CFG_CALLING_MODE_ARRAY:[I

.field public static final CFG_CALLING_USER_DEFINED_SAVE:I = 0x3d

.field public static final CFG_GAME_AUDIO_FLOWER:I = 0x1a

.field public static final CFG_GAME_AUDIO_GUN:I = 0x22

.field private static final CFG_GAME_AUDIO_MODE_ARRAY:[I

.field public static final CFG_GAME_AUDIO_SINGLE_COLOR_BLUE:I = 0x1d

.field public static final CFG_GAME_AUDIO_SINGLE_COLOR_CYAN:I = 0x20

.field public static final CFG_GAME_AUDIO_SINGLE_COLOR_GREEN:I = 0x1c

.field public static final CFG_GAME_AUDIO_SINGLE_COLOR_PURPLE:I = 0x1f

.field public static final CFG_GAME_AUDIO_SINGLE_COLOR_RED:I = 0x1b

.field public static final CFG_GAME_AUDIO_SINGLE_COLOR_WHITE:I = 0x21

.field public static final CFG_GAME_AUDIO_SINGLE_COLOR_YELLOW:I = 0x1e

.field public static final CFG_GAME_AUDIO_SKYLINE:I = 0x19

.field public static final CFG_GAME_LED_FAST:I = 0x7

.field public static final CFG_GAME_LED_NORMAL:I = 0x6

.field public static final CFG_GAME_LED_SLOW:I = 0x5

.field public static final CFG_GAME_USER_DEFINED_PREVIEW:I = 0x3e

.field public static final CFG_GAME_USER_DEFINED_SAVE:I = 0x3f

.field public static final CFG_LED_AUDIO_SINGLE_DIRECTION:I = 0x36

.field public static final CFG_LED_BILLIARDS_FAST:I = 0x26

.field public static final CFG_LED_BILLIARDS_NORMAL:I = 0x27

.field public static final CFG_LED_BILLIARDS_SLOW:I = 0x28

.field public static final CFG_LED_BOOT_MODE:I = 0x37

.field public static final CFG_LED_CALL:I = 0x4

.field public static final CFG_LED_CHARGE_0_25PERCENT:I = 0x8

.field public static final CFG_LED_CHARGE_100PERCENT:I = 0xc

.field public static final CFG_LED_CHARGE_26_50PERCENT:I = 0x9

.field public static final CFG_LED_CHARGE_51_75PERCENT:I = 0xa

.field public static final CFG_LED_CHARGE_76_100PERCENT:I = 0xb

.field private static final CFG_LED_CHARGE_ARRAY:[I

.field public static final CFG_LED_COLOR_COLLISION:I = 0x29

.field public static final CFG_LED_COLOR_NUBIA_FLOW:I = 0x35

.field public static final CFG_LED_COMET:I = 0x2a

.field public static final CFG_LED_COMET_BACKCOLOR:I = 0x2b

.field public static final CFG_LED_FLOWER_FAST:I = 0x15

.field public static final CFG_LED_FLOWER_NORMAL:I = 0x14

.field public static final CFG_LED_FLOWER_SLOW:I = 0x13

.field public static final CFG_LED_MESSAGE:I = 0x2

.field public static final CFG_LED_NEWTON_BALL:I = 0x2c

.field public static final CFG_LED_NUBIA_INTER:I = 0x34

.field public static final CFG_LED_OFF:I = 0x0

.field public static final CFG_LED_ON:I = 0x1

.field public static final CFG_LED_RIBBON_FAST:I = 0x12

.field public static final CFG_LED_RIBBON_NORMAL:I = 0x11

.field public static final CFG_LED_RIBBON_SLOW:I = 0x10

.field public static final CFG_LED_SEESAW:I = 0x2d

.field public static final CFG_LED_SEESAW_BACKCOLOR:I = 0x2e

.field public static final CFG_LED_SKYLINE_FAST:I = 0xf

.field public static final CFG_LED_SKYLINE_NORMAL:I = 0xe

.field public static final CFG_LED_SKYLINE_SLOW:I = 0xd

.field public static final CFG_LED_SWING:I = 0x2f

.field public static final CFG_LED_SWING_BACKCOLOR:I = 0x30

.field public static final CFG_LED_TEST:I = 0x3

.field public static final CFG_LED_WATER_WAVE:I = 0x31

.field public static final CFG_LED_WATER_WAVE_BACKCOLOR:I = 0x32

.field public static final CFG_LED_WAVE_FAST:I = 0x18

.field public static final CFG_LED_WAVE_NORMAL:I = 0x17

.field public static final CFG_LED_WAVE_SLOW:I = 0x16

.field private static final CFG_MEDIA_LAMP_MODE_ARRAY:[I

.field public static final CFG_MEDIA_USER_DEFINED_SAVE:I = 0x3b

.field public static final CMD_REQUEST_ALARM:I = 0x67

.field public static final CMD_REQUEST_ALARM_DISTURB:I = 0x68

.field public static final CMD_REQUEST_CANCEL_FLASH:I = 0x6d

.field public static final CMD_REQUEST_CHARGING:I = 0x6c

.field public static final CMD_REQUEST_COMING_CALL:I = 0x65

.field public static final CMD_REQUEST_COMING_CALL_DISTURB:I = 0x66

.field public static final CMD_REQUEST_GAME_MODE:I = 0x69

.field public static final CMD_REQUEST_LAMP_ENABLE:I = 0x63

.field public static final CMD_REQUEST_MEDIA_MODE:I = 0x6a

.field public static final CMD_REQUEST_MISS_EVENT:I = 0x6b

.field public static final CMD_STATE_SCREEN_OFF:I = 0x0

.field public static final CMD_STATE_SCREEN_ON:I = 0x1

.field private static final DEBUG:Z

.field public static final LIGHT_PRIORITY_ALARM:I = 0x4

.field public static final LIGHT_PRIORITY_CALL:I = 0x5

.field public static final LIGHT_PRIORITY_CHARGING:I = 0x0

.field public static final LIGHT_PRIORITY_GAME:I = 0x3

.field public static final LIGHT_PRIORITY_IDLE:I = -0x1

.field public static final LIGHT_PRIORITY_MAX:I = 0xa

.field public static final LIGHT_PRIORITY_MEDIA:I = 0x2

.field public static final LIGHT_PRIORITY_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mLightLevel:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDefaultState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;

.field private final mScreenOffState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOffState;

.field private final mScreenOnState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;

.field private mService:Lcn/nubia/server/colorfullight/ColorfulLightService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-class v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    .line 13
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    .line 18
    const/4 v0, -0x1

    sput v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    .line 116
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->CFG_CALLING_MODE_ARRAY:[I

    .line 129
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->CFG_ALARM_MODE_ARRAY:[I

    .line 142
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->CFG_GAME_AUDIO_MODE_ARRAY:[I

    .line 154
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->CFG_MEDIA_LAMP_MODE_ARRAY:[I

    .line 167
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->CFG_LED_CHARGE_ARRAY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x34
        0x35
        0x29
        0x12
        0x27
        0x36
        0x23
        0x3d
        0x3e
    .end array-data

    :array_1
    .array-data 4
        0x34
        0x35
        0x29
        0x12
        0x27
        0x36
        0x23
        0x3c
        0x3e
    .end array-data

    :array_2
    .array-data 4
        0x34
        0x35
        0x29
        0x12
        0x27
        0x36
        0x23
        0x3f
        0x3e
    .end array-data

    :array_3
    .array-data 4
        0x34
        0x35
        0x29
        0x12
        0x27
        0x36
        0x23
        0x3b
        0x3e
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/colorfullight/ColorfulLightService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 180
    const-string v0, "ColorfulLightStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$1;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mDefaultState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;

    .line 176
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOffState;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOffState;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$1;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mScreenOffState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOffState;

    .line 177
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$1;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mScreenOnState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;

    .line 181
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 184
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mDefaultState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 185
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mScreenOffState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOffState;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mDefaultState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 186
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mScreenOnState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mDefaultState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 187
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mScreenOnState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 188
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->start()V

    .line 189
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 11
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleMediaMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 11
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleCharging(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 11
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleCancelFlash(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    .line 11
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleScreenOn()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    .line 11
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleMissEvent()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    .line 11
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleScreenOff()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 11
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleGameMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 11
    sget v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    .line 11
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleEnableLamp()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 11
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleComingCall(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    .line 11
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleComingCallDisturb()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 11
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleAlarm(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    .line 11
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->handleAlarmDisturb()V

    return-void
.end method

.method private handleAlarm(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 326
    sget v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    const/4 v1, 0x4

    if-lt v1, v0, :cond_3

    .line 327
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 328
    .local v0, "alarmMode":I
    const/4 v2, 0x6

    const/16 v3, 0x64

    if-le v0, v2, :cond_0

    if-ge v0, v3, :cond_0

    .line 329
    const/4 v0, 0x7

    .line 331
    :cond_0
    if-ne v0, v3, :cond_1

    .line 332
    const/16 v0, 0x8

    .line 334
    :cond_1
    sget-boolean v2, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 335
    sget-object v2, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorfulLight] handleAlarm: alarmMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    sget-object v3, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->CFG_ALARM_MODE_ARRAY:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->setColorfulLightState(I)V

    .line 338
    invoke-direct {p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 340
    .end local v0    # "alarmMode":I
    :cond_3
    return-void
.end method

.method private handleAlarmDisturb()V
    .locals 3

    .line 343
    sget v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    const/4 v1, 0x4

    if-lt v1, v0, :cond_1

    .line 344
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 345
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    const-string v2, "[ColorfulLight] handleAlarmDisturb"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->setColorfulLightState(I)V

    .line 348
    invoke-direct {p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 350
    :cond_1
    return-void
.end method

.method private handleCancelFlash(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 406
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 407
    .local v0, "priority":I
    sget v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    const/4 v2, -0x1

    const/16 v3, 0xa

    if-eq v0, v1, :cond_0

    if-eq v2, v0, :cond_0

    if-ne v3, v0, :cond_3

    .line 408
    :cond_0
    sget-boolean v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 409
    sget-object v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ColorfulLight] handleCancelFlash: priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->setColorfulLightState(I)V

    .line 412
    if-eq v3, v0, :cond_2

    sget v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    if-eq v3, v1, :cond_2

    .line 413
    invoke-direct {p0, v2}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 414
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkColorfulLightState()V

    goto :goto_0

    .line 415
    :cond_2
    sget v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    if-eq v3, v1, :cond_3

    .line 416
    invoke-direct {p0, v3}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 419
    :cond_3
    :goto_0
    return-void
.end method

.method private handleCharging(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 395
    sget v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    if-gtz v0, :cond_2

    .line 396
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 397
    .local v0, "level":I
    sget-boolean v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 398
    sget-object v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ColorfulLight] handleCharging: level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    sget-object v2, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->CFG_LED_CHARGE_ARRAY:[I

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    move v4, v3

    nop

    :cond_1
    aget v2, v2, v4

    invoke-virtual {v1, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->setColorfulLightState(I)V

    .line 401
    invoke-direct {p0, v3}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 403
    .end local v0    # "level":I
    :cond_2
    return-void
.end method

.method private handleComingCall(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 299
    sget v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    const/4 v1, 0x5

    if-lt v1, v0, :cond_3

    .line 300
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 301
    .local v0, "callingMode":I
    const/4 v2, 0x6

    const/16 v3, 0x64

    if-le v0, v2, :cond_0

    if-ge v0, v3, :cond_0

    .line 302
    const/4 v0, 0x7

    .line 304
    :cond_0
    if-ne v0, v3, :cond_1

    .line 305
    const/16 v0, 0x8

    .line 307
    :cond_1
    sget-boolean v2, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 308
    sget-object v2, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorfulLight] handleComingCall: callingMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    sget-object v3, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->CFG_CALLING_MODE_ARRAY:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->setColorfulLightState(I)V

    .line 311
    invoke-direct {p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 313
    .end local v0    # "callingMode":I
    :cond_3
    return-void
.end method

.method private handleComingCallDisturb()V
    .locals 3

    .line 316
    sget v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    const/4 v1, 0x5

    if-lt v1, v0, :cond_1

    .line 317
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    const-string v2, "[ColorfulLight] handleComingCallDisturb"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->setColorfulLightState(I)V

    .line 321
    invoke-direct {p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 323
    :cond_1
    return-void
.end method

.method private handleEnableLamp()V
    .locals 2

    .line 277
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "[ColorfulLight] handleEnableLamp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 281
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkColorfulLightState()V

    .line 282
    return-void
.end method

.method private handleGameMode(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 353
    sget v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    const/4 v1, 0x3

    if-lt v1, v0, :cond_3

    .line 354
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 355
    .local v0, "lampMode":I
    const/4 v2, 0x6

    const/16 v3, 0x64

    if-le v0, v2, :cond_0

    if-ge v0, v3, :cond_0

    .line 356
    const/4 v0, 0x7

    .line 358
    :cond_0
    if-ne v0, v3, :cond_1

    .line 359
    const/16 v0, 0x8

    .line 361
    :cond_1
    sget-boolean v2, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 362
    sget-object v2, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorfulLight] handleGameMode: lampMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    sget-object v3, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->CFG_GAME_AUDIO_MODE_ARRAY:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->setColorfulLightState(I)V

    .line 365
    invoke-direct {p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 367
    .end local v0    # "lampMode":I
    :cond_3
    return-void
.end method

.method private handleMediaMode(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 370
    sget v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    const/4 v1, 0x2

    if-lt v1, v0, :cond_2

    .line 371
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 372
    .local v0, "mediaMode":I
    const/4 v2, 0x6

    const/16 v3, 0x64

    if-le v0, v2, :cond_0

    if-ge v0, v3, :cond_0

    .line 373
    const/4 v0, 0x7

    .line 375
    :cond_0
    if-ne v0, v3, :cond_1

    .line 376
    const/16 v0, 0x8

    .line 378
    :cond_1
    sget-object v2, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorfulLight] handleMediaMode: lampMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    sget-object v3, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->CFG_MEDIA_LAMP_MODE_ARRAY:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->setColorfulLightState(I)V

    .line 380
    invoke-direct {p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 382
    .end local v0    # "mediaMode":I
    :cond_2
    return-void
.end method

.method private handleMissEvent()V
    .locals 3

    .line 385
    sget v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    const/4 v1, 0x1

    if-lt v1, v0, :cond_1

    .line 386
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 387
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    const-string v2, "[ColorfulLight] handleMissEvent"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mService:Lcn/nubia/server/colorfullight/ColorfulLightService;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->setColorfulLightState(I)V

    .line 390
    invoke-direct {p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->setLightLevel(I)V

    .line 392
    :cond_1
    return-void
.end method

.method private handleScreenOff()V
    .locals 2

    .line 285
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "[ColorfulLight] handleScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mScreenOffState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOffState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 289
    return-void
.end method

.method private handleScreenOn()V
    .locals 2

    .line 292
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->TAG:Ljava/lang/String;

    const-string v1, "[ColorfulLight] handleScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mScreenOnState:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine$ScreenOnState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 296
    return-void
.end method

.method private setLightLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 422
    sput p1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    .line 423
    return-void
.end method


# virtual methods
.method dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLightLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method getLightLevel()I
    .locals 1

    .line 426
    sget v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->mLightLevel:I

    return v0
.end method
