.class public Lcn/nubia/server/appmgmt/CABCController;
.super Ljava/lang/Object;
.source "CABCController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;,
        Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;,
        Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;,
        Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;,
        Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;,
        Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;,
        Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;,
        Lcn/nubia/server/appmgmt/CABCController$XmlData;
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

.field private static final PROPERTIES_PRODUCT_MODE:Ljava/lang/String; = "ro.product.model"

.field private static final TABLE_CABC_MODE_COLUMN:Ljava/lang/String; = "mode"

.field private static final TABLE_CABC_PKG_COLUMN:Ljava/lang/String; = "package"

.field private static final TABLE_CABC_TYPE_COLUMN:Ljava/lang/String; = "type"

.field private static final TABLE_TYPE_VALUE_APP:Ljava/lang/String; = "app"

.field private static final TABLE_TYPE_VALUE_DEFAULT:Ljava/lang/String; = "default"

.field private static final TAG:Ljava/lang/String; = "CABCController"

.field private static final TAG_APP_SETTING:Ljava/lang/String; = "app_setting"

.field private static final TAG_DEFAULT_SETTING:Ljava/lang/String; = "default_setting"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"

.field private static getModeMethod:Ljava/lang/reflect/Method;


# instance fields
.field private PackageWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

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

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mQueryCABCRunnable:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private mScreenStateReceiver:Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;

.field private mStatusBarExpanding:Z

.field private mSupportCABCControl:Z

.field private mThread:Landroid/os/HandlerThread;

