.class public Lcom/android/server/BSPCABCController;
.super Ljava/lang/Object;
.source "BSPCABCController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BSPCABCController$AdjustCABCRunnable;,
        Lcom/android/server/BSPCABCController$ScreenStateReceiver;,
        Lcom/android/server/BSPCABCController$noteDockedStackDividerStateChangedRunnable;,
        Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;,
        Lcom/android/server/BSPCABCController$RemoveStackRunnable;,
        Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;,
        Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;,
        Lcom/android/server/BSPCABCController$CABCXmlOperator;,
        Lcom/android/server/BSPCABCController$XmlData;
    }
.end annotation


# static fields
.field private static final ATTR_APP_MODE:Ljava/lang/String; = "app_mode"

.field private static final ATTR_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final ATTR_DEFAULT_MODE:Ljava/lang/String; = "default_mode"

.field private static final BRIGHTNESS_VALUE:I = 0x0

.field private static final CABC_DEFAULT_MODE:I = 0x1b

.field private static final CABC_MANAGER_FILE:Ljava/lang/String; = "security_cabc_manager.xml"

.field private static final CABC_MOVING_IMAGE:I = 0x1a

.field private static final CABC_OFF:I = 0x17

.field private static final CABC_STILL_IMAGE:I = 0x19

.field private static final CABC_UI_IMAGE:I = 0x18

.field private static final NUBIA_CABC_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/cabc_control_table"

.field private static final TABLE_CABC_MODE_COLUMN:Ljava/lang/String; = "mode"

.field private static final TABLE_CABC_PKG_COLUMN:Ljava/lang/String; = "package"

.field private static final TABLE_CABC_TYPE_COLUMN:Ljava/lang/String; = "type"

.field private static final TABLE_TYPE_VALUE_APP:Ljava/lang/String; = "app"

.field private static final TABLE_TYPE_VALUE_DEFAULT:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "BSPCABCController"

.field private static final TAG_APP_SETTING:Ljava/lang/String; = "app_setting"

.field private static final TAG_DEFAULT_SETTING:Ljava/lang/String; = "default_setting"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"


# instance fields
.field private delay_times:I

.field private mAdjustCABCRunnable:Lcom/android/server/BSPCABCController$AdjustCABCRunnable;

.field private mAppCABCModes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCABCModesLock:Ljava/lang/Object;

.field private mBrightness:Ljava/io/File;

.field private mCABCFile:Ljava/io/File;

.field private mCABCSettingFile:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mDefaultCABCMode:I

.field private mDockedStateMode:Z

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mQueryCABCRunnable:Ljava/lang/Runnable;

.field private mResumedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mScreenStateReceiver:Lcom/android/server/BSPCABCController$ScreenStateReceiver;

.field private mStatusBarExpanding:Z

.field private mSupportCABCControl:Z

.field private mThread:Landroid/os/HandlerThread;

