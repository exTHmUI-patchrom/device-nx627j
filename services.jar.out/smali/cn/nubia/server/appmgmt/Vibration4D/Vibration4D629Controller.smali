.class public Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
.super Ljava/lang/Object;
.source "Vibration4D629Controller.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$WindowInputEventReceiver;,
        Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;,
        Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$NotePausingActivityRunnable;,
        Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$NoteRemovingProcessRunnable;
    }
.end annotation


# static fields
.field private static final AW_4D_PROPERTY:Ljava/lang/String; = "audio.awinic.haptic.support"

.field private static final AW_4D_VIBRATE_CLOSE:I = 0x0

.field private static final AW_4D_VIBRATE_OPEN:I = 0x1

.field private static DEBUG:Z = false

.field private static final GAME_KEY_CLOSE:I = 0x0

.field private static final GAME_KEY_OPEN:I = 0x1

.field private static final SETTING_GAME_4D_SWITCH:Ljava/lang/String; = "nubia_4d_shocks"

.field private static final TAG:Ljava/lang/String; = "Vibration4DService"


# instance fields
.field private m4DPackageName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAction:Ljava/lang/String;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAudio4DPackageName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentPackageName:Ljava/lang/String;

.field private final mGame4DSwitchChangeObserver:Landroid/database/ContentObserver;

.field private mGameKeyNodeFile:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mInputEventReceiver:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$WindowInputEventReceiver;

.field private mIsOpen4DNode:Z

.field private mIsTouchNodeFile:Ljava/io/File;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThread:Landroid/os/HandlerThread;

.field private stateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 408
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "Vibration4DService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mCurrentPackageName:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mIsOpen4DNode:Z

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "sys/class/leds/vibrator_aw8695/touch_enable"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mIsTouchNodeFile:Ljava/io/File;

    .line 63
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "sys/devices/platform/soc/soc:gpio_keys/GamekeyStatus"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mGameKeyNodeFile:Ljava/io/File;

    .line 488
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$1;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mGame4DSwitchChangeObserver:Landroid/database/ContentObserver;

    .line 500
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$2;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 514
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$3;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->stateListener:Landroid/telephony/PhoneStateListener;

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Vibration4DControllerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudioManager:Landroid/media/AudioManager;

    .line 75
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 76
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mActivityManager:Landroid/app/IActivityManager;

    .line 78
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->resetGame4DSwitchChangeObserver()V

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->loadPackageName()V

    .line 87
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 88
    .local v1, "im":Landroid/hardware/input/InputManager;
    new-instance v2, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$WindowInputEventReceiver;

    const-string v3, "Vibration4DController"

    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager;->myInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$WindowInputEventReceiver;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mInputEventReceiver:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$WindowInputEventReceiver;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->gspacePkg2RealPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    .line 42
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    .line 42
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    .line 42
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->stateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Landroid/view/InputEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p1, "x1"    # Landroid/view/InputEvent;

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->dispatchEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->close4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isMicWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->closeMicIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->openAudioNodeIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->open4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->openMicIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    .line 42
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isCurrent4DPkg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;

    .line 42
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->getCurrentPkg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private close4DVibration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 313
    sget-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "Vibration4DService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] aw 4DVibration close, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "game_name=none"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "is_vibrate_on=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mIsOpen4DNode:Z

    .line 320
    return-void
.end method

.method private close4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 300
    if-eqz p1, :cond_0

    const-string v0, "com.excean.gspace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->close4DVibration(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void

    .line 307
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->close4DVibration(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_1
    return-void
.end method

.method private closeAudioNodeIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 352
    move-object v0, p1

    .line 353
    .local v0, "tmpPackageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    sget-boolean v1, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "Vibration4DService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] aw AudioNode close, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "game_name=none"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 359
    :cond_1
    return-void
.end method

.method private closeIsTouchNode()V
    .locals 3

    .line 586
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mIsTouchNodeFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 587
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :try_start_2
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 590
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 588
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 586
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 588
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Vibration4DService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private closeMicIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 229
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isMicWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    sget-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "Vibration4DService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] aw Mic close, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "enter_game=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 235
    :cond_1
    return-void
.end method

