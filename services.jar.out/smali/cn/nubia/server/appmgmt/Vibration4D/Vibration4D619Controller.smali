.class public Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
.super Ljava/lang/Object;
.source "Vibration4D619Controller.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$noteResumingActivityRunnable;,
        Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;,
        Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;
    }
.end annotation


# static fields
.field private static final CLOSE_4D_NODE_VALUE:I = 0x1

.field private static DEBUG:Z = false

.field private static final GAME_KEY_CLOSE:I = 0x0

.field private static final GAME_KEY_OPEN:I = 0x1

.field private static final NUBIA_4D_SHOCK_CLOSE:I = 0x0

.field private static final NUBIA_4D_SHOCK_OPEN:I = 0x1

.field private static final OPEN_4D_NODE_VALUE:I = 0x0

.field private static final SETTING_GAME_4D_SWITCH:Ljava/lang/String; = "nubia_4d_shock"

.field private static final TAG:Ljava/lang/String; = "Vibration4DService"


# instance fields
.field private m4DNodeFile:Ljava/io/File;

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

.field private mIsOpen4DNode:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThread:Landroid/os/HandlerThread;

.field private stateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 341
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

    .line 33
    const-string v0, "Vibration4DService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mCurrentPackageName:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mIsOpen4DNode:Z

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/debug/tfa9xxx-36/A2HDSP_no_start"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DNodeFile:Ljava/io/File;

    .line 54
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "sys/devices/platform/soc/soc:gpio_keys/GamekeyStatus"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mGameKeyNodeFile:Ljava/io/File;

    .line 404
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$1;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mGame4DSwitchChangeObserver:Landroid/database/ContentObserver;

    .line 419
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$2;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 433
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$3;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$3;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->stateListener:Landroid/telephony/PhoneStateListener;

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Vibration4DControllerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mThread:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 64
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->resetGame4DSwitchChangeObserver()V

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->loadPackageName()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->close4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->stateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->isMicWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->closeMicIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mCurrentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mCurrentPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->openAudioNodeIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->open4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->openMicIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAction:Ljava/lang/String;

    return-object p1
.end method

.method private close4DVibration()V
    .locals 3

    .line 359
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DNodeFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 360
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :try_start_2
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 363
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 361
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 359
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Vibration4DService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private close4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 269
    move-object v0, p1

    .line 270
    .local v0, "tmpPackageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->read4DVibration()I

    move-result v1

    if-nez v1, :cond_1

    .line 271
    sget-boolean v1, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "Vibration4DService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] 4DVibration close, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "game_name=none"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->close4DVibration()V

    .line 276
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mIsOpen4DNode:Z

    .line 278
    :cond_1
    return-void
.end method

.method private closeAudioNodeIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 295
    move-object v0, p1

    .line 296
    .local v0, "tmpPackageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    sget-boolean v1, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 298
    const-string v1, "Vibration4DService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] AudioNode close, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "game_name=none"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 302
    :cond_1
    return-void
.end method

.method private closeMicIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 205
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->isMicWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    sget-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "Vibration4DService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Mic close, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "enter_game=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 211
    :cond_1
    return-void
.end method

.method private getAudio4DPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 232
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

    .line 233
    return-object v0

    .line 235
    :cond_0
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 239
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 240
    .local v1, "index":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 241
    const-string v2, "Vibration4DService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] getAudio4DPackageName failed, index = null, packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-object v0

    .line 244
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_3

    goto :goto_0

    .line 249
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 245
    :cond_4
    :goto_0
    const-string v2, "Vibration4DService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] getAudio4DPackageName failed, index < 0 or index > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v0
.end method

.method private isMicWhiteListApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 215
    :cond_0
    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    const-string v1, "com.tencent.tmgp.sgame"

    .line 216
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.tencent.tmgp.speedmobile"

    .line 217
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.tencent.tmgp.cf"

    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.tencent.tmgp.pubgm"

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.tencent.ig"

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 223
    :cond_1
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.netease.zjz"

    .line 224
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    return v0

    .line 225
    :cond_3
    :goto_0
    return v2

    .line 221
    :cond_4
    :goto_1
    return v2
.end method