.field private mXmlOperator:Lcom/android/server/BSPCABCController$CABCXmlOperator;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 211
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mResumedPackages:Ljava/util/HashMap;

    .line 42
    iput-boolean v1, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    .line 45
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/BSPCABCController;->mDefaultCABCMode:I

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModesLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    .line 78
    iput v1, p0, Lcom/android/server/BSPCABCController;->delay_times:I

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/kernel/lcd_enhance/cabc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mCABCFile:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/backlight/panel0-backlight/brightness"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mBrightness:Ljava/io/File;

    .line 84
    iput-boolean v1, p0, Lcom/android/server/BSPCABCController;->mScreenOn:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/BSPCABCController;->mStatusBarExpanding:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/BSPCABCController;->mDockedStateMode:Z

    .line 661
    new-instance v0, Lcom/android/server/BSPCABCController$AdjustCABCRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BSPCABCController$AdjustCABCRunnable;-><init>(Lcom/android/server/BSPCABCController;Lcom/android/server/BSPCABCController$1;)V

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mAdjustCABCRunnable:Lcom/android/server/BSPCABCController$AdjustCABCRunnable;

    .line 680
    new-instance v0, Lcom/android/server/BSPCABCController$1;

    invoke-direct {v0, p0}, Lcom/android/server/BSPCABCController$1;-><init>(Lcom/android/server/BSPCABCController;)V

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mQueryCABCRunnable:Ljava/lang/Runnable;

    .line 88
    iput-object p1, p0, Lcom/android/server/BSPCABCController;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CABCControllerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    .line 93
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mCABCFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    .line 95
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    if-eqz v0, :cond_2

    .line 96
    const-string/jumbo v0, "security_cabc_manager.xml"

    invoke-static {v0}, Lcom/android/server/cpuperf/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mCABCSettingFile:Ljava/io/File;

    .line 98
    new-instance v0, Lcom/android/server/BSPCABCController$CABCXmlOperator;

    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mCABCSettingFile:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BSPCABCController$CABCXmlOperator;-><init>(Lcom/android/server/BSPCABCController;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/BSPCABCController;->mXmlOperator:Lcom/android/server/BSPCABCController$CABCXmlOperator;

    .line 99
    invoke-direct {p0}, Lcom/android/server/BSPCABCController;->initSettings()V

    .line 100
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 102
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BSPCABCController;->mScreenOn:Z

    .line 103
    new-instance v1, Lcom/android/server/BSPCABCController$ScreenStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/BSPCABCController$ScreenStateReceiver;-><init>(Lcom/android/server/BSPCABCController;)V

    iput-object v1, p0, Lcom/android/server/BSPCABCController;->mScreenStateReceiver:Lcom/android/server/BSPCABCController$ScreenStateReceiver;

    .line 105
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/BSPCABCController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;

    .line 33
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/BSPCABCController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;

    .line 33
    invoke-direct {p0}, Lcom/android/server/BSPCABCController;->loadCABCFromNubiaDb()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/BSPCABCController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;

    .line 33
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/BSPCABCController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;

    .line 33
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mResumedPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/BSPCABCController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/BSPCABCController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/BSPCABCController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/BSPCABCController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/BSPCABCController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;

    .line 33
    invoke-direct {p0}, Lcom/android/server/BSPCABCController;->adjustCABCMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/BSPCABCController;)Lcom/android/server/BSPCABCController$AdjustCABCRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;

    .line 33
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAdjustCABCRunnable:Lcom/android/server/BSPCABCController$AdjustCABCRunnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/BSPCABCController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;

    .line 33
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/BSPCABCController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BSPCABCController;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/BSPCABCController;->mDockedStateMode:Z

    return p1
.end method

.method private adiustBrightnessCABCMode()V
    .locals 10

    .line 464
    const/16 v0, 0x1b

    .line 467
    .local v0, "bestMode":I
    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mResumedPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 468
    .local v2, "stackId":I
    iget-object v3, p0, Lcom/android/server/BSPCABCController;->mResumedPackages:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 470
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/BSPCABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 471
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 472
    iget-object v5, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 473
    .local v5, "mode":I
    if-ge v5, v0, :cond_0

    .line 474
    move v0, v5

    .line 476
    .end local v5    # "mode":I
    :cond_0
    monitor-exit v4

    .line 477
    .end local v2    # "stackId":I
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 476
    .restart local v2    # "stackId":I
    .restart local v3    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 479
    .end local v2    # "stackId":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/BSPCABCController;->mStatusBarExpanding:Z

    if-eqz v1, :cond_3

    .line 480
    iget-boolean v1, p0, Lcom/android/server/BSPCABCController;->mScreenOn:Z

    if-eqz v1, :cond_2

    .line 481
    const/16 v1, 0x18

    if-ge v1, v0, :cond_3

    .line 482
    const/16 v0, 0x18

    goto :goto_1

    .line 484
    :cond_2
    const/16 v0, 0x18

    .line 488
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    const/16 v2, 0x1b

    if-eqz v1, :cond_7

    .line 489
    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mResumedPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_7

    .line 490
    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mResumedPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 491
    .local v3, "stackId":I
    iget-object v4, p0, Lcom/android/server/BSPCABCController;->mResumedPackages:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 493
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/BSPCABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 494
    :try_start_1
    iget-object v6, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 495
    iget-object v6, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 496
    .local v6, "mode":I
    const-string v7, "BSPCABCController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "choosing CABC mode. stack id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", candidate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " needs mode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local v6    # "mode":I
    goto :goto_3

    .line 499
    :cond_4
    const-string v6, "BSPCABCController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "choosing CABC mode. stack id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", candidate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t have mode request"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_3
    monitor-exit v5

    .line 503
    .end local v3    # "stackId":I
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_2

    .line 502
    .restart local v3    # "stackId":I
    .restart local v4    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 505
    .end local v3    # "stackId":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    if-ne v0, v2, :cond_6

    .line 506
    const-string v1, "BSPCABCController"

    const-string v3, "Decide to use default CABC mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 508
    :cond_6
    const-string v1, "BSPCABCController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decide to use best CABC mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_7
    :goto_4
    if-ne v0, v2, :cond_9

    .line 516
    iget-boolean v1, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v1, :cond_8

    .line 517
    const-string v1, "BSPCABCController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set CABC mode to default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BSPCABCController;->mDefaultCABCMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_8
    iget v1, p0, Lcom/android/server/BSPCABCController;->mDefaultCABCMode:I

    invoke-direct {p0, v1}, Lcom/android/server/BSPCABCController;->setCABCMode(I)V

    goto :goto_5

    .line 521
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v1, :cond_a

    .line 522
    const-string v1, "BSPCABCController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set CABC mode to bestmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/server/BSPCABCController;->setCABCMode(I)V

    .line 526
    :goto_5
    return-void
