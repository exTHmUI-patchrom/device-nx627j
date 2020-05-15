.class public Lcn/nubia/server/appmgmt/ApplicationPowerController;
.super Ljava/lang/Object;
.source "ApplicationPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;,
        Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;,
        Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    }
.end annotation


# static fields
.field private static final ALARM_USER_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/wakeup_alarm_table"

.field private static final ALARM_USER_SWITCH_FILE:Ljava/lang/String; = "security_alarm_user_switch.xml"

.field private static final ATTR_ALARM:Ljava/lang/String; = "allow_alarm"

.field private static final ATTR_APP_NAME:Ljava/lang/String; = "package"

.field private static final ATTR_WAKE_LOCK:Ljava/lang/String; = "allow_wakelock"

.field private static final CHECK_OPTIMIZE_ALARM:I = 0x2

.field private static final CHECK_OPTIMIZE_WAKELOCK:I = 0x1

.field private static final NUBIA_POWER_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/nubia_power_manage_table"

.field private static final NUBIA_POWER_MANAGER_FILE:Ljava/lang/String; = "security_nubia_app_power_manager.xml"

.field private static final TABLE_ALARM_STATUS_COLUMN:Ljava/lang/String; = "alarm_control"

.field private static final TABLE_NUBIA_PKG_COLUMN:Ljava/lang/String; = "application"

.field private static final TABLE_WAKELOCK_STATUS_COLUMN:Ljava/lang/String; = "wakelock_control"

.field private static final TAG:Ljava/lang/String; = "ApplicationPowerController"

.field private static final TAG_APP:Ljava/lang/String; = "app"


# instance fields
.field private mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

.field private final mAppPowerFile:Ljava/io/File;

.field private mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mManagedNubiaApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedNubiaLock:Ljava/lang/Object;

.field private mManagedOtherApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedOtherLock:Ljava/lang/Object;

.field private final mNubiaAppPowerFile:Ljava/io/File;

.field private mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

.field private mQueryAppPowerRunnable:Ljava/lang/Runnable;

.field private mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 402
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

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/AppLevelController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "appLevelController"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
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
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mDumpDebugLog:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    .line 285
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    .line 293
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$2;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    .line 65
    const-string/jumbo v0, "security_alarm_user_switch.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppPowerFile:Ljava/io/File;

    .line 67
    const-string/jumbo v0, "security_nubia_app_power_manager.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppPowerFile:Ljava/io/File;

    .line 69
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppPowerFile:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    .line 70
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppPowerFile:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    .line 71
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->initData()V

    .line 72
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;-><init>(Lcn/nubia/server/appmgmt/ApplicationPowerController;Landroid/os/Handler;)V

    .line 73
    .local v0, "observer":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerControlObserver;->observe()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/ApplicationPowerController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 22
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadManagedOtherApps()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/ApplicationPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPowerController;

    .line 22
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadNubiaPowerData()V

    return-void
.end method

.method private allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z
    .locals 1
    .param p1, "control"    # Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    .param p2, "type"    # I

    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, "result":Z
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 247
    :pswitch_0
    iget-boolean v0, p1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mAlarm:Z

    .line 248
    goto :goto_0

    .line 244
    :pswitch_1
    iget-boolean v0, p1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;->mWakelock:Z

    .line 245
    nop

    .line 252
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initData()V
    .locals 3

    .line 302
    const-string/jumbo v0, "security_alarm_user_switch.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 304
    .local v0, "oApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_0
    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    .line 307
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 309
    .end local v0    # "oApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_0
    :goto_0
    goto :goto_1

    .line 310
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadManagedOtherApps()V

    .line 312
    :goto_1
    const-string/jumbo v0, "security_nubia_app_power_manager.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 314
    .local v0, "nApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    if-eqz v0, :cond_2

    .line 315
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_1
    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    .line 317
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 319
    .end local v0    # "nApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :cond_2
    :goto_2
    goto :goto_3

    .line 320
    :cond_3
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadNubiaPowerData()V

    .line 322
    :goto_3
    return-void
.end method

