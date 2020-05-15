.class public final Lcn/nubia/server/colorfullight/ColorfulLightService;
.super Lcn/nubia/server/NubiaSystemService;
.source "ColorfulLightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;,
        Lcn/nubia/server/colorfullight/ColorfulLightService$BinderService;,
        Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;,
        Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_ALARM_ALERT:Ljava/lang/String; = "com.nubia.deskclock.ALARM_ALERT"

.field private static final ACTION_ALARM_DISMISS:Ljava/lang/String; = "com.nubia.deskclock.ALARM_DISMISS"

.field private static final ACTION_ALARM_DONE:Ljava/lang/String; = "com.nubia.deskclock.ALARM_DONE"

.field private static final ACTION_ALARM_MISS:Ljava/lang/String; = "com.nubia.deskclock.ALARM_MISS"

.field private static final ACTION_ALARM_SNOOZE:Ljava/lang/String; = "com.nubia.deskclock.ALARM_SNOOZE"

.field private static final ACTION_ALARM_SNOOZE_TOUI:Ljava/lang/String; = "com.nubia.deskclock.ALARM_TOUI_SNOOZE"

.field private static final ACTION_ALARM_TOUI_DISMISS:Ljava/lang/String; = "com.nubia.deskclock.ALARM_TOUI_DISMISS"

.field private static final DEBUG:Z

.field private static final END_MEDIA_LAMP:I = 0x66

.field private static final KEYGUARD_ON:I = 0x69

.field private static final MSG_KEYGUARY_ON:I = 0x2

.field private static final MSG_SCREEN_OFF:I = 0x0

.field private static final MSG_SCREEN_ON:I = 0x1

.field private static final MSG_SET_LIGHT:I = 0x4

.field private static final PREFIX_PATH:Ljava/lang/String;

.field private static final SCREEN_OFF:I = 0x67

.field private static final SCREEN_ON:I = 0x68

.field private static final SERVICE_NAME:Ljava/lang/String; = "nubia.colorfullight"

.field private static final SHUT_DOWN:I = 0x64

.field private static final START_MEDIA_LAMP:I = 0x65

.field private static final TAG:Ljava/lang/String;

.field private static final TARGET_DIRECTORY:Ljava/lang/String; = "multicolor_led"

.field private static final USER_DIFINED_PRVIEW:I = 0x6a

.field private static final USER_DIFINED_PRVIEW_CANCLE:I = 0x6b

.field private static final mIsColorNewSolution:Z


# instance fields
.field private mAlarmAlertState:Z

.field private mBatteryManager:Landroid/os/BatteryManagerInternal;

.field private mColorfulLight:Lcn/nubia/server/colorfullight/ColorfulLight;

.field private mColorfulLightThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mInit:Z

.field private mLastFlashMode:I

.field private mMainHandler:Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

.field private mMissEventObserver:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

.field private mPhoneStateListener:Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;

.field private mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

.field private mShutDown:Z

.field private mStateMachine:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

.field private mSystemReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-class v0, Lcn/nubia/server/colorfullight/ColorfulLightService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    .line 39
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->DEBUG:Z

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "multicolor_led"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->PREFIX_PATH:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_colorfullight_feature"

    const-string/jumbo v2, "support_new_lamp_mode"

    .line 55
    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mIsColorNewSolution:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mShutDown:Z

    .line 59
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mInit:Z

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mLastFlashMode:I

    .line 62
    iput-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mAlarmAlertState:Z

    .line 150
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/colorfullight/ColorfulLightService$1;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightService;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iput-object p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ColorfulLightService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mColorfulLightThread:Landroid/os/HandlerThread;

    .line 91
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mColorfulLightThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mColorfulLightThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMainHandler:Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    .line 93
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLight;

    invoke-direct {v0}, Lcn/nubia/server/colorfullight/ColorfulLight;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mColorfulLight:Lcn/nubia/server/colorfullight/ColorfulLight;

    .line 95
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->createColorfulLightDataDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    const-string v1, "[ColorfulLight] Create ColorfulLight data directory failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/colorfullight/ColorfulLightService;)Lcn/nubia/server/colorfullight/ColorfulLight;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 37
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mColorfulLight:Lcn/nubia/server/colorfullight/ColorfulLight;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/colorfullight/ColorfulLightService;)Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 37
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMainHandler:Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/server/colorfullight/ColorfulLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 37
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->isCallSwitchEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcn/nubia/server/colorfullight/ColorfulLightService;I)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->requestColorfulLightInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->PREFIX_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/server/colorfullight/ColorfulLightService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 37
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/server/colorfullight/ColorfulLightService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/colorfullight/ColorfulLightService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 37
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->cancleChargingFlash()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/colorfullight/ColorfulLightService;)Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 37
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMissEventObserver:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    return-object v0
.end method

.method static synthetic access$602(Lcn/nubia/server/colorfullight/ColorfulLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mAlarmAlertState:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/server/colorfullight/ColorfulLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 37
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->isAlarmSwitchEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/server/colorfullight/ColorfulLightService;)Lcn/nubia/server/colorfullight/ColorfulLightSettings;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/colorfullight/ColorfulLightService;

    .line 37
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    return-object v0
.end method