.end method

.method private adjustCABCMode()V
    .locals 5

    .line 450
    invoke-direct {p0}, Lcom/android/server/BSPCABCController;->readCurrentBrightness()I

    move-result v0

    .line 451
    .local v0, "brightValue":I
    if-lez v0, :cond_0

    .line 452
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/BSPCABCController;->delay_times:I

    .line 453
    invoke-direct {p0}, Lcom/android/server/BSPCABCController;->adiustBrightnessCABCMode()V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAdjustCABCRunnable:Lcom/android/server/BSPCABCController$AdjustCABCRunnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    iget v1, p0, Lcom/android/server/BSPCABCController;->delay_times:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/BSPCABCController;->delay_times:I

    .line 458
    iget v1, p0, Lcom/android/server/BSPCABCController;->delay_times:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 459
    const-string v1, "BSPCABCController"

    const-string v2, "Brightness Value is 0 ,can not set CABC value"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_1
    :goto_0
    return-void
.end method

.method private initSettings()V
    .locals 2

    .line 110
    const-string/jumbo v0, "security_cabc_manager.xml"

    invoke-static {v0}, Lcom/android/server/cpuperf/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mXmlOperator:Lcom/android/server/BSPCABCController$CABCXmlOperator;

    invoke-virtual {v0}, Lcom/android/server/BSPCABCController$CABCXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BSPCABCController$XmlData;

    .line 112
    .local v0, "data":Lcom/android/server/BSPCABCController$XmlData;
    if-eqz v0, :cond_0

    .line 113
    invoke-static {v0}, Lcom/android/server/BSPCABCController$XmlData;->access$000(Lcom/android/server/BSPCABCController$XmlData;)I

    move-result v1

    iput v1, p0, Lcom/android/server/BSPCABCController;->mDefaultCABCMode:I

    .line 114
    invoke-static {v0}, Lcom/android/server/BSPCABCController$XmlData;->access$100(Lcom/android/server/BSPCABCController$XmlData;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    .line 116
    .end local v0    # "data":Lcom/android/server/BSPCABCController$XmlData;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/android/server/BSPCABCController;->loadCABCFromNubiaDb()V

    .line 119
    :goto_0
    return-void
.end method

.method private loadCABCFromNubiaDb()V
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/android/server/BSPCABCController;->loadCABCSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/server/BSPCABCController;->loadDefaultSettings()V

    .line 126
    :cond_0
    return-void
.end method

.method private loadCABCSettings()Z
    .locals 12

    .line 189
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 190
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "content://cn.nubia.security.power/cabc_control_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 190
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 191
    if-nez v2, :cond_1

    .line 192
    nop

    .line 211
    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :cond_0
    return v0

    .line 194
    :cond_1
    :try_start_1
    const-string/jumbo v4, "type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 195
    .local v4, "typeIndex":I
    const-string/jumbo v5, "package"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 196
    .local v5, "pkgIndex":I
    const-string/jumbo v6, "mode"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 197
    .local v6, "modeIndex":I
    const/4 v7, -0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 198
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 199
    .local v7, "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 200
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, "type":Ljava/lang/String;
    const-string v9, "default"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 202
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 203
    .local v9, "mode":I
    iput v9, p0, Lcom/android/server/BSPCABCController;->mDefaultCABCMode:I

    .line 204
    .end local v9    # "mode":I
    goto :goto_1

    :cond_2
    const-string v9, "app"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 205
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "pkg":Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 207
    .local v10, "mode":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "mode":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 210
    :cond_4
    iput-object v7, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    .end local v4    # "typeIndex":I
    .end local v5    # "pkgIndex":I
    .end local v6    # "modeIndex":I
    .end local v7    # "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_5

    :try_start_2
    invoke-static {v3, v2}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_5
    nop

    .line 215
    iget-object v4, p0, Lcom/android/server/BSPCABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 216
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mXmlOperator:Lcom/android/server/BSPCABCController$CABCXmlOperator;

    new-instance v2, Lcom/android/server/BSPCABCController$XmlData;

    iget v3, p0, Lcom/android/server/BSPCABCController;->mDefaultCABCMode:I

    iget-object v5, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-direct {v2, p0, v3, v5}, Lcom/android/server/BSPCABCController$XmlData;-><init>(Lcom/android/server/BSPCABCController;ILandroid/util/ArrayMap;)V

    invoke-virtual {v0, v2}, Lcom/android/server/BSPCABCController$CABCXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 217
    monitor-exit v4

    .line 218
    const/4 v0, 0x1

    return v0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 211
    .restart local v2    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    goto :goto_2

    .line 190
    :catch_0
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 211
    :goto_2
    if-eqz v2, :cond_6

    :try_start_5
    invoke-static {v3, v2}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 211
    .end local v2    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "BSPCABCController"

    const-string v4, "fail read from database"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v0
.end method

.method private loadDefaultSettings()V
    .locals 7

    .line 235
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/BSPCABCController;->mDefaultCABCMode:I

    .line 236
    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.gallery3d"

    const/16 v4, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.photoeditor"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.android.systemui"

    const/16 v5, 0x18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.minilauncher"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.video"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.qiyi.video"

    const/16 v5, 0x1a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string/jumbo v3, "tv.pps.mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.letv.android.client"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.letv.android.client.pad"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.ifeng.newvideo"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.cmcc.cmvideo"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.tudou.android"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.sohu.sohuvideo"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.baidu.video"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.tencent.qqlive"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.funshion.video.mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.yingshi2345"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.qihoo.video"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.letv.android.client.samsungpad"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.pplive.androidphone"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.duowan.mobile:yydexopt"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.android.gallery3d"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.baidu.cloud.gallery"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.bluecrane.album"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.photosoft.android.tool0822"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.android.camera"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.neoshare"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.google.android.youtube"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.google.android.apps.photos"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.google.android.setupwizard"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.google.android.videos"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.accounts"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.setupwizard"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.android.provision"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.pplive.androidphone.nubia"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.storm.smart"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "air.tv.douyu.android"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.youku.phone"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.ss.android.article.video"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.lesports.glivesports"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.meelive.ingkee"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.duowan.mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.duowan.kiwi"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.huajiao"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.panda.videoliveplatform"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "android.zhibo8"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string/jumbo v2, "tv.xiaoka.live"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.kascend.chushou"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.tencent.qqsports"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.smile.gifmaker"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.hunantv.imgo.activity"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.sports.baofeng"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string/jumbo v2, "tv.danmaku.bili"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.tencent.tmgp.chushou"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.longzhu.tga"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.ss.android.ugc.live"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.duowan.mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.storm.smart"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.ss.android.ugc.aweme"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.netease.edu.study"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string/jumbo v2, "org.keke.tv.vod"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string/jumbo v2, "peace.org.tm.android"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.google.android.youtube Youtube"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.meitu.meipaimv"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    monitor-exit v1

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readCurrentBrightness()I
    .locals 5

    .line 368
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/android/server/BSPCABCController;->mBrightness:Ljava/io/File;

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
    invoke-static {v2, v1}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 371
    return v4

    .line 373
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
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
    invoke-static {v2, v1}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BSPCABCController"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    return v0
.end method

.method private readCurrentMode()I
    .locals 5

    .line 222
    const/16 v0, 0x1b

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/android/server/BSPCABCController;->mCABCFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 223
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    invoke-static {v2, v1}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 225
    return v4

    .line 227
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    .end local v1    # "br":Ljava/io/BufferedReader;
    nop

    .line 231
    return v0

    .line 227
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 222
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BSPCABCController"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    return v0
.end method

.method private setCABCMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 433
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDockedStateMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 434
    const/16 p1, 0x17

    .line 435
    const-string v0, "BSPCABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Docked Stack Divider State mode close CABC mode =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 439
    const-string v0, "BSPCABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "real set CABC mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/BSPCABCController;->mCABCFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 443
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :try_start_2
    invoke-static {v1, v0}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 446
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 444
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 444
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcom/android/server/BSPCABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 444
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BSPCABCController"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 664
    const-string v0, "==========managed CABC apps=========="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BSPCABCController;->mDefaultCABCMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 668
    .local v2, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BSPCABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 670
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 672
    return-void

    .line 670
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteActivityStackRemoved(I)V
    .locals 3
    .param p1, "stackId"    # I

    .line 347
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 351
    const-string v0, "BSPCABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity stack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BSPCABCController$RemoveStackRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/BSPCABCController$RemoveStackRunnable;-><init>(Lcom/android/server/BSPCABCController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method

.method public noteAppTransitionAnimation(Z)V
    .locals 4
    .param p1, "execute"    # Z

    .line 380
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 384
    const-string v0, "BSPCABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute app transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    if-eqz p1, :cond_2

    .line 388
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mAdjustCABCRunnable:Lcom/android/server/BSPCABCController$AdjustCABCRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    :cond_2
    return-void
.end method

.method public noteDisplayPowerModeChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 405
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 406
    return-void

    .line 408
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 409
    const-string v0, "BSPCABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display power mode changed, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1
    new-instance v0, Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;-><init>(Lcom/android/server/BSPCABCController;I)V

    .line 413
    .local v0, "ndpmcr":Lcom/android/server/BSPCABCController$NoteDisplayPowerModeChangedRunnable;
    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method

.method public noteDockedStackDividerStateChanged(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .line 417
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 418
    return-void

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 421
    const-string v0, "BSPCABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Docked Stack Divider State Changed, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    new-instance v0, Lcom/android/server/BSPCABCController$noteDockedStackDividerStateChangedRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BSPCABCController$noteDockedStackDividerStateChangedRunnable;-><init>(Lcom/android/server/BSPCABCController;Z)V

    .line 425
    .local v0, "dsdsc":Lcom/android/server/BSPCABCController$noteDockedStackDividerStateChangedRunnable;
    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 336
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 337
    return-void

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 340
    const-string v0, "BSPCABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pausing activity, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;-><init>(Lcom/android/server/BSPCABCController;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 358
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 359
    return-void

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "BSPCABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumed app die, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/BSPCABCController$NotePausingActivityRunnable;-><init>(Lcom/android/server/BSPCABCController;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .line 322
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 323
    return-void

    .line 324
    :cond_0
    if-nez p3, :cond_1

    .line 325
    return-void

    .line 327
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_2

    .line 328
    const-string v0, "BSPCABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resuming activity, stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    new-instance v0, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;

    invoke-direct {v0, p0, p2, p3, p5}, Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;-><init>(Lcom/android/server/BSPCABCController;ILjava/lang/String;Z)V

    .line 332
    .local v0, "nrar":Lcom/android/server/BSPCABCController$NoteResumingActivityRunnable;
    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    return-void
.end method

.method public noteStatusBarExpanding(Z)V
    .locals 3
    .param p1, "expanding"    # Z

    .line 393
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 394
    return-void

    .line 396
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 397
    const-string v0, "BSPCABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status bar expanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/BSPCABCController;->mStatusBarExpanding:Z

    .line 401
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mAdjustCABCRunnable:Lcom/android/server/BSPCABCController$AdjustCABCRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 317
    iput-boolean p1, p0, Lcom/android/server/BSPCABCController;->mDumpDebugLog:Z

    .line 318
    return-void
.end method

.method public updateNubiaData()V
    .locals 2

    .line 675
    iget-boolean v0, p0, Lcom/android/server/BSPCABCController;->mSupportCABCControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mQueryCABCRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/server/BSPCABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/BSPCABCController;->mQueryCABCRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 678
    :cond_0
    return-void
.end method