.method private loadDefaultNubiaPowerData()V
    .locals 5

    .line 438
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.zdworks.android.zdclock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.dotools.clock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.clocktalent"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.malangstudio.alarmmon"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.smartisan.clock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.buykee.beautyclock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.dianxinos.clock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.baiyicare.healthalarm"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.google.android.deskclock"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.youan.alarm"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.crossmo.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.when.coco"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.lenovo.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.baidu.smartcalendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "cn.etouch.ecalendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string/jumbo v2, "oms.mmc.app.almanac_inland"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string/jumbo v2, "me.iweek.rili"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.zdworks.android.zdcalendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.lgl.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    const-string v2, "com.youloft.calendar"

    new-instance v3, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v3, v4, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadManagedNubiaApps()Z
    .locals 12

    .line 384
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 385
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "content://cn.nubia.security.power/nubia_power_manage_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 385
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 386
    if-nez v2, :cond_1

    .line 387
    nop

    .line 402
    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 387
    :cond_0
    return v0

    .line 388
    :cond_1
    :try_start_1
    const-string v4, "application"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 389
    .local v4, "appNameIndex":I
    const-string/jumbo v5, "wakelock_control"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 390
    .local v5, "wakelockIndex":I
    const-string v6, "alarm_control"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 391
    .local v6, "alarmIndex":I
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 392
    .local v7, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    const/4 v8, -0x1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 393
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    .line 394
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, "name":Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_2

    move v10, v9

    goto :goto_1

    :cond_2
    move v10, v0

    .line 396
    .local v10, "wakelockControl":Z
    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_3

    goto :goto_2

    :cond_3
    move v9, v0

    .line 397
    .local v9, "alarmControl":Z
    :goto_2
    new-instance v11, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v11, v10, v9}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v7, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "alarmControl":Z
    .end local v10    # "wakelockControl":Z
    goto :goto_0

    .line 399
    :cond_4
    iget-object v8, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 400
    :try_start_2
    iput-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    .line 401
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 402
    .end local v4    # "appNameIndex":I
    .end local v5    # "wakelockIndex":I
    .end local v6    # "alarmIndex":I
    .end local v7    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    if-eqz v2, :cond_5

    :try_start_3
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 405
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_5
    nop

    .line 406
    iget-object v10, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v10

    .line 407
    :try_start_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mNubiaAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 408
    monitor-exit v10

    .line 409
    return v9

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 401
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "appNameIndex":I
    .restart local v5    # "wakelockIndex":I
    .restart local v6    # "alarmIndex":I
    .restart local v7    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catchall_1
    move-exception v9

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 402
    .end local v4    # "appNameIndex":I
    .end local v5    # "wakelockIndex":I
    .end local v6    # "alarmIndex":I
    .end local v7    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catchall_2
    move-exception v4

    goto :goto_3

    .line 385
    :catch_0
    move-exception v3

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 402
    :goto_3
    if-eqz v2, :cond_6

    :try_start_8
    invoke-static {v3, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 402
    .end local v2    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    .line 403
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationPowerController"

    const-string v4, "failed load nubia default apps"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v0
.end method

.method private loadManagedOtherApps()V
    .locals 10

    .line 413
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 414
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v0, "content://cn.nubia.security.power/wakeup_alarm_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 415
    if-nez v0, :cond_1

    .line 429
    if-eqz v0, :cond_0

    invoke-static {v2, v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 416
    :cond_0
    return-void

    .line 417
    :cond_1
    :try_start_1
    const-string v3, "application"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 418
    .local v3, "appNameIndex":I
    const-string v4, "alarm_control"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 419
    .local v4, "alarmIndex":I
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 420
    .local v5, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    const/4 v6, -0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 421
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 422
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 423
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_2

    move v7, v8

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 424
    .local v7, "alarmControl":Z
    :goto_1
    new-instance v9, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {v9, v8, v7}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;-><init>(ZZ)V

    invoke-virtual {v5, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "alarmControl":Z
    goto :goto_0

    .line 426
    :cond_3
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 427
    :try_start_2
    iput-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    .line 428
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    .end local v3    # "appNameIndex":I
    .end local v4    # "alarmIndex":I
    .end local v5    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    if-eqz v0, :cond_4

    :try_start_3
    invoke-static {v2, v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 431
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_4
    goto :goto_3

    .line 428
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "appNameIndex":I
    .restart local v4    # "alarmIndex":I
    .restart local v5    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 429
    .end local v3    # "appNameIndex":I
    .end local v4    # "alarmIndex":I
    .end local v5    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;>;"
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 414
    :catch_0
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 429
    :goto_2
    if-eqz v0, :cond_5

    :try_start_7
    invoke-static {v2, v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ApplicationPowerController"

    const-string v3, "failed load other apps"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_8
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 434
    monitor-exit v0

    .line 435
    return-void

    .line 434
    :catchall_2
    move-exception v2

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2
.end method

.method private loadNubiaPowerData()V
    .locals 1

    .line 325
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadManagedNubiaApps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->loadDefaultNubiaPowerData()V

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public allowAppAlarm(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 185
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 186
    return v0

    .line 189
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/AppLevelController;->getAppLevelMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 190
    .local v1, "appLevelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 192
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_1
    return v0
.end method

.method public allowAppFullWakeLockScreenOff(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 133
    return v0

    .line 136
    :cond_0
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    return v0

    .line 140
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public allowAppPartialWakelock(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 101
    return v0

    .line 104
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/AppLevelController;->getAppLevelMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 105
    .local v1, "appLevelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isSpecialApp(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0

    .line 109
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    .line 110
    return v0

    .line 111
    :cond_3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 112
    return v3

    .line 117
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 118
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {p0, v2, v0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v0

    return v0

    .line 120
    :cond_5
    return v0
.end method

.method public allowAppWakeupAlarm(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 144
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mInternationalFeature:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->isCstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    if-nez p1, :cond_1

    .line 149
    return v1

    .line 152
    :cond_1
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isManageWakeupAlarm(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 153
    return v2

    .line 156
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppLevelController;->getAppLevelMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 157
    .local v0, "appLevelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    .line 158
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isSpecialApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v4, :cond_4

    .line 160
    return v1

    .line 163
    :cond_3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_4

    .line 164
    return v1

    .line 169
    :cond_4
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 170
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {p0, v1, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v1

    return v1

    .line 173
    :cond_5
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 174
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    invoke-direct {p0, v1, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v1

    return v1

    .line 177
    :cond_6
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 178
    return v1

    .line 181
    :cond_7
    return v2

    .line 145
    .end local v0    # "appLevelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    :goto_0
    return v1
.end method

.method public allowFreezeAppWakeupAlarm(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 77
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mInternationalFeature:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->isCstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    if-nez p1, :cond_1

    .line 82
    return v1

    .line 85
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppLevelController;->getAppLevelMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 86
    .local v0, "appLevelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 88
    const/4 v1, 0x1

    return v1

    .line 89
    :cond_2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 90
    return v1

    .line 93
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v1

    return v1

    .line 96
    :cond_4
    return v1

    .line 78
    .end local v0    # "appLevelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    :goto_0
    return v1
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 213
    const-string v0, "==========managed nubia apps============="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedNubiaApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    .line 217
    .local v5, "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", allow wakeup alarm="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-direct {p0, v5, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", allow partial wakelock="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {p0, v5, v3}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v5    # "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    goto :goto_0

    .line 221
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 224
    const-string v0, "==========managed other apps============="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mManagedOtherApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;

    .line 228
    .restart local v5    # "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", allow wakeup alarm="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {p0, v5, v4}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", allow partial wakelock="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {p0, v5, v3}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowPowerConsumption(Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v5    # "pc":Lcn/nubia/server/appmgmt/ApplicationPowerController$PowerController;
    goto :goto_1

    .line 232
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 234
    return-void

    .line 232
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 221
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public isCstRunning()Z
    .locals 3

    .line 200
    const-string v0, "1"

    const-string/jumbo v1, "persist.sys.nubia.cts.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 124
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {p1, p2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 125
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateNubiaData()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryAppPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPowerController;->mQueryNubiaAPowerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_1
    return-void
.end method
