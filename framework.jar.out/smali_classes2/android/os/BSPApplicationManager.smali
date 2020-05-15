.class public Landroid/os/BSPApplicationManager;
.super Ljava/lang/Object;
.source "BSPApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BSPApplicationManager$Trigger;
    }
.end annotation


# static fields
.field public static final PERFORMANCE_LOCK_TYPE_APP_BOOSTCPU_FOR_TGPA_GAMES:I = 0x65

.field public static final PERFORMANCE_LOCK_TYPE_APP_BOOSTGPU_FOR_TGPA_GAMES:I = 0x66

.field public static final PERFORMANCE_LOCK_TYPE_APP_FLING_OVERSCROLLER:I = 0xa

.field public static final PERFORMANCE_LOCK_TYPE_APP_INSTALL:I = 0x6

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCHER_START_APP:I = 0x7

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCHER_START_HOME:I = 0xe

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_CROSS_PROCESS_ANIMATION:I = 0x4

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_EXISTING_PROCESS:I = 0x3

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_EXISTING_PROCESS_FOR_NUBIA:I = 0x11

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_FRAGMENT:I = 0xd

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_INNER_PROCESS_ANIMATION:I = 0x5

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_NEW_PROCESS:I = 0x2

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_NEW_PROCESS_FOR_GAMEMODE:I = 0x8

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_NEW_PROCESS_FOR_NUBIA:I = 0x10

.field public static final PERFORMANCE_LOCK_TYPE_APP_LAUNCH_WEBVIEW:I = 0xb

.field public static final PERFORMANCE_LOCK_TYPE_APP_MEDIACODEC:I = 0xc

.field public static final PERFORMANCE_LOCK_TYPE_APP_SCREEN_OFF:I = 0xf

.field public static final PERFORMANCE_LOCK_TYPE_APP_SPECIFIC:I = 0x1

.field public static final PERFORMANCE_LOCK_TYPE_APP_SPECIFIC_CPUMODE:I = 0x12

.field public static final PERFORMANCE_LOCK_TYPE_APP_SPECIFIC_FOR_GAMEMODE:I = 0x9

.field public static final PERFORMANCE_LOCK_TYPE_APP_SPECIFIC_GPUMODE:I = 0x13

.field private static final TAG:Ljava/lang/String; = "BSPApplicationManager"

.field public static final TAG_FOR_FLING_OVERSCROLLER:Ljava/lang/String; = "com.fling.overscroller"

.field public static final TAG_FOR_FRAGMENT_LAUNCH:Ljava/lang/String; = "com.fragment.launch"

.field public static final TAG_FOR_GAMEMODE_CPUMODE:Ljava/lang/String; = "com.superGamePerf.cpumode"

.field public static final TAG_FOR_GAMEMODE_GPUMODE:Ljava/lang/String; = "com.superGamePerf.gpumode"

.field public static final TAG_FOR_GAMEMODE_LAUNCH:Ljava/lang/String; = "com.gamemode.launch"

.field public static final TAG_FOR_GAMEMODE_RUNNING:Ljava/lang/String; = "com.superGamePerf.running"

.field public static final TAG_FOR_GAME_LAUNCHLIST_APP:Ljava/lang/String; = "launchGameLauncherListApp"

.field public static final TAG_FOR_LAUNCH_WEBVIEW:Ljava/lang/String; = "com.launch.webview"

.field public static final TAG_FOR_MEDIA_CODEC:Ljava/lang/String; = "com.media.codec"

.field public static final TAG_FOR_SCREEN_OFF:Ljava/lang/String; = "com.screen.off"

.field public static final TAG_FOR_START_HOME:Ljava/lang/String; = "com.start.home"

.field public static final TAG_FOR_TGPA_GAMEBOOST_CPU:Ljava/lang/String; = "com.tgpa.gameboost.cpu"

.field public static final TAG_FOR_TGPA_GAMEBOOST_GPU:Ljava/lang/String; = "com.tgpa.gameboost.gpu"

.field private static sDumpDebugLog:Z


