.class public Lcn/nubia/server/appmgmt/game/GameFanCtrl;
.super Ljava/lang/Object;
.source "GameFanCtrl.java"


# static fields
.field private static final DB_SWITCH_FAN_AUTO_MODE:Ljava/lang/String; = "game_fan_auto"

.field private static final DB_SWITCH_FAN_OFF_ON:Ljava/lang/String; = "game_fan_off_on"

.field private static final DB_SWITCH_FAN_SPEED:Ljava/lang/String; = "game_fan_speed"

.field private static DEBUG:Z = false

.field private static final FAN_AUTO_FAN_PRIORITY:Ljava/lang/String; = "persist.sys.fan.thermal_auto"

.field private static final PATH_FAN_SPEED:Ljava/lang/String; = "sys/kernel/fan/fan_speed_level"

.field private static final PATH_FAN_SWITCH:Ljava/lang/String; = "sys/kernel/fan/fan_enable"

.field private static final TAG:Ljava/lang/String; = "GameFanCtrl"


# instance fields
.field private gameKeysLastVaule:I

.field private gameKeysVaule:I

.field private isAuto:Z

.field private mContext:Landroid/content/Context;

.field private mFanAutoObserver:Landroid/database/ContentObserver;

.field private mFanSpeedObserver:Landroid/database/ContentObserver;

.field private mFanSwitchObserver:Landroid/database/ContentObserver;

.field private mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

.field private mGamekeysObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsSupportGameFan:Z

.field private mIsSupportGameKeys:Z

.field private mWriteGameFanSpeedFromModeRunnable:Ljava/lang/Runnable;

.field private mWriteGameFanSpeedRunnable:Ljava/lang/Runnable;

.field private mWriteGameFanSwitchRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->gameKeysVaule:I

    .line 48
    iput v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->gameKeysLastVaule:I

    .line 52
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mIsSupportGameKeys:Z

    .line 53
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mIsSupportGameFan:Z

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->isAuto:Z

    .line 151
    new-instance v2, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl$5;-><init>(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSwitchRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v2, Lcn/nubia/server/appmgmt/game/GameFanCtrl$6;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl$6;-><init>(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSpeedRunnable:Ljava/lang/Runnable;

    .line 210
    new-instance v2, Lcn/nubia/server/appmgmt/game/GameFanCtrl$7;

    invoke-direct {v2, p0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl$7;-><init>(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSpeedFromModeRunnable:Ljava/lang/Runnable;

    .line 64
    invoke-static {}, Lcn/nubia/game/GameModeHelper;->IsSupportGameKeys()Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mIsSupportGameKeys:Z

    .line 65
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mIsSupportGameKeys:Z

    if-nez v2, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    const-string v2, "1"

    const-string/jumbo v3, "ro.nubia.fan.support"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mIsSupportGameFan:Z

    .line 70
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mIsSupportGameFan:Z

    if-nez v2, :cond_1

    .line 71
    return-void

    .line 74
    :cond_1
    iput-object p2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

    .line 77
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/nubia/game/GameKeysHelper;->getGameKeysDBValue(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->gameKeysLastVaule:I

    .line 78
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "game_fan_auto"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_2

    move v0, v1

    nop

    :cond_2
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->isAuto:Z

    .line 79
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl$1;-><init>(Lcn/nubia/server/appmgmt/game/GameFanCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mGamekeysObserver:Landroid/database/ContentObserver;

    .line 91
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$2;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl$2;-><init>(Lcn/nubia/server/appmgmt/game/GameFanCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mFanSwitchObserver:Landroid/database/ContentObserver;

    .line 99
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$3;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl$3;-><init>(Lcn/nubia/server/appmgmt/game/GameFanCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mFanAutoObserver:Landroid/database/ContentObserver;

    .line 113
    new-instance v0, Lcn/nubia/server/appmgmt/game/GameFanCtrl$4;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/game/GameFanCtrl$4;-><init>(Lcn/nubia/server/appmgmt/game/GameFanCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mFanSpeedObserver:Landroid/database/ContentObserver;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->registerSettingsObserver(Landroid/content/ContentResolver;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 31
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->gameKeysVaule:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/game/GameFanCtrl;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;
    .param p1, "x1"    # I

    .line 31
    iput p1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->gameKeysVaule:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Lcn/nubia/game/GameKeysHelper;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mGameKeysHelper:Lcn/nubia/game/GameKeysHelper;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 31
    iget v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->gameKeysLastVaule:I

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/server/appmgmt/game/GameFanCtrl;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;
    .param p1, "x1"    # I

    .line 31
    iput p1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->gameKeysLastVaule:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 31
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->updateGameFanSwitch()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 31
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->isAuto:Z

    return v0
.end method

.method static synthetic access$602(Lcn/nubia/server/appmgmt/game/GameFanCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->isAuto:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 31
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->updateGameFanSpeedFromMode()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 31
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->getFanSpeed()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/game/GameFanCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/GameFanCtrl;

    .line 31
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->updateGameFanSpeed()V

    return-void
.end method

.method private getFanSpeed()I
    .locals 3

    .line 197
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_fan_speed"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method private registerSettingsObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 225
    const-string/jumbo v0, "nubia_db_game_keys"

    .line 226
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mGamekeysObserver:Landroid/database/ContentObserver;

    .line 225
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    const-string v0, "game_fan_off_on"

    .line 229
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mFanSwitchObserver:Landroid/database/ContentObserver;

    .line 228
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    const-string v0, "game_fan_auto"

    .line 232
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mFanAutoObserver:Landroid/database/ContentObserver;

    .line 231
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    const-string v0, "game_fan_speed"

    .line 235
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mFanSpeedObserver:Landroid/database/ContentObserver;

    .line 234
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    return-void
.end method

.method private updateGameFanSpeed()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSpeedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 179
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameFanCtrl"

    const-string/jumbo v1, "mWriteGameFanSpeedRunnable removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSpeedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSpeedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method private updateGameFanSpeedFromMode()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSpeedFromModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSpeedFromModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSpeedFromModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method private updateGameFanSwitch()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSwitchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 145
    sget-boolean v0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GameFanCtrl"

    const-string/jumbo v1, "mWriteGameFanSwitchRunnable removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSwitchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->mWriteGameFanSwitchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method


# virtual methods
.method public IsGameKeysOpened(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 140
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeNodeValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "outfileName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 128
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GameFanCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeNodeValue outfileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 131
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v1, 0x1

    return v1

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/GameFanCtrl;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