.method private cancleChargingFlash()V
    .locals 3

    .line 330
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const/16 v0, 0x6d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 334
    :cond_0
    return-void
.end method

.method private createColorfulLightDataDirectory()Z
    .locals 3

    .line 431
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/server/colorfullight/ColorfulLightService;->PREFIX_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "ledDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    goto :goto_0

    .line 436
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 439
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 337
    const-string v0, "COLORFULlIGHT MANAGER (dumpsys nubia.colorfullight)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mInit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCallState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mPhoneStateListener:Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;

    invoke-static {v1}, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->access$900(Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPlugged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mBatteryManager:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBatteryLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mBatteryManager:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastFlashMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mLastFlashMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 346
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 348
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 349
    const-string v1, "The settings of ColorfulLight: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-virtual {v1, v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 351
    const-string v1, "The MissEvent of ColorfulLight: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMissEventObserver:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    invoke-virtual {v1, v0}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 353
    const-string v1, "The StateMachine of ColorfulLight: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mStateMachine:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-virtual {v1, v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 355
    return-void
.end method

.method private init()V
    .locals 10

    .line 118
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mBatteryManager:Landroid/os/BatteryManagerInternal;

    .line 119
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/colorfullight/ColorfulLightService;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mStateMachine:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    .line 120
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mColorfulLightThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;-><init>(Landroid/content/Context;Lcn/nubia/server/colorfullight/ColorfulLightService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    .line 121
    const-string/jumbo v0, "notification"

    .line 122
    invoke-virtual {p0, v0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 123
    .local v0, "notificationManager":Landroid/app/INotificationManager;
    new-instance v1, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;-><init>(Landroid/content/Context;Lcn/nubia/server/colorfullight/ColorfulLightService;Landroid/app/INotificationManager;)V

    iput-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMissEventObserver:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    .line 124
    new-instance v1, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightService;Lcn/nubia/server/colorfullight/ColorfulLightService$1;)V

    iput-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mPhoneStateListener:Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;

    .line 125
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 127
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mPhoneStateListener:Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 129
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    sget-boolean v4, Lcn/nubia/server/colorfullight/ColorfulLightService;->mIsColorNewSolution:Z

    if-eqz v4, :cond_0

    .line 133
    const-string v4, "com.nubia.deskclock.ALARM_ALERT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v4, "com.nubia.deskclock.ALARM_SNOOZE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v4, "com.nubia.deskclock.ALARM_DISMISS"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v4, "com.nubia.deskclock.ALARM_TOUI_DISMISS"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v4, "com.nubia.deskclock.ALARM_DONE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v4, "com.nubia.deskclock.ALARM_TOUI_SNOOZE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v4, "com.nubia.deskclock.ALARM_MISS"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v4, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMainHandler:Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 143
    const/16 v4, 0x6d

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkColorfulLightState()V

    .line 147
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mInit:Z

    .line 148
    return-void
.end method

.method private isAlarmSwitchEnable()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->isAlarmSwitchEnable()Z

    move-result v0

    return v0
.end method

.method private isBootSwitchEnable()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->isBootSwitchEnable()Z

    move-result v0

    return v0
.end method

.method private isCallSwitchEnable()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->isCallSwitchEnable()Z

    move-result v0

    return v0
.end method

.method private isChargeSwitchEnable()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->isChargeSwitchEnable()Z

    move-result v0

    return v0
.end method

.method private isUserDefinedMode(I)Z
    .locals 1
    .param p1, "flashMode"    # I

    .line 273
    const/16 v0, 0x3b

    if-eq v0, p1, :cond_1

    const/16 v0, 0x3c

    if-eq v0, p1, :cond_1

    const/16 v0, 0x3d

    if-eq v0, p1, :cond_1

    const/16 v0, 0x3f

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private requestColorfulLightInternal(I)Z
    .locals 6
    .param p1, "known"    # I

    .line 358
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mShutDown:Z

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    const-string v1, "[ColorfulLight] reject all request because of the service not initial or shutdown!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1
    const/4 v0, 0x0

    .line 363
    .local v0, "result":Z
    sget-boolean v1, Lcn/nubia/server/colorfullight/ColorfulLightService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 364
    sget-object v1, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ColorfulLight] requestColorfulLightInternal: known="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2
    const-wide/16 v1, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 422
    sget-object v1, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ColorfulLight] Unknown request type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    goto :goto_1

    .line 404
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0x6d

    if-ne v2, v1, :cond_3

    .line 405
    invoke-virtual {p0, v3, v2, v5, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    const/4 v2, 0x5

    if-ne v2, v1, :cond_4

    .line 408
    invoke-virtual {p0, v3, v2, v5, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_5

    .line 411
    invoke-virtual {p0, v3, v2, v5, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    goto :goto_0

    .line 413
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v1

    const/4 v2, 0x4

    if-ne v2, v1, :cond_6

    .line 414
    invoke-virtual {p0, v3, v2, v5, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 417
    :cond_6
    :goto_0
    const/4 v0, 0x1

    .line 418
    goto :goto_1

    .line 399
    :pswitch_1
    const/16 v1, 0x69

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v5, v4}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 400
    const/4 v0, 0x1

    .line 401
    goto :goto_1

    .line 387
    :pswitch_2
    const/4 v0, 0x1

    .line 388
    goto :goto_1

    .line 380
    :pswitch_3
    invoke-virtual {p0, v3}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(I)V

    .line 381
    iget-object v4, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMainHandler:Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    invoke-virtual {v4, v3, v1, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 382
    const/4 v0, 0x1

    .line 383
    goto :goto_1

    .line 374
    :pswitch_4
    invoke-virtual {p0, v5}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(I)V

    .line 375
    iget-object v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMainHandler:Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    invoke-virtual {v3, v5, v1, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 376
    const/4 v0, 0x1

    .line 377
    goto :goto_1

    .line 395
    :pswitch_5
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->noteEndMedia()Z

    move-result v0

    .line 396
    goto :goto_1

    .line 391
    :pswitch_6
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-virtual {v1}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->noteStartMedia()Z

    move-result v0

    .line 392
    goto :goto_1

    .line 369
    :pswitch_7
    iput-boolean v3, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mShutDown:Z

    .line 370
    const/4 v0, 0x1

    .line 371
    nop

    .line 427
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method checkBatteryState()V
    .locals 6

    .line 311
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] checkBatteryState: isChargeSwitchEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->isChargeSwitchEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", LightLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->getLightLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->isChargeSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mBatteryManager:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v0

    .line 318
    .local v0, "plugged":I
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mBatteryManager:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    .line 319
    .local v1, "level":I
    sget-object v2, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorfulLight] plugged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-lez v0, :cond_1

    if-ltz v1, :cond_1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_1

    .line 321
    const/16 v2, 0x6c

    div-int/lit8 v3, v1, 0x19

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 323
    return-void

    .line 326
    .end local v0    # "plugged":I
    .end local v1    # "level":I
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->cancleChargingFlash()V

    .line 327
    return-void
.end method

.method checkColorfulLightState()V
    .locals 0

    .line 236
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkSettingsState()V

    .line 237
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkMissEventState()V

    .line 238
    invoke-virtual {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->checkBatteryState()V

    .line 239
    return-void
.end method

.method checkMissEventState()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMissEventObserver:Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightMissEventObserver;->checkMissEventState()V

    .line 308
    return-void
.end method

.method checkSettingsState()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->checkSettingsState()V

    .line 304
    return-void
.end method

.method getLightLevel()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mStateMachine:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->getLightLevel()I

    move-result v0

    return v0
.end method

.method getPhoneState()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mPhoneStateListener:Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;->access$900(Lcn/nubia/server/colorfullight/ColorfulLightService$ColorfulLightPhoneStateListener;)I

    move-result v0

    return v0
.end method

.method public getServiceBinder()Landroid/os/IBinder;
    .locals 2

    .line 114
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/colorfullight/ColorfulLightService$BinderService;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightService;Lcn/nubia/server/colorfullight/ColorfulLightService$1;)V

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 102
    const-string/jumbo v0, "nubia.colorfullight"

    return-object v0
.end method

.method isAlarmAlertState()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mAlarmAlertState:Z

    return v0
.end method

.method isNotifySwitchEnable()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mSettingsObserver:Lcn/nubia/server/colorfullight/ColorfulLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/colorfullight/ColorfulLightSettings;->isNotifySwitchEnable()Z

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 107
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcn/nubia/server/colorfullight/ColorfulLightService;->init()V

    .line 110
    :cond_0
    return-void
.end method

.method sendRequestToStateMachine(I)V
    .locals 3
    .param p1, "what"    # I

    .line 242
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService;->sendRequestToStateMachine(IIILjava/lang/Object;)V

    .line 243
    return-void
.end method

.method sendRequestToStateMachine(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 246
    sget-boolean v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] sendRequestToStateMachine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mStateMachine:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-virtual {v0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 251
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 252
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 253
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mStateMachine:Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;

    invoke-virtual {v1, v0}, Lcn/nubia/server/colorfullight/ColorfulLightStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 255
    return-void
.end method

.method setColorfulLightState(I)V
    .locals 3
    .param p1, "flashMode"    # I

    .line 258
    iget-object v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMainHandler:Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    invoke-static {v0}, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->access$1000(Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mLastFlashMode:I

    if-ne v0, p1, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightService;->isUserDefinedMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lcn/nubia/server/colorfullight/ColorfulLightService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ColorfulLight] setColorfulLightState: repeated process! isProcessing()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMainHandler:Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    .line 261
    invoke-static {v2}, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->access$1000(Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", flashMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_0
    iput p1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mLastFlashMode:I

    .line 266
    new-instance v0, Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;-><init>(Lcn/nubia/server/colorfullight/ColorfulLightService;I)V

    .line 267
    .local v0, "data":Lcn/nubia/server/colorfullight/ColorfulLightService$MsgData;
    iget-object v1, p0, Lcn/nubia/server/colorfullight/ColorfulLightService;->mMainHandler:Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/nubia/server/colorfullight/ColorfulLightService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 268
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void
.end method