.method private isOpen4DSwitchByUser()Z
    .locals 5

    .line 305
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->readGameKeyStatus()I

    move-result v0

    .line 307
    .local v0, "gameSwitchValue":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_4d_shock"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 309
    .local v1, "game4DSwitchValue":I
    if-ne v0, v3, :cond_0

    .line 310
    const-string v2, "Vibration4DService"

    const-string v4, "can not get game switch value!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    if-ne v1, v3, :cond_1

    .line 313
    const-string v2, "Vibration4DService"

    const-string v3, "can not get 4D switch value!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    if-ne v2, v1, :cond_2

    .line 317
    return v2

    .line 319
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isWhiteListApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 323
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 324
    return v0

    .line 326
    :cond_0
    const-string v1, "com.netease.hyxd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 327
    return v2

    .line 329
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    return v2

    .line 332
    :cond_2
    return v0
.end method

.method private loadPackageName()V
    .locals 5

    .line 75
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    const-string v3, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudio4DPackageName:Ljava/util/ArrayList;

    const-string v3, "com.netease.hyxd.X"

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 83
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v3, "com.tencent.tmgp.pubgmhd"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v3, "com.tencent.ig"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v3, "com.pubg.krmobile"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v3, "com.tencent.iglite"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v2, "com.netease.hyxd"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v2, "com.netease.ko"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DPackageName:Landroid/util/ArrayMap;

    const-string v2, "com.netease.rs"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_1
    return-void
.end method

.method private open4DVibration()V
    .locals 3

    .line 350
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DNodeFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 351
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    :try_start_2
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 354
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 352
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 352
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Vibration4DService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private open4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 253
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->isOpen4DSwitchByUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const-string/jumbo v0, "open4DVibrationIfNeed"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->getAudio4DPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "tmpPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 256
    return-void

    .line 259
    :cond_0
    sget-boolean v1, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "Vibration4DService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] 4DVibration open, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";tmpPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "game_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->open4DVibration()V

    .line 264
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mIsOpen4DNode:Z

    .line 266
    .end local v0    # "tmpPackageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private openAudioNodeIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 281
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    const-string/jumbo v0, "openAudioNodeIfNeed"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->getAudio4DPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "tmpPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    sget-boolean v1, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 288
    const-string v1, "Vibration4DService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] AudioNode open, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";tmpPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "game_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 292
    .end local v0    # "tmpPackageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private openMicIfNeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->isMicWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    sget-boolean v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "Vibration4DService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Mic open, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "enter_game=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 202
    :cond_1
    return-void
.end method

.method private read4DVibration()I
    .locals 5

    .line 336
    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->m4DNodeFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 336
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 337
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 339
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :try_start_2
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 339
    return v4

    .line 341
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 344
    .end local v1    # "br":Ljava/io/BufferedReader;
    nop

    .line 345
    const-string v1, "Vibration4DService"

    const-string/jumbo v2, "read4DVibration failed, return -1."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v0

    .line 341
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 336
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 341
    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Vibration4DService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    return v0
.end method

.method private readGameKeyStatus()I
    .locals 5

    .line 368
    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mGameKeyNodeFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 369
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 371
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    :try_start_2
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 371
    return v4

    .line 373
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 376
    .end local v1    # "br":Ljava/io/BufferedReader;
    nop

    .line 377
    return v0

    .line 373
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 368
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 373
    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Vibration4DService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    return v0
.end method

.method private resetGame4DSwitchChangeObserver()V
    .locals 4

    .line 395
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mGame4DSwitchChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 398
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_4d_shock"

    .line 399
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mGame4DSwitchChangeObserver:Landroid/database/ContentObserver;

    .line 398
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 401
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mGame4DSwitchChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 402
    return-void
.end method


# virtual methods
.method public change4DNode(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .line 392
    return-void
.end method

.method public isOpen4DNode()Z
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mIsOpen4DNode:Z

    return v0
.end method

.method public notePausingActivity(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 108
    :try_start_0
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;ILjava/lang/String;)V

    .line 110
    .local v0, "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NotePausingActivityRunnable;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Vibration4DService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .line 118
    :try_start_0
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Vibration4DService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 98
    :try_start_0
    new-instance v0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$noteResumingActivityRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$noteResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;IILjava/lang/String;)V

    .line 100
    .local v0, "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$noteResumingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "nrar":Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$noteResumingActivityRunnable;
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Vibration4DService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public notifyGameSwitchChanged(Z)V
    .locals 2
    .param p1, "gameSwitch"    # Z

    .line 381
    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mCurrentPackageName:Ljava/lang/String;

    const-string v1, "GameSwitchChange"

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->open4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->mCurrentPackageName:Ljava/lang/String;

    const-string v1, "GameSwitchChange"

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->close4DVibrationIfNeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void
.end method