.field private mVisiblePackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlOperator:Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 225
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

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
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
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mVisiblePackages:Ljava/util/HashMap;

    .line 46
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    .line 49
    const/16 v0, 0x19

    iput v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    .line 83
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/kernel/lcd_enhance/cabc"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCFile:Ljava/io/File;

    .line 84
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mBrightness:Ljava/io/File;

    .line 87
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z

    .line 88
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mStatusBarExpanding:Z

    .line 665
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;Lcn/nubia/server/appmgmt/CABCController$1;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    .line 684
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/CABCController$1;-><init>(Lcn/nubia/server/appmgmt/CABCController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mQueryCABCRunnable:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Lcn/nubia/server/appmgmt/CABCController;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CABCControllerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mThread:Landroid/os/HandlerThread;

    .line 94
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    .line 97
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->PackageWhiteList:Ljava/util/List;

    .line 99
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-eqz v0, :cond_2

    .line 100
    const-string/jumbo v0, "security_cabc_manager.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCSettingFile:Ljava/io/File;

    .line 102
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCSettingFile:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;-><init>(Lcn/nubia/server/appmgmt/CABCController;Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mXmlOperator:Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;

    .line 103
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->initSettings()V

    .line 104
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 106
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z

    .line 107
    new-instance v1, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;-><init>(Lcn/nubia/server/appmgmt/CABCController;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenStateReceiver:Lcn/nubia/server/appmgmt/CABCController$ScreenStateReceiver;

    .line 109
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_2
    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/appmgmt/CABCController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .line 36
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->loadCABCFromNubiaDb()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/CABCController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/CABCController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mVisiblePackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/CABCController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .line 36
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/server/appmgmt/CABCController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/CABCController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .line 36
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/CABCController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .line 36
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->adjustCABCMode()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/CABCController;)Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/CABCController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/CABCController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/CABCController;

    .line 36
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adiustBrightressCABCMode()V
    .locals 11

    .line 465
    const/16 v0, 0x1b

    .line 466
    .local v0, "bestMode":I
    const/4 v1, 0x0

    .line 468
    .local v1, "toppackage":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mVisiblePackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 469
    .local v3, "stackId":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/CABCController;->mVisiblePackages:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 470
    .local v4, "name":Ljava/lang/String;
    move-object v5, v4

    .line 471
    .end local v1    # "toppackage":Ljava/lang/String;
    .local v5, "toppackage":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 472
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 474
    .local v1, "mode":I
    if-ge v1, v0, :cond_0

    .line 475
    move v0, v1

    .line 477
    .end local v1    # "mode":I
    :cond_0
    monitor-exit v6

    .line 478
    .end local v3    # "stackId":I
    .end local v4    # "name":Ljava/lang/String;
    nop

    .line 468
    move-object v1, v5

    goto :goto_0

    .line 477
    .restart local v3    # "stackId":I
    .restart local v4    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 480
    .end local v3    # "stackId":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "toppackage":Ljava/lang/String;
    .local v1, "toppackage":Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mStatusBarExpanding:Z

    if-eqz v2, :cond_3

    .line 481
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mScreenOn:Z

    if-eqz v2, :cond_2

    .line 482
    const/16 v2, 0x18

    if-ge v2, v0, :cond_3

    .line 483
    const/16 v0, 0x18

    goto :goto_1

    .line 485
    :cond_2
    const/16 v0, 0x18

    .line 489
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->PackageWhiteList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 490
    const/16 v0, 0x17

    .line 493
    :cond_4
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    const/16 v3, 0x1b

    if-eqz v2, :cond_8

    .line 494
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mVisiblePackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_8

    .line 495
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mVisiblePackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 496
    .local v4, "stackId":I
    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mVisiblePackages:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 498
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 499
    :try_start_1
    iget-object v7, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 500
    iget-object v7, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 501
    .local v7, "mode":I
    const-string v8, "CABCController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "choosing CABC mode. stack id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", candidate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " needs mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v7    # "mode":I
    goto :goto_3

    .line 504
    :cond_5
    const-string v7, "CABCController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "choosing CABC mode. stack id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", candidate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " doesn\'t have mode request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_3
    monitor-exit v6

    .line 508
    .end local v4    # "stackId":I
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_2

    .line 507
    .restart local v4    # "stackId":I
    .restart local v5    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 510
    .end local v4    # "stackId":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_6
    if-ne v0, v3, :cond_7

    .line 511
    const-string v2, "CABCController"

    const-string v4, "Decide to use default CABC mode"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 513
    :cond_7
    const-string v2, "CABCController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decide to use CABC mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_8
    :goto_4
    if-ne v0, v3, :cond_a

    .line 521
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v2, :cond_9

    .line 522
    const-string v2, "CABCController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set CABC mode to default "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_9
    iget v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/CABCController;->setCABCMode(I)V

    goto :goto_5

    .line 526
    :cond_a
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v2, :cond_b

    .line 527
    const-string v2, "CABCController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set CABC mode to default "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_b
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/CABCController;->setCABCMode(I)V

    .line 531
    :goto_5
    return-void
.end method

.method private adjustCABCMode()V
    .locals 0

    .line 460
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->adiustBrightressCABCMode()V

    .line 462
    return-void
.end method

.method private getmodelprop()Z
    .locals 7

    .line 249
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 250
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 251
    .local v1, "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    .line 252
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcn/nubia/server/appmgmt/CABCController;->getModeMethod:Ljava/lang/reflect/Method;

    .line 253
    sget-object v2, Lcn/nubia/server/appmgmt/CABCController;->getModeMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "ro.product.model"

    aput-object v6, v5, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    .local v2, "value":Ljava/lang/String;
    const-string v4, "CABCController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "from systemproperties mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v4, "NX627J"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 256
    return v3

    .line 268
    .end local v1    # "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 269
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 266
    :catch_1
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 267
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 264
    :catch_2
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 265
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 262
    :catch_3
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 263
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 260
    :catch_4
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 261
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 258
    :catch_5
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 270
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    nop

    .line 271
    :goto_1
    return v0
.end method

.method private initPackageWhiteList()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->PackageWhiteList:Ljava/util/List;

    const-string v1, "cn.nubia.factory"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->PackageWhiteList:Ljava/util/List;

    const-string v1, "com.spectracal.mobileforge"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->PackageWhiteList:Ljava/util/List;

    const-string v1, "cn.nubia.video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->getmodelprop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->PackageWhiteList:Ljava/util/List;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    return-void
.end method

.method private initSettings()V
    .locals 2

    .line 114
    const-string/jumbo v0, "security_cabc_manager.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mXmlOperator:Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/CABCController$XmlData;

    .line 116
    .local v0, "data":Lcn/nubia/server/appmgmt/CABCController$XmlData;
    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$000(Lcn/nubia/server/appmgmt/CABCController$XmlData;)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    .line 118
    invoke-static {v0}, Lcn/nubia/server/appmgmt/CABCController$XmlData;->access$100(Lcn/nubia/server/appmgmt/CABCController$XmlData;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    .line 120
    .end local v0    # "data":Lcn/nubia/server/appmgmt/CABCController$XmlData;
    :cond_0
    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->loadCABCFromNubiaDb()V

    .line 123
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->initPackageWhiteList()V

    .line 124
    return-void
.end method

.method private loadCABCFromNubiaDb()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->loadCABCSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/CABCController;->loadDefaultSettings()V

    .line 140
    :cond_0
    return-void
.end method

.method private loadCABCSettings()Z
    .locals 12

    .line 203
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 204
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

    .line 204
    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 205
    if-nez v2, :cond_1

    .line 206
    nop

    .line 225
    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :cond_0
    return v0

    .line 208
    :cond_1
    :try_start_1
    const-string/jumbo v4, "type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 209
    .local v4, "typeIndex":I
    const-string/jumbo v5, "package"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 210
    .local v5, "pkgIndex":I
    const-string/jumbo v6, "mode"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 211
    .local v6, "modeIndex":I
    const/4 v7, -0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 212
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 213
    .local v7, "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 214
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, "type":Ljava/lang/String;
    const-string v9, "default"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 216
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 217
    .local v9, "mode":I
    iput v9, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    .line 218
    .end local v9    # "mode":I
    goto :goto_1

    :cond_2
    const-string v9, "app"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 219
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, "pkg":Ljava/lang/String;
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 221
    .local v10, "mode":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "mode":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 224
    :cond_4
    iput-object v7, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    .end local v4    # "typeIndex":I
    .end local v5    # "pkgIndex":I
    .end local v6    # "modeIndex":I
    .end local v7    # "cacheModes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_5

    :try_start_2
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_5
    nop

    .line 229
    iget-object v4, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 230
    :try_start_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mXmlOperator:Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;

    new-instance v2, Lcn/nubia/server/appmgmt/CABCController$XmlData;

    iget v3, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    iget-object v5, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-direct {v2, p0, v3, v5}, Lcn/nubia/server/appmgmt/CABCController$XmlData;-><init>(Lcn/nubia/server/appmgmt/CABCController;ILandroid/util/ArrayMap;)V

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/CABCController$CABCXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 231
    monitor-exit v4

    .line 232
    const/4 v0, 0x1

    return v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 225
    .restart local v2    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    goto :goto_2

    .line 204
    :catch_0
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 225
    :goto_2
    if-eqz v2, :cond_6

    :try_start_5
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 225
    .end local v2    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CABCController"

    const-string v4, "fail read from database"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v0
.end method

.method private loadDefaultSettings()V
    .locals 7

    .line 275
    const/16 v0, 0x19

    iput v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    .line 276
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.gallery3d"

    const/16 v4, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.photoeditor"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.android.systemui"

    const/16 v5, 0x18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.minilauncher"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.video"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.qiyi.video"

    const/16 v5, 0x1a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string/jumbo v3, "tv.pps.mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.letv.android.client"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.letv.android.client.pad"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.ifeng.newvideo"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.cmcc.cmvideo"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.tudou.android"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.sohu.sohuvideo"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.baidu.video"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.tencent.qqlive"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.funshion.video.mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.yingshi2345"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.qihoo.video"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.letv.android.client.samsungpad"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.pplive.androidphone"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.android.gallery3d"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.baidu.cloud.gallery"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.bluecrane.album"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.photosoft.android.tool0822"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.android.camera"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.accounts"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "cn.nubia.setupwizard"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v3, "com.android.provision"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.pplive.androidphone.nubia"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.storm.smart"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "air.tv.douyu.android"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.youku.phone"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.ss.android.article.video"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.lesports.glivesports"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.meelive.ingkee"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.panda.videoliveplatform"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.huajiao"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.duowan.kiwi"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.longzhu.tga"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.ss.android.ugc.live"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.duowan.mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string/jumbo v2, "tv.danmaku.bili"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.ss.android.ugc.aweme"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.netease.edu.study"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string/jumbo v2, "org.keke.tv.vod"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.smile.gifmaker"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string/jumbo v2, "peace.org.tm.android"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.google.android.youtube Youtube"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    const-string v2, "com.meitu.meipaimv"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readCurrentBrightness()I
    .locals 5

    .line 393
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/CABCController;->mBrightness:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 394
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 396
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    :try_start_2
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 396
    return v4

    .line 398
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 401
    .end local v1    # "br":Ljava/io/BufferedReader;
    nop

    .line 402
    return v0

    .line 398
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 393
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CABCController"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    return v0
.end method

.method private readCurrentMode()I
    .locals 5

    .line 236
    const/16 v0, 0x1b

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 237
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 239
    return v4

    .line 241
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    .end local v1    # "br":Ljava/io/BufferedReader;
    nop

    .line 245
    return v0

    .line 241
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 236
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CABCController"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    return v0
.end method

.method private setCABCMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 446
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "CABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "real set CABC mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mCABCFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 450
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v1, 0x0

    .line 451
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :try_start_2
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 454
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 452
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/CABCController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 452
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CABCController"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 668
    const-string v0, "==========managed CABC apps=========="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/appmgmt/CABCController;->mDefaultCABCMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

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

    .line 672
    .local v2, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/CABCController;->mAppCABCModes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 674
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 676
    return-void

    .line 674
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

    .line 371
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 372
    return-void

    .line 374
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 375
    const-string v0, "CABCController"

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

    .line 378
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/CABCController$RemoveStackRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method public noteAppTransitionAnimation(Z)V
    .locals 4
    .param p1, "execute"    # Z

    .line 405
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 406
    return-void

    .line 408
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 409
    const-string v0, "CABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute app transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    if-eqz p1, :cond_2

    .line 412
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    :cond_2
    return-void
.end method

.method public noteDisplayPowerModeChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 429
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 430
    return-void

    .line 432
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 433
    const-string v0, "CABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display power mode changed, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;I)V

    .line 437
    .local v0, "ndpmcr":Lcn/nubia/server/appmgmt/CABCController$NoteDisplayPowerModeChangedRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isVisiblePackage"    # Z
    .param p6, "topActivityPackageName"    # Ljava/lang/String;

    .line 358
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 359
    return-void

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "CABCController"

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

    const-string v2, ", isVisiblePackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", topActivityPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 382
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 386
    const-string v0, "CABCController"

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

    .line 390
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcn/nubia/server/appmgmt/CABCController$NotePausingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .line 343
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 344
    return-void

    .line 345
    :cond_0
    if-nez p3, :cond_1

    .line 346
    return-void

    .line 348
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_2

    .line 349
    const-string v0, "CABCController"

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

    .line 352
    :cond_2
    new-instance v0, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;

    invoke-direct {v0, p0, p2, p3, p5}, Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;-><init>(Lcn/nubia/server/appmgmt/CABCController;ILjava/lang/String;Z)V

    .line 353
    .local v0, "nrar":Lcn/nubia/server/appmgmt/CABCController$NoteResumingActivityRunnable;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method public noteStatusBarExpanding(Z)V
    .locals 3
    .param p1, "expanding"    # Z

    .line 417
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-nez v0, :cond_0

    .line 418
    return-void

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    .line 421
    const-string v0, "CABCController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status bar expanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/CABCController;->mStatusBarExpanding:Z

    .line 425
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mAdjustCABCRunnable:Lcn/nubia/server/appmgmt/CABCController$AdjustCABCRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 338
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/CABCController;->mDumpDebugLog:Z

    .line 339
    return-void
.end method

.method public updateNubiaData()V
    .locals 2

    .line 679
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mSupportCABCControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mQueryCABCRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcn/nubia/server/appmgmt/CABCController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/CABCController;->mQueryCABCRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    :cond_0
    return-void
.end method