.method private dispatchEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 549
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mIsOpen4DNode:Z

    if-nez v0, :cond_0

    .line 550
    return-void

    .line 552
    :cond_0
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 553
    .local v0, "isMotionEvent":Z
    if-nez v0, :cond_1

    .line 554
    return-void

    .line 557
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 559
    .local v1, "action":I
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isDownAction(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 560
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->openIsTouchNode()V

    .line 561
    const-string v2, "Vibration4DService"

    const-string v3, "It\'s down action."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :cond_2
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isUpAction(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 563
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->closeIsTouchNode()V

    .line 564
    const-string v2, "Vibration4DService"

    const-string v3, "It\'s up action."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_3
    :goto_0
    return-void
.end method

.method private getAudio4DPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 256
    const-string v1, "Vibration4DService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] getAudio4DPackageName failed, packageName = null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-object v0

    .line 259
    :cond_0
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 263
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 264
    .local v1, "index":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 265
    const-string v2, "Vibration4DService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] aw getAudio4DPackageName failed, index = null, packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-object v0

    .line 268
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_3

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 269
    :cond_4
    :goto_0
    const-string v2, "Vibration4DService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] aw getAudio4DPackageName failed, index < 0 or index > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-object v0
.end method

.method private getCurrentPkg()Ljava/lang/String;
    .locals 5

    .line 449
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mActivityManager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFocusedStackResumedPkg()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "Vibration4DService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPkg pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->gspacePkg2RealPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 453
    .end local v1    # "pkg":Ljava/lang/String;
    .local v0, "pkg":Ljava/lang/String;
    return-object v0

    .line 455
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    const-string v1, "Vibration4DService"

    const-string v2, "getCurrentPkg failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    return-object v0

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Vibration4DService"

    const-string v3, "getCurrentPkg error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-object v0
.end method

.method private getResumedActivityIntentAction()Ljava/lang/String;
    .locals 4

    .line 465
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mActivityManager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFocusedStackResumedIntentAction()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 468
    .local v0, "action":Ljava/lang/String;
    return-object v0

    .line 470
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string v1, "Vibration4DService"

    const-string v2, "getResumedActivityIntentAction failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    return-object v0

    .line 472
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Vibration4DService"

    const-string v3, "getResumedActivityIntentAction error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-object v0
.end method

.method private gspacePkg2RealPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 323
    if-eqz p1, :cond_1

    const-string v0, "com.excean.gspace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->getResumedActivityIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    .local v2, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 327
    const-string v1, "Vibration4DService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPkg gspacePkg2RealPkg pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-object v2

    .line 330
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 333
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private isCurrent4DPkg()Z
    .locals 7

    .line 374
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_4d_shocks"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "game4DSwitchs":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 376
    const-string v2, "Vibration4DService"

    const-string v3, "aw can not get 4D switch value!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v1

    .line 380
    :cond_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 381
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->getCurrentPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 382
    const-string v1, "Vibration4DService"

    const-string/jumbo v2, "isCurrent4DPkg return true"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v1, 0x1

    return v1

    .line 380
    .end local v5    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    :cond_2
    return v1
.end method

.method private isDownAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 569
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMicWhiteListApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 239
    :cond_0
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    const-string v1, "com.tencent.tmgp.sgame"

    .line 240
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.tencent.tmgp.speedmobile"

    .line 241
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.tencent.tmgp.cf"

    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.tencent.tmgp.pubgm"

    .line 243
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.tencent.ig"

    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 247
    :cond_1
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.netease.zjz"

    .line 248
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 251
    :cond_2
    return v0

    .line 249
    :cond_3
    :goto_0
    return v2

    .line 245
    :cond_4
    :goto_1
    return v2
.end method

.method private isOpen4DSwitchByUser()Z
    .locals 1

    .line 362
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isOpenGameSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isCurrent4DPkg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOpenGameSwitch()Z
    .locals 3

    .line 366
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->readGameKeyStatus()I

    move-result v0

    .line 367
    .local v0, "gameSwitch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 368
    const-string v1, "Vibration4DService"

    const-string v2, "aw can not get game switch value!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUpAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 573
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWhiteListApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 390
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 391
    return v0

    .line 393
    :cond_0
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 394
    return v2

    .line 396
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    return v2

    .line 399
    :cond_2
    return v0
.end method

.method private loadPackageName()V
    .locals 7

    .line 92
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    const-string v5, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    const-string v5, "com.netease.hyxd.X"

    invoke-virtual {v0, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    const-string v5, "com.gameloft.android.ANMP.GloftA9HM"

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    const-string v5, "com.tencent.tmgp.speedmobile"

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v5, "com.tencent.tmgp.pubgmhd"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v5, "com.tencent.ig"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v5, "com.pubg.krmobile"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v5, "com.tencent.iglite"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v4, "com.netease.hyxd"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v4, "com.netease.ko"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v4, "com.netease.rs"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v3, "com.gameloft.android.ANMP.GloftA9HM"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v2, "com.tencent.tmgp.speedmobile"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    return-void
.end method

.method private open4DVibration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 290
    sget-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "Vibration4DService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] aw 4DVibration open, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "is_vibrate_on=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mIsOpen4DNode:Z

    .line 297
    return-void
.end method

.method private open4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 277
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->gspacePkg2RealPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isOpen4DSwitchByUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const-string/jumbo v0, "open4DVibrationIfNeed"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->getAudio4DPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "tmpPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    invoke-direct {p0, v0, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->open4DVibration(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .end local v0    # "tmpPackageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private openAudioNodeIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 338
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    const-string/jumbo v0, "openAudioNodeIfNeed"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->getAudio4DPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "tmpPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 341
    return-void

    .line 344
    :cond_0
    sget-boolean v1, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 345
    const-string v1, "Vibration4DService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] aw AudioNode open, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";tmpPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "game_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 349
    .end local v0    # "tmpPackageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private openIsTouchNode()V
    .locals 3

    .line 577
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mIsTouchNodeFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 578
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    :try_start_2
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 581
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 579
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 577
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Vibration4DService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private openMicIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 220
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isMicWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    sget-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "Vibration4DService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] aw Mic open, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "enter_game=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 226
    :cond_1
    return-void
.end method

.method private readGameKeyStatus()I
    .locals 5

    .line 403
    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mGameKeyNodeFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 404
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 406
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :try_start_2
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 406
    return v4

    .line 408
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 411
    .end local v1    # "br":Ljava/io/BufferedReader;
    nop

    .line 412
    return v0

    .line 408
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 403
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 408
    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Vibration4DService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    return v0
.end method

.method private resetGame4DSwitchChangeObserver()V
    .locals 4

    .line 479
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mGame4DSwitchChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 482
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_4d_shocks"

    .line 483
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mGame4DSwitchChangeObserver:Landroid/database/ContentObserver;

    .line 482
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 485
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mGame4DSwitchChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 486
    return-void
.end method


# virtual methods
.method public change4DNode(Z)V
    .locals 5
    .param p1, "isOpen"    # Z

    .line 428
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->isOpenGameSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    sget-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 430
    const-string v0, "Vibration4DService"

    const-string v1, "change4DNode : not open game switch."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    return-void

    .line 435
    :cond_1
    if-eqz p1, :cond_3

    .line 436
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->getCurrentPkg()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "currentPkg":Ljava/lang/String;
    const-string v1, "change4DNode"

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->getAudio4DPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "tmpPackageName":Ljava/lang/String;
    sget-boolean v2, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 439
    const-string v2, "Vibration4DService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change4DNode : isOpen=true; currentPkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; tmpPackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    const-string v2, "change4DNode"

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->open4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .end local v0    # "currentPkg":Ljava/lang/String;
    .end local v1    # "tmpPackageName":Ljava/lang/String;
    goto :goto_0

    .line 443
    :cond_3
    const-string v0, " "

    const-string v1, "change4DNode"

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->close4DVibration(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_0
    return-void
.end method

.method public isOpen4DNode()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mIsOpen4DNode:Z

    return v0
.end method

.method public notePausingActivity(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 130
    :try_start_0
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$NotePausingActivityRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$NotePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;ILjava/lang/String;)V

    .line 132
    .local v0, "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$NotePausingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$NotePausingActivityRunnable;
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Vibration4DService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .line 140
    :try_start_0
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$NoteRemovingProcessRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$NoteRemovingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    .local v0, "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$NoteRemovingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0    # "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$NoteRemovingProcessRunnable;
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Vibration4DService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 120
    :try_start_0
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;IILjava/lang/String;)V

    .line 122
    .local v0, "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller$noteResumingActivityRunnable;
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Vibration4DService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public notifyGameSwitchChanged(Z)V
    .locals 2
    .param p1, "gameSwitch"    # Z

    .line 416
    if-eqz p1, :cond_0

    .line 417
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->getCurrentPkg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameSwitchChange"

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->open4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->getCurrentPkg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameSwitchChange"

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D629Controller;->close4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_0
    return-void
.end method