# instance fields
.field private final mService:Landroid/os/IBSPApplicationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
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
    sput-boolean v0, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/IBSPApplicationManager;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IBSPApplicationManager;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/os/IBSPApplicationManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;

    .line 18
    invoke-static {p0}, Landroid/os/BSPApplicationManager;->getForegroundPackageNameImpl(Landroid/os/IBSPApplicationManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/IBSPApplicationManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;

    .line 18
    invoke-static {p0}, Landroid/os/BSPApplicationManager;->setBrightnessModeImpl(Landroid/os/IBSPApplicationManager;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Landroid/os/BSPApplicationManager;->isInNoTransitionAnimImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/os/IBSPApplicationManager;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # J
    .param p8, "x7"    # Z

    .line 18
    invoke-static/range {p0 .. p8}, Landroid/os/BSPApplicationManager;->noteAppForegroundImpl(Landroid/os/IBSPApplicationManager;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method static synthetic access$1200(Landroid/os/IBSPApplicationManager;ILjava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # J

    .line 18
    invoke-static/range {p0 .. p6}, Landroid/os/BSPApplicationManager;->noteAppBackgroundImpl(Landroid/os/IBSPApplicationManager;ILjava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1300(Landroid/os/IBSPApplicationManager;IZ)I
    .locals 1
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 18
    invoke-static {p0, p1, p2}, Landroid/os/BSPApplicationManager;->setThreadCpusetForTgpaImpl(Landroid/os/IBSPApplicationManager;IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/os/IBSPApplicationManager;IILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2, p3}, Landroid/os/BSPApplicationManager;->boostForTgpaImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z

    .line 18
    invoke-static/range {p0 .. p5}, Landroid/os/BSPApplicationManager;->noteResumingActivityImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Landroid/os/BSPApplicationManager;->getViewOptimizeInfoByActivityNameImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1}, Landroid/os/BSPApplicationManager;->noteFocusChangedLwImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;

    .line 18
    invoke-static/range {p0 .. p7}, Landroid/os/BSPApplicationManager;->notePausingActivityImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/BSPApplicationManager;->noteResumedAppDieImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/os/IBSPApplicationManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 18
    invoke-static {p0, p1, p2, p3}, Landroid/os/BSPApplicationManager;->noteRemovingProcessImpl(Landroid/os/IBSPApplicationManager;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/os/IBSPApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .line 18
    invoke-static/range {p0 .. p5}, Landroid/os/BSPApplicationManager;->acquirePerformanceLockImpl(Landroid/os/IBSPApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$900(Landroid/os/IBSPApplicationManager;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/IBSPApplicationManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 18
    invoke-static {p0, p1}, Landroid/os/BSPApplicationManager;->releasePerformanceLockImpl(Landroid/os/IBSPApplicationManager;Landroid/os/IBinder;)V

    return-void
.end method

.method private static acquirePerformanceLockImpl(Landroid/os/IBSPApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .line 291
    if-eqz p0, :cond_0

    .line 293
    :try_start_0
    invoke-interface/range {p0 .. p5}, Landroid/os/IBSPApplicationManager;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static boostForTgpaImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;)I
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "boostType"    # I
    .param p2, "boostLevel"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 365
    if-eqz p0, :cond_0

    .line 367
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IBSPApplicationManager;->boostForTgpa(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getForegroundPackageNameImpl(Landroid/os/IBSPApplicationManager;)Ljava/util/List;
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBSPApplicationManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    if-eqz p0, :cond_0

    .line 138
    :try_start_0
    invoke-interface {p0}, Landroid/os/IBSPApplicationManager;->getForegroundPackageName()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getViewOptimizeInfoByActivityNameImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBSPApplicationManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    if-eqz p0, :cond_0

    .line 150
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IBSPApplicationManager;->getViewOptimizeInfoByActivityName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isInFullOnCpusetImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "name"    # Ljava/lang/String;

    .line 378
    if-eqz p0, :cond_0

    .line 380
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IBSPApplicationManager;->isInFullOnCpuset(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 383
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isInNoTransitionAnimImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "name"    # Ljava/lang/String;

    .line 315
    if-eqz p0, :cond_0

    .line 317
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IBSPApplicationManager;->isInNoTransitionAnim(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 320
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static noteAppBackgroundImpl(Landroid/os/IBSPApplicationManager;ILjava/lang/String;ILjava/lang/String;J)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 342
    if-eqz p0, :cond_0

    .line 344
    :try_start_0
    invoke-interface/range {p0 .. p6}, Landroid/os/IBSPApplicationManager;->noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 347
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteAppForegroundImpl(Landroid/os/IBSPApplicationManager;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "isColdLaunch"    # Z

    .line 330
    if-eqz p0, :cond_0

    .line 332
    :try_start_0
    invoke-interface/range {p0 .. p8}, Landroid/os/IBSPApplicationManager;->noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 335
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteFocusChangedLwImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "newFocus"    # Ljava/lang/String;

    .line 185
    if-eqz p0, :cond_0

    .line 187
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IBSPApplicationManager;->noteFocusChangedLw(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static notePausingActivityImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "visible"    # Z
    .param p6, "topActivityPackageName"    # Ljava/lang/String;
    .param p7, "topActivity"    # Ljava/lang/String;

    .line 198
    if-eqz p0, :cond_0

    .line 200
    :try_start_0
    invoke-interface/range {p0 .. p7}, Landroid/os/IBSPApplicationManager;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteRemovingProcessImpl(Landroid/os/IBSPApplicationManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .line 232
    if-eqz p0, :cond_0

    .line 234
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IBSPApplicationManager;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteResumedAppDieImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 221
    if-eqz p0, :cond_0

    .line 223
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/IBSPApplicationManager;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static noteResumingActivityImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .line 162
    if-eqz p0, :cond_0

    .line 164
    :try_start_0
    invoke-interface/range {p0 .. p5}, Landroid/os/IBSPApplicationManager;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static releasePerformanceLockImpl(Landroid/os/IBSPApplicationManager;Landroid/os/IBinder;)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "token"    # Landroid/os/IBinder;

    .line 303
    if-eqz p0, :cond_0

    .line 305
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IBSPApplicationManager;->releasePerformanceLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static setBrightnessModeImpl(Landroid/os/IBSPApplicationManager;)V
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;

    .line 174
    if-eqz p0, :cond_0

    .line 176
    :try_start_0
    invoke-interface {p0}, Landroid/os/IBSPApplicationManager;->setBrightnessMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static setThreadCpusetForTgpaImpl(Landroid/os/IBSPApplicationManager;IZ)I
    .locals 3
    .param p0, "service"    # Landroid/os/IBSPApplicationManager;
    .param p1, "tid"    # I
    .param p2, "bigCluster"    # Z

    .line 353
    if-eqz p0, :cond_0

    .line 355
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBSPApplicationManager;->setThreadCpusetForTgpa(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/os/BSPApplicationManager;->sDumpDebugLog:Z

    if-eqz v1, :cond_0

    .line 358
    const-string v1, "BSPApplicationManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .line 108
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Landroid/os/BSPApplicationManager;->acquirePerformanceLockImpl(Landroid/os/IBSPApplicationManager;Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 109
    return-void
.end method

.method public boostForTgpa(IILjava/lang/String;)I
    .locals 1
    .param p1, "boostType"    # I
    .param p2, "boostLevel"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p1, p2, p3}, Landroid/os/BSPApplicationManager;->boostForTgpaImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getViewOptimizeInfoByActivityName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p1}, Landroid/os/BSPApplicationManager;->getViewOptimizeInfoByActivityNameImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isInFullOnCpuset(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p1}, Landroid/os/BSPApplicationManager;->isInFullOnCpusetImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInNoTransitionAnim(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p1}, Landroid/os/BSPApplicationManager;->isInNoTransitionAnimImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public noteFocusChangedLw(Ljava/lang/String;)V
    .locals 1
    .param p1, "newFocus"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p1}, Landroid/os/BSPApplicationManager;->noteFocusChangedLwImpl(Landroid/os/IBSPApplicationManager;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "visible"    # Z
    .param p6, "topActivityPackageName"    # Ljava/lang/String;
    .param p7, "topActivity"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Landroid/os/BSPApplicationManager;->notePausingActivityImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p1, p2, p3}, Landroid/os/BSPApplicationManager;->noteRemovingProcessImpl(Landroid/os/IBSPApplicationManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/BSPApplicationManager;->noteResumedAppDieImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .line 68
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/os/BSPApplicationManager;->noteResumingActivityImpl(Landroid/os/IBSPApplicationManager;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method public releasePerformanceLock(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 113
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p1}, Landroid/os/BSPApplicationManager;->releasePerformanceLockImpl(Landroid/os/IBSPApplicationManager;Landroid/os/IBinder;)V

    .line 114
    return-void
.end method

.method public setThreadCpusetForTgpa(IZ)I
    .locals 1
    .param p1, "tid"    # I
    .param p2, "bigCluster"    # Z

    .line 127
    iget-object v0, p0, Landroid/os/BSPApplicationManager;->mService:Landroid/os/IBSPApplicationManager;

    invoke-static {v0, p1, p2}, Landroid/os/BSPApplicationManager;->setThreadCpusetForTgpaImpl(Landroid/os/IBSPApplicationManager;IZ)I

    move-result v0

    return v0
.end method
