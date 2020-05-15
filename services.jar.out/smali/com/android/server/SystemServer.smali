.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:J = 0x2000000L

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303d6

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.things.services.IoTSystemService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LAST_SPACE_FILE:Ljava/lang/String; = "/data/system/last_space"

.field private static final LAST_SPACE_SIZE:J = 0x500000L

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONFIG_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.WearConfigManagerService"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 170
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 382
    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 386
    return-void
.end method

.method private static createLastSpaceFile()V
    .locals 5

    .line 344
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/last_space"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x500000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 348
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    new-instance v1, Lcom/android/server/SystemServer$1;

    const-string/jumbo v2, "lastspace-create"

    invoke-direct {v1, v2}, Lcom/android/server/SystemServer$1;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Lcom/android/server/SystemServer$1;->start()V

    .line 375
    :cond_1
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .line 659
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 660
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 661
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10303d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 663
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 664
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 665
    return-void
.end method

.method private deleteCloneUserIfSDKUpdateFromN(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 559
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 563
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getSdkVersionBeforeUpgrade()I

    move-result v1

    .line 564
    .local v1, "sdkVersion":I
    if-nez v1, :cond_1

    .line 565
    return v0

    .line 567
    :cond_1
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->getCurSdkVersion()I

    move-result v2

    .line 569
    .local v2, "curSdkVersion":I
    const-string v3, "NeoSafe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cur sdk : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",upgrade sdk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-ge v1, v3, :cond_5

    if-lt v2, v3, :cond_5

    .line 571
    const-string v3, "NeoSafe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete clone ,upgrade from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :try_start_0
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 574
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserCount()I

    move-result v5

    if-le v5, v4, :cond_4

    .line 575
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 576
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 577
    .local v7, "user":Landroid/content/pm/UserInfo;
    const-string v8, "clone"

    iget-object v9, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 578
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v8}, Landroid/os/UserManager;->removeUser(I)Z

    .line 579
    const-string v8, "NeoSafe"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removed user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    goto :goto_0

    .line 582
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    goto :goto_1

    .line 583
    :cond_4
    const-string v5, "NeoSafe"

    const-string/jumbo v6, "only one user."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_1
    return v4

    .line 586
    .end local v3    # "userManager":Landroid/os/UserManager;
    :catch_0
    move-exception v3

    .line 587
    .local v3, "re":Ljava/lang/Exception;
    const-string v4, "NeoSafe"

    const-string/jumbo v5, "unable to remove user"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return v0

    .line 591
    .end local v3    # "re":Ljava/lang/Exception;
    :cond_5
    return v4

    .line 560
    .end local v1    # "sdkVersion":I
    .end local v2    # "curSdkVersion":I
    :cond_6
    :goto_2
    return v0
.end method

.method private isFirstBootOrUpgrade()Z
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

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
    return v0
.end method

.method static synthetic lambda$startBootstrapServices$0()V
    .locals 4

    .line 835
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 837
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 838
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 839
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 840
    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .locals 4

    .line 933
    :try_start_0
    const-string v0, "SystemServer"

    const-string v1, "SecondaryZygotePreload"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 936
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "SecondaryZygotePreload"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 937
    sget-object v1, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 938
    const-string v1, "SystemServer"

    const-string v2, "Unable to preload default resources"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v0    # "traceLog":Landroid/util/TimingsTraceLog;
    goto :goto_0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SystemServer"

    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .locals 4

    .line 1047
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 1049
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1050
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1051
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1052
    return-void
.end method

.method public static synthetic lambda$startOtherServices$3(Lcom/android/server/SystemServer;)V
    .locals 4

    .line 2027
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 2030
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2031
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2032
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 2033
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 2034
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2035
    return-void
.end method

.method public static synthetic lambda$startOtherServices$4(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p4, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p5, "ipSecServiceF"    # Lcom/android/server/IpSecService;
    .param p6, "networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p7, "connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p8, "locationF"    # Lcom/android/server/LocationManagerService;
    .param p9, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p10, "networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p11, "commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p12, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p13, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p14, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p15, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 2008
    const-string v0, "SystemServer"

    const-string v3, "Making services ready"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2010
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x226

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2012
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2013
    const-string v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2015
    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2018
    goto :goto_0

    .line 2016
    :catch_0
    move-exception v0

    .line 2017
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "observing native crashes"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2019
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2023
    const-string v3, "WebViewFactoryPreparation"

    .line 2024
    .local v3, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2025
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v4, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v4, :cond_0

    .line 2026
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v4

    new-instance v5, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v5, v1}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    const-string v6, "WebViewFactoryPreparation"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2038
    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v4, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    move-object v4, v0

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2039
    const-string v0, "StartCarServiceHelperService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2040
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2041
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2045
    :cond_1
    const-string v0, "StartPresetInstall"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2047
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/SystemServer;->startPresetInstall(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2050
    goto :goto_1

    .line 2048
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 2049
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Preset Installer"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2051
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2056
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->updateCurrentTheme(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2059
    goto :goto_2

    .line 2057
    :catch_2
    move-exception v0

    move-object v5, v0

    .line 2058
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "update Current Theme. "

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2061
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    const-string v0, "StartSystemUI"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2063
    :try_start_3
    invoke-static/range {p1 .. p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 2066
    goto :goto_3

    .line 2064
    :catch_3
    move-exception v0

    move-object v5, v0

    .line 2065
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting System UI"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2067
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2068
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2070
    if-eqz p3, :cond_2

    :try_start_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    .line 2071
    :catch_4
    move-exception v0

    move-object v6, v0

    .line 2072
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Network Managment Service ready"

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2072
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_5

    .line 2073
    :cond_2
    :goto_4
    nop

    .line 2074
    :goto_5
    const/4 v0, 0x0

    .line 2075
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_3

    .line 2076
    nop

    .line 2077
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2079
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v6, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :cond_3
    move-object v6, v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2080
    const-string v0, "MakeIpSecServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2082
    if-eqz p5, :cond_4

    :try_start_5
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    .line 2083
    :catch_5
    move-exception v0

    move-object v7, v0

    .line 2084
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making IpSec Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2084
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_7

    .line 2085
    :cond_4
    :goto_6
    nop

    .line 2086
    :goto_7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2087
    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2089
    if-eqz p6, :cond_5

    :try_start_6
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    .line 2090
    :catch_6
    move-exception v0

    move-object v8, v0

    .line 2091
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Network Stats Service ready"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2091
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_9

    .line 2092
    :cond_5
    :goto_8
    nop

    .line 2093
    :goto_9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2094
    const-string v0, "MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2096
    if-eqz p7, :cond_6

    :try_start_7
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_a

    .line 2097
    :catch_7
    move-exception v0

    move-object v9, v0

    .line 2098
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Connectivity Service ready"

    invoke-direct {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2098
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_b

    .line 2099
    :cond_6
    :goto_a
    nop

    .line 2100
    :goto_b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2101
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2103
    if-eqz v2, :cond_7

    .line 2104
    :try_start_8
    invoke-virtual {v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_c

    .line 2106
    :catch_8
    move-exception v0

    move-object v9, v0

    .line 2107
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Network Policy Service ready"

    invoke-direct {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2107
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_d

    .line 2108
    :cond_7
    :goto_c
    nop

    .line 2109
    :goto_d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2111
    const-string v0, "StartWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2112
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->start()V

    .line 2113
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2115
    const-string v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2117
    if-eqz p8, :cond_8

    :try_start_9
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_e

    .line 2118
    :catch_9
    move-exception v0

    move-object v10, v0

    .line 2119
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying Location Service running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2119
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_f

    .line 2120
    :cond_8
    :goto_e
    nop

    .line 2121
    :goto_f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2122
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2124
    if-eqz p9, :cond_9

    :try_start_a
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_10

    .line 2125
    :catch_a
    move-exception v0

    move-object v11, v0

    .line 2126
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v11, "Notifying CountryDetectorService running"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2126
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_11

    .line 2127
    :cond_9
    :goto_10
    nop

    .line 2128
    :goto_11
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2129
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2131
    if-eqz p10, :cond_a

    :try_start_b
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_12

    .line 2132
    :catch_b
    move-exception v0

    move-object v12, v0

    .line 2133
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v12, "Notifying NetworkTimeService running"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2133
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_13

    .line 2134
    :cond_a
    :goto_12
    nop

    .line 2135
    :goto_13
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2136
    const-string v0, "MakeCommonTimeManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2138
    if-eqz p11, :cond_b

    .line 2139
    :try_start_c
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_14

    .line 2141
    :catch_c
    move-exception v0

    move-object v13, v0

    .line 2142
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v13, "Notifying CommonTimeManagementService running"

    invoke-direct {v1, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2142
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_15

    .line 2143
    :cond_b
    :goto_14
    nop

    .line 2144
    :goto_15
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2145
    const-string v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2148
    if-eqz p12, :cond_c

    :try_start_d
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_16

    .line 2149
    :catch_d
    move-exception v0

    move-object v14, v0

    .line 2150
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v14, "Notifying InputManagerService running"

    invoke-direct {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2150
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_17

    .line 2151
    :cond_c
    :goto_16
    nop

    .line 2152
    :goto_17
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2153
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2155
    if-eqz p13, :cond_d

    :try_start_e
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_18

    .line 2156
    :catch_e
    move-exception v0

    move-object v15, v0

    .line 2157
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2157
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_19

    .line 2158
    :cond_d
    :goto_18
    nop

    .line 2159
    :goto_19
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2160
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2162
    if-eqz p14, :cond_e

    :try_start_f
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_1a

    .line 2163
    :catch_f
    move-exception v0

    move-object v15, v0

    .line 2164
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying MediaRouterService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2164
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1b

    .line 2165
    :cond_e
    :goto_1a
    nop

    .line 2166
    :goto_1b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2167
    const-string v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2169
    if-eqz p15, :cond_f

    :try_start_10
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_1c

    .line 2170
    :catch_10
    move-exception v0

    move-object v15, v0

    .line 2171
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying MmsService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2171
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1d

    .line 2172
    :cond_f
    :goto_1c
    nop

    .line 2173
    :goto_1d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2175
    const-string v0, "IncidentDaemonReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2179
    :try_start_11
    const-string/jumbo v0, "incident"

    .line 2180
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2179
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 2181
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 2184
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_10
    goto :goto_1e

    .line 2182
    :catch_11
    move-exception v0

    .line 2183
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "Notifying incident daemon running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2185
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2189
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 2193
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2195
    if-eqz v4, :cond_11

    .line 2196
    const-string v0, "WebViewFactoryPreparation"

    invoke-static {v4, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2198
    :cond_11
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2200
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2204
    invoke-static {}, Lcom/android/server/SystemServer;->createLastSpaceFile()V

    .line 2206
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 324
    invoke-static {}, Lcom/android/server/SystemServer;->removeLastSpaceFile()V

    .line 326
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 327
    return-void
.end method

.method private performPendingShutdown()V
    .locals 9

    .line 605
    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "shutdownAction":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 608
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    .line 611
    .local v2, "reboot":Z
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-le v3, v4, :cond_1

    .line 612
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    .line 614
    .end local v3    # "reason":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 622
    .restart local v3    # "reason":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 623
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 625
    move-object v7, v5

    .line 627
    .local v7, "filename":Ljava/lang/String;
    :try_start_0
    invoke-static {v6, v1, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v1

    .line 630
    goto :goto_2

    .line 628
    :catch_0
    move-exception v1

    .line 629
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SystemServer"

    const-string v8, "Error reading uncrypt package file"

    invoke-static {v5, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v7, :cond_2

    const-string v1, "/data"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    new-instance v1, Ljava/io/File;

    const-string v5, "/cache/recovery/block.map"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 634
    const-string v1, "SystemServer"

    const-string v4, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void

    .line 641
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/android/server/SystemServer$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 651
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v5

    .line 652
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 653
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 656
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "reboot":Z
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method private static removeLastSpaceFile()V
    .locals 8

    .line 331
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "statFs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v1

    .line 333
    .local v1, "free":J
    const-wide/32 v3, 0x2000000

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 334
    const-string v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemServer data free="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/last_space"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemServer delete lastspace size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 341
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 600
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    return-void
.end method

.method private run()V
    .locals 11

    .line 390
    :try_start_0
    const-string v0, "InitBeforeStartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 396
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 403
    :cond_0
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "timezoneProperty":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    :cond_1
    const-string v1, "SystemServer"

    const-string v2, "Timezone not set; setting to GMT."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string/jumbo v1, "persist.sys.timezone"

    const-string v2, "GMT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_2
    const-string/jumbo v1, "persist.sys.language"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 418
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "languageTag":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.locale"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v2, "persist.sys.language"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v2, "persist.sys.country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string/jumbo v2, "persist.sys.localevar"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .end local v1    # "languageTag":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 429
    invoke-static {v1}, Landroid/content/pm/PackageItemInfo;->setForceSafeLabels(Z)V

    .line 432
    const-string v2, "FULL"

    sput-object v2, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 435
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 438
    const-string v3, "SystemServer"

    const-string v4, "Entered the Android system server!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    .line 440
    .local v3, "uptimeMillis":I
    const/16 v4, 0xbc2

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 441
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_4

    .line 442
    const-string v4, "boot_system_server_init"

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 452
    :cond_4
    const-string/jumbo v4, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 459
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 463
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 467
    invoke-static {v1}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 471
    invoke-static {v1}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 474
    invoke-static {v1}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 477
    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 480
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 483
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 485
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 486
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 487
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 490
    invoke-static {}, Landroid/os/Looper;->enableLooperSample()V

    .line 494
    const-string v1, "android_servers"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 501
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 504
    new-instance v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 505
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 507
    const-class v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v1, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 509
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 511
    .end local v0    # "timezoneProperty":Ljava/lang/String;
    .end local v3    # "uptimeMillis":I
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 512
    nop

    .line 516
    :try_start_1
    const-string v0, "StartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 518
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 520
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startNubiaServicesAtFirst()V

    .line 522
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 524
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startNubiaServicesAtLast()V

    .line 526
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 533
    nop

    .line 535
    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 537
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_5

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    .line 539
    .local v0, "uptimeMillis":I
    const-string v1, "boot_system_server_ready"

    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 540
    const v1, 0xea60

    .line 541
    .local v1, "MAX_UPTIME_MILLIS":I
    const v2, 0xea60

    if-le v0, v2, :cond_5

    .line 542
    const-string v2, "SystemServerTiming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local v0    # "uptimeMillis":I
    .end local v1    # "MAX_UPTIME_MILLIS":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 548
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/SystemServer;->deleteCloneUserIfSDKUpdateFromN(Landroid/content/Context;)Z

    .line 553
    :cond_6
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 554
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v1, "System"

    const-string v2, "************ Failure starting system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    .line 511
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0
.end method

.method private startBootstrapServices()V
    .locals 9

    .line 675
    const-string v0, "SystemServer"

    const-string v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v0, "ReadingSystemConfig"

    .line 677
    .local v0, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v1, "ReadingSystemConfig"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v1

    sget-object v2, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    const-string v3, "ReadingSystemConfig"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 679
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 684
    const-string v1, "StartInstaller"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 685
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 686
    .local v1, "installer":Lcom/android/server/pm/Installer;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 690
    const-string v2, "DeviceIdentifiersPolicyService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 692
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 695
    const-string v2, "StartActivityManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 696
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 697
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 698
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 699
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 700
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 706
    const-string v2, "StartPowerManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 707
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 708
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 712
    const-string v2, "InitPowerManagement"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 713
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 714
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 717
    const-string v2, "StartRecoverySystemService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 718
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 719
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 724
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    .line 727
    const-string v2, "StartLightsService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 728
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 729
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 731
    const-string v2, "StartSidekickService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 733
    const-string v2, "config.enable_sidekick_graphics"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 736
    :cond_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 740
    const-string v2, "StartDisplayManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 742
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 745
    const-string v2, "WaitForDisplay"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 746
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 747
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 750
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "cryptState":Ljava/lang/String;
    const-string/jumbo v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 752
    const-string v4, "SystemServer"

    const-string v6, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 754
    :cond_1
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 755
    const-string v4, "SystemServer"

    const-string v6, "Device encrypted - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 760
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 761
    const-string v4, "SystemServer"

    const-string v6, "Regionalization Service"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 763
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v6, "regionalization"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 767
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/4 v6, 0x0

    if-nez v4, :cond_4

    .line 768
    const-string v4, "boot_package_manager_init_start"

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v7, v7

    .line 768
    invoke-static {v6, v4, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 771
    :cond_4
    const-string v4, "StartPackageManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 772
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v5, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 774
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 775
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 776
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 777
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v4

    if-nez v4, :cond_6

    .line 778
    const-string v4, "boot_package_manager_init_ready"

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v5, v7

    .line 778
    invoke-static {v6, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 784
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_7

    .line 785
    const-string v4, "config.disable_otadexopt"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 787
    .local v4, "disableOtaDexopt":Z
    if-nez v4, :cond_7

    .line 788
    const-string v5, "StartOtaDexOptService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 790
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    :goto_2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 795
    goto :goto_4

    .line 794
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 791
    :catch_0
    move-exception v5

    .line 792
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v6, "starting OtaDexOptService"

    invoke-direct {p0, v6, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    .end local v5    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 794
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v3

    .line 799
    .end local v4    # "disableOtaDexopt":Z
    :cond_7
    :goto_4
    const-string v4, "StartUserManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 800
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 801
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 804
    const-string v4, "InitAttributerCache"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 805
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 806
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 809
    const-string v4, "SetSystemProcess"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 810
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 811
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 815
    iget-object v4, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 818
    const-string v4, "StartOverlayManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 819
    new-instance v4, Lcom/android/server/om/OverlayManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    .line 821
    .local v4, "overlayManagerService":Lcom/android/server/om/OverlayManagerService;
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v4}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 822
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 824
    const-string/jumbo v5, "persist.sys.displayinset.top"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_8

    .line 826
    invoke-virtual {v4}, Lcom/android/server/om/OverlayManagerService;->updateSystemUiContext()V

    .line 827
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 834
    :cond_8
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v3

    sget-object v5, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v6, "StartSensorService"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 841
    return-void
.end method

.method private startCoreServices()V
    .locals 2

    .line 847
    const-string v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 850
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 853
    const-string v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 855
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 856
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 855
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 857
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 860
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    const-string v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 863
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 867
    :cond_0
    const-string v0, "StartBinderCallsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 868
    invoke-static {}, Lcom/android/server/BinderCallsStatsService;->start()V

    .line 869
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 870
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startNubiaServicesAtFirst()V
    .locals 2

    .line 2249
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    sget-object v1, Lcn/nubia/server/Sequence;->FIRST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/NubiaServer;->startServices(Lcom/android/server/SystemServiceManager;Lcn/nubia/server/Sequence;)V

    .line 2250
    return-void
.end method

.method private startNubiaServicesAtLast()V
    .locals 2

    .line 2253
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    sget-object v1, Lcn/nubia/server/Sequence;->LAST:Lcn/nubia/server/Sequence;

    invoke-static {v0, v1}, Lcn/nubia/server/NubiaServer;->startServices(Lcom/android/server/SystemServiceManager;Lcn/nubia/server/Sequence;)V

    .line 2254
    return-void
.end method

.method private startOtherServices()V
    .locals 73

    .line 877
    move-object/from16 v3, p0

    iget-object v2, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 878
    .local v2, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 879
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    const/4 v10, 0x0

    .line 880
    .local v10, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v11, 0x0

    .line 881
    .local v11, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 882
    .local v12, "ipSecService":Lcom/android/server/IpSecService;
    const/4 v13, 0x0

    .line 883
    .local v13, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/4 v14, 0x0

    .line 884
    .local v14, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/4 v15, 0x0

    .line 885
    .local v15, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v16, 0x0

    .line 886
    .local v16, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v17, 0x0

    .line 887
    .local v17, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v18, 0x0

    .line 888
    .local v18, "serial":Lcom/android/server/SerialService;
    const/16 v19, 0x0

    .line 889
    .local v19, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v20, 0x0

    .line 890
    .local v20, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/4 v4, 0x0

    .line 891
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v5, 0x0

    .line 892
    .local v5, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v6, 0x0

    .line 893
    .local v6, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v21, 0x0

    .line 894
    .local v21, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v22, 0x0

    .line 896
    .local v22, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v23, 0x0

    .line 898
    .local v23, "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    const/16 v24, 0x0

    .line 899
    .local v24, "wigigP2pService":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 901
    .local v25, "wigigService":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 904
    .local v26, "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 906
    .local v27, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 908
    .local v28, "disableCameraService":Z
    const-string v0, "config.disable_slices"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 909
    .local v29, "disableSlices":Z
    const-string v0, "config.enable_lefty"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 911
    .local v30, "enableLeftyService":Z
    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 912
    .local v31, "isEmulator":Z
    const-string/jumbo v0, "persist.vendor.wigig.enable"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 914
    .local v32, "enableWigig":Z
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.type.watch"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v33

    .line 917
    .local v33, "isWatch":Z
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v34

    .line 921
    .local v34, "enableVrService":Z
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "debug.crash_system"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 926
    :cond_1
    :goto_0
    :try_start_0
    const-string v0, "SecondaryZygotePreload"

    .line 931
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a

    :try_start_1
    sget-object v9, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    const-string v8, "SecondaryZygotePreload"

    invoke-virtual {v7, v9, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v7

    iput-object v7, v3, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 946
    const-string v7, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 947
    const-string/jumbo v7, "sec_key_att_app_id_provider"

    new-instance v8, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v8, v2}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 949
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 951
    const-string v7, "StartKeyChainSystemService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 952
    iget-object v7, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 953
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 955
    const-string v7, "StartSchedulingPolicyService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 956
    const-string/jumbo v7, "scheduling_policy"

    new-instance v8, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v8}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 957
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 959
    const-string v7, "StartTelecomLoaderService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 960
    iget-object v7, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 961
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 963
    const-string v7, "StartTelephonyRegistry"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 964
    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v2}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9

    move-object v9, v7

    .line 965
    .end local v5    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v9, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_2
    const-string/jumbo v5, "telephony.registry"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 966
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 968
    const-string v5, "StartEntropyMixer"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 969
    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v5, v3, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 970
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 972
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 975
    const-string v5, "StartAccountManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 976
    iget-object v5, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 977
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 979
    const-string v5, "StartContentService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 980
    iget-object v5, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 981
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 983
    const-string v5, "InstallSystemProviders"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 984
    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 986
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 987
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 992
    const-string v5, "StartDropBoxManager"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 993
    iget-object v5, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 994
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 996
    const-string v5, "StartVibratorService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 997
    const-string v5, "System"

    const-string v7, " SystemServer StartVibratorService"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v5, Lcom/android/server/VibratorService;

    invoke-direct {v5, v2}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8

    move-object v1, v5

    .line 999
    :try_start_3
    const-string/jumbo v5, "vibrator"

    invoke-static {v5, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1000
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    .line 1002
    if-nez v33, :cond_2

    .line 1003
    :try_start_4
    const-string v5, "StartConsumerIrService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1004
    new-instance v5, Lcom/android/server/ConsumerIrService;

    invoke-direct {v5, v2}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v6, v5

    .line 1005
    const-string v5, "consumer_ir"

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1006
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1116
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v37, v6

    move-object/from16 v35, v9

    move-object/from16 v42, v10

    move-object/from16 v5, v23

    const/4 v10, 0x0

    goto/16 :goto_a

    .line 1009
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v37, v6

    .line 1009
    .end local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v37, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_5
    const-string v5, "StartAlarmManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1010
    iget-object v5, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1011
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1013
    const-string v5, "InitWatchdog"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    move-object v8, v5

    .line 1015
    .local v8, "watchdog":Lcom/android/server/Watchdog;
    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v2, v5}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1016
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1018
    const-string v5, "StartInputManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1019
    new-instance v5, Lcom/android/server/input/InputManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v7, v5

    .line 1020
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v7, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1022
    const-string v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1024
    iget-object v4, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v5, "StartSensorService"

    invoke-static {v4, v5}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1025
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 1026
    iget v4, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iget-boolean v4, v3, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/16 v36, 0x1

    xor-int/lit8 v38, v4, 0x1

    iget-boolean v5, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v4}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v39, v4

    move-object v4, v2

    move/from16 v40, v5

    move-object v5, v7

    move-object/from16 v41, v1

    move-object v1, v7

    move/from16 v7, v38

    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v41, "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v42, v10

    move/from16 v10, v36

    move-object/from16 v36, v8

    move/from16 v8, v40

    .line 1026
    .end local v8    # "watchdog":Lcom/android/server/Watchdog;
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v36, "watchdog":Lcom/android/server/Watchdog;
    .local v42, "storageManager":Landroid/os/storage/IStorageManager;
    move-object/from16 v35, v9

    const/4 v10, 0x0

    move-object/from16 v9, v39

    .line 1026
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v35, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_7
    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1029
    .end local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v4, "wm":Lcom/android/server/wm/WindowManagerService;
    :try_start_8
    const-string/jumbo v5, "window"

    const/16 v6, 0x11

    invoke-static {v5, v4, v10, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1031
    const-string/jumbo v5, "input"

    const/4 v6, 0x1

    invoke-static {v5, v1, v10, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1033
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1035
    const-string v5, "SetWindowManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1036
    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1037
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1039
    const-string v5, "WindowManagerServiceOnInitReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1041
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1046
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    sget-object v6, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v7, "StartHidlServices"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1054
    if-nez v33, :cond_4

    if-eqz v34, :cond_4

    .line 1055
    const-string v5, "StartVrManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1056
    iget-object v5, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1057
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1060
    :cond_4
    const-string v5, "StartInputManager"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1062
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1063
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1065
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1066
    const-string v5, "EdgePointerEventService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1067
    new-instance v5, Lcn/nubia/server/edge/EdgePointerEventService;

    invoke-direct {v5, v2, v4, v1}, Lcn/nubia/server/edge/EdgePointerEventService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1068
    .end local v26    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .local v5, "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    :try_start_9
    const-string/jumbo v6, "nubia.edge.touch"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1069
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1074
    move-object/from16 v26, v5

    goto :goto_3

    .line 1116
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v36    # "watchdog":Lcom/android/server/Watchdog;
    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v26, v5

    goto/16 :goto_5

    .line 1074
    .end local v5    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .restart local v26    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v36    # "watchdog":Lcom/android/server/Watchdog;
    :cond_5
    :goto_3
    :try_start_a
    const-string v5, "TypefaceReloadService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1075
    new-instance v5, Lcn/nubia/server/theme/TypefaceReloadService;

    invoke-direct {v5}, Lcn/nubia/server/theme/TypefaceReloadService;-><init>()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    .line 1076
    .end local v23    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .local v5, "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    :try_start_b
    const-string v6, "cn.nubia.typefaceReloadService"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1081
    iget-object v6, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/am/ActivityManagerService;->setInputManager(Lcom/android/server/input/InputManagerService;)V

    .line 1085
    const-string v6, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1086
    iget-object v6, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1087
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1092
    if-eqz v31, :cond_6

    .line 1093
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1094
    :cond_6
    iget v6, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 1095
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1096
    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    .line 1097
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1098
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1100
    :cond_8
    const-string v6, "StartBluetoothService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1101
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1102
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1105
    :goto_4
    const-string v6, "IpConnectivityMetrics"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1106
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1107
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1109
    const-string v6, "NetworkWatchlistService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1110
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1111
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1113
    const-string v6, "PinnerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1114
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1115
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 1119
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v36    # "watchdog":Lcom/android/server/Watchdog;
    nop

    .line 1121
    move-object/from16 v23, v5

    move-object/from16 v7, v41

    move-object/from16 v72, v4

    move-object v4, v1

    move-object/from16 v1, v72

    goto/16 :goto_b

    .line 1116
    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_6

    .line 1116
    .end local v5    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v23    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    :catch_3
    move-exception v0

    move-object/from16 v17, v4

    .line 1116
    .end local v23    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v5    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_5
    move-object/from16 v5, v23

    :goto_6
    move-object v4, v1

    goto :goto_7

    .line 1116
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v23    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    :catch_4
    move-exception v0

    move-object v4, v1

    move-object/from16 v5, v23

    .line 1116
    .end local v23    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v5    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    :goto_7
    move-object/from16 v1, v41

    goto :goto_a

    .line 1116
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v23    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    :catch_5
    move-exception v0

    move-object/from16 v41, v1

    move-object v1, v7

    move-object/from16 v35, v9

    move-object/from16 v42, v10

    const/4 v10, 0x0

    move-object v4, v1

    move-object/from16 v5, v23

    move-object/from16 v1, v41

    .line 1116
    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_a

    .line 1116
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    :catch_6
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v35, v9

    move-object/from16 v42, v10

    const/4 v10, 0x0

    goto :goto_8

    .line 1116
    .end local v37    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :catch_7
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v35, v9

    move-object/from16 v42, v10

    const/4 v10, 0x0

    move-object/from16 v37, v6

    .line 1116
    .end local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v23    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v5    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v37    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_8
    move-object/from16 v5, v23

    .line 1116
    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_a

    .line 1116
    .end local v5    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v37    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v23    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    :catch_8
    move-exception v0

    move-object/from16 v35, v9

    move-object/from16 v42, v10

    const/4 v10, 0x0

    move-object/from16 v37, v6

    move-object/from16 v5, v23

    .line 1116
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_a

    .line 1116
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v5, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    :catch_9
    move-exception v0

    move-object/from16 v42, v10

    const/4 v10, 0x0

    goto :goto_9

    :catch_a
    move-exception v0

    move-object/from16 v42, v10

    move v10, v9

    .line 1116
    .end local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v23    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .local v5, "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_9
    move-object/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v5, v23

    .line 1117
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    :goto_a
    const-string v6, "System"

    const-string v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const-string v6, "System"

    const-string v7, "************ Failure starting core service"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    .end local v0    # "e":Ljava/lang/RuntimeException;
    move-object v7, v1

    move-object/from16 v23, v5

    move-object/from16 v1, v17

    .line 1121
    .end local v5    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    .end local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v1, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v7, "vibrator":Lcom/android/server/VibratorService;
    .restart local v23    # "typefaceReloadService":Lcn/nubia/server/theme/TypefaceReloadService;
    :goto_b
    const/4 v5, 0x0

    .line 1122
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v6, 0x0

    .line 1123
    .local v6, "notification":Landroid/app/INotificationManager;
    const/4 v8, 0x0

    .line 1124
    .local v8, "location":Lcom/android/server/LocationManagerService;
    const/4 v9, 0x0

    .line 1125
    .local v9, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v17, 0x0

    .line 1126
    .local v17, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v36, 0x0

    .line 1129
    .local v36, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_9

    .line 1130
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1131
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1132
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1134
    const-string v0, "StartAccessibilityManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1136
    :try_start_c
    const-string v0, "accessibility"

    new-instance v10, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v10, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    .line 1140
    goto :goto_c

    .line 1138
    :catch_b
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Accessibility Manager"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1141
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1144
    :cond_9
    const-string v0, "MakeDisplayReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1146
    :try_start_d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_c

    .line 1149
    goto :goto_d

    .line 1147
    :catch_c
    move-exception v0

    move-object v10, v0

    .line 1148
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making display ready"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1150
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1152
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_a

    .line 1153
    const-string v0, "0"

    const-string/jumbo v10, "system_init.startmountservice"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1154
    const-string v0, "StartStorageManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1160
    :try_start_e
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1161
    const-string/jumbo v0, "mount"

    .line 1162
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1161
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_d

    .line 1165
    .end local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    nop

    .line 1166
    move-object v10, v0

    goto :goto_e

    .line 1163
    .end local v0    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    :catch_d
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting StorageManagerService"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1166
    .end local v0    # "e":Ljava/lang/Throwable;
    move-object/from16 v10, v42

    .line 1166
    .end local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    :goto_e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1168
    const-string v0, "StartStorageStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1170
    :try_start_f
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    move-object/from16 v45, v5

    :try_start_10
    const-string v5, "com.android.server.usage.StorageStatsService$Lifecycle"

    .line 1170
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v45, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_e

    .line 1173
    goto :goto_10

    .line 1171
    :catch_e
    move-exception v0

    goto :goto_f

    .line 1171
    .end local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_f
    move-exception v0

    move-object/from16 v45, v5

    .line 1172
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_f
    const-string/jumbo v5, "starting StorageStatsService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1174
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_10
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1180
    move-object/from16 v42, v10

    goto :goto_11

    .line 1180
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v42    # "storageManager":Landroid/os/storage/IStorageManager;
    :cond_a
    move-object/from16 v45, v5

    .line 1180
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_11
    const-string v0, "StartUiModeManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1181
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1182
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1184
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_b

    .line 1185
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1187
    :try_start_11
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_10

    .line 1190
    goto :goto_12

    .line 1188
    :catch_10
    move-exception v0

    .line 1189
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "update packages"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1191
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1194
    :cond_b
    const-string v0, "PerformFstrimIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1198
    :try_start_12
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1199
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v0

    .line 1200
    .local v0, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 1201
    .local v5, "index":I
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v10

    .line 1202
    .local v10, "total":I
    move/from16 v46, v5

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1202
    .end local v5    # "index":I
    .local v46, "index":I
    move-object/from16 v47, v0

    move/from16 v0, v46

    .line 1202
    .end local v46    # "index":I
    .local v0, "index":I
    .local v47, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v49, v38

    check-cast v49, Ljava/lang/String;

    .line 1203
    .local v49, "pkg":Ljava/lang/String;
    move-object/from16 v55, v5

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v10, v5}, Lcom/android/server/wm/WindowManagerService;->showBootMessage(IIZ)V

    .line 1204
    iget-object v5, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    const/16 v50, 0x0

    .line 1206
    move-object/from16 v57, v6

    const/4 v6, 0x1

    :try_start_13
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v51

    .line 1206
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .local v57, "notification":Landroid/app/INotificationManager;
    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    .line 1204
    move-object/from16 v48, v5

    invoke-virtual/range {v48 .. v54}, Lcom/android/server/pm/PackageManagerService;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    .line 1211
    add-int/lit8 v0, v0, 0x1

    .line 1212
    .end local v49    # "pkg":Ljava/lang/String;
    nop

    .line 1202
    move-object/from16 v5, v55

    move-object/from16 v6, v57

    goto :goto_13

    .line 1215
    .end local v0    # "index":I
    .end local v10    # "total":I
    .end local v47    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_11
    move-exception v0

    goto :goto_14

    .line 1215
    .end local v57    # "notification":Landroid/app/INotificationManager;
    .restart local v6    # "notification":Landroid/app/INotificationManager;
    :cond_c
    move-object/from16 v57, v6

    .line 1215
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .restart local v57    # "notification":Landroid/app/INotificationManager;
    goto :goto_14

    .line 1215
    .end local v57    # "notification":Landroid/app/INotificationManager;
    .restart local v6    # "notification":Landroid/app/INotificationManager;
    :catch_12
    move-exception v0

    move-object/from16 v57, v6

    .line 1219
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .restart local v57    # "notification":Landroid/app/INotificationManager;
    :goto_14
    :try_start_14
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_13

    .line 1222
    goto :goto_15

    .line 1220
    :catch_13
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "performing fstrim"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1223
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_15
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1225
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_33

    .line 1226
    const-string v0, "StartLockSettingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1228
    :try_start_15
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1229
    const-string/jumbo v0, "lock_settings"

    .line 1230
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1229
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_14

    .line 1233
    .end local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    nop

    .line 1234
    move-object/from16 v17, v0

    goto :goto_16

    .line 1231
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_14
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting LockSettingsService service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1234
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_16
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1236
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    move v5, v0

    .line 1237
    .local v5, "hasPdb":Z
    if-eqz v5, :cond_d

    .line 1238
    const-string v0, "StartPersistentDataBlock"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1239
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1240
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1243
    :cond_d
    if-nez v5, :cond_e

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1245
    :cond_e
    const-string v0, "StartOemLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1246
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1247
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1250
    :cond_f
    const-string v0, "StartDeviceIdleController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1251
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1252
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1256
    const-string v0, "StartDevicePolicyManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1257
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1258
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1260
    if-nez v33, :cond_10

    .line 1261
    const-string v0, "StartStatusBarManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1263
    :try_start_16
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    move-object v6, v0

    .line 1264
    .end local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v6, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_17
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_15

    .line 1267
    goto :goto_18

    .line 1265
    :catch_15
    move-exception v0

    goto :goto_17

    .line 1265
    .end local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_16
    move-exception v0

    move-object/from16 v6, v45

    .line 1266
    .end local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_17
    const-string/jumbo v10, "starting StatusBarManagerService"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1268
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_18
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1271
    move-object/from16 v45, v6

    .line 1271
    .end local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_10
    const-string v0, "StartClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1272
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1273
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1275
    const-string v0, "StartNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1277
    :try_start_18
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    move-object v11, v0

    .line 1278
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_17

    .line 1281
    goto :goto_19

    .line 1279
    :catch_17
    move-exception v0

    .line 1280
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkManagement Service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1282
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_19
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1284
    const-string v0, "StartIpSecService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1286
    :try_start_19
    invoke-static {v2}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;)Lcom/android/server/IpSecService;

    move-result-object v0

    move-object v12, v0

    .line 1287
    const-string/jumbo v0, "ipsec"

    invoke-static {v0, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_18

    .line 1290
    goto :goto_1a

    .line 1288
    :catch_18
    move-exception v0

    .line 1289
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting IpSec Service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1291
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1293
    const-string v0, "StartTextServicesManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1294
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1295
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1297
    if-nez v27, :cond_11

    .line 1298
    const-string v0, "StartTextClassificationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1299
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1300
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1303
    :cond_11
    const-string v0, "StartNetworkScoreService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1304
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1305
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1307
    const-string v0, "StartNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1309
    :try_start_1a
    invoke-static {v2, v11}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v0

    move-object v13, v0

    .line 1310
    const-string/jumbo v0, "netstats"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_19

    .line 1313
    goto :goto_1b

    .line 1311
    :catch_19
    move-exception v0

    .line 1312
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkStats Service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1314
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1316
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1318
    :try_start_1b
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v6, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v2, v6, v11}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V

    move-object v14, v0

    .line 1320
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1a

    .line 1323
    goto :goto_1c

    .line 1321
    :catch_1a
    move-exception v0

    .line 1322
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkPolicy Service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1324
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1326
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_16

    .line 1327
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.wifi"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1330
    const-string v0, "StartWifi"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1331
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1332
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1333
    const-string v0, "StartWifiScanning"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1334
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1336
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1339
    :cond_12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1341
    const-string v0, "StartRttService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1342
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1344
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1347
    :cond_13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.wifi.aware"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1349
    const-string v0, "StartWifiAware"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1350
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1351
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1354
    :cond_14
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.wifi.direct"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1356
    const-string v0, "StartWifiP2P"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1357
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1358
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1361
    :cond_15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.lowpan"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1363
    const-string v0, "StartLowpan"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1364
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1365
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1369
    :cond_16
    if-eqz v32, :cond_17

    .line 1371
    :try_start_1c
    const-string v0, "SystemServer"

    const-string v6, "Wigig Service"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const-string v0, "/system/framework/wigig-service.jar:/system/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar"

    .line 1376
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v6, Ldalvik/system/PathClassLoader;

    .line 1377
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v6, v0, v10}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1378
    .local v6, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v10, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v6, v10}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1d

    .line 1380
    .local v10, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v59, v0

    move/from16 v58, v5

    const/4 v5, 0x1

    :try_start_1d
    new-array v0, v5, [Ljava/lang/Class;

    .line 1380
    .end local v0    # "wigigClassPath":Ljava/lang/String;
    .end local v5    # "hasPdb":Z
    .local v58, "hasPdb":Z
    .local v59, "wigigClassPath":Ljava/lang/String;
    const-class v5, Landroid/content/Context;

    const/16 v38, 0x0

    aput-object v5, v0, v38

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1c

    .line 1381
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v60, v8

    const/4 v5, 0x1

    :try_start_1e
    new-array v8, v5, [Ljava/lang/Object;

    .line 1381
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .local v60, "location":Lcom/android/server/LocationManagerService;
    aput-object v2, v8, v38

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    .line 1382
    const-string v5, "SystemServer"

    const-string v8, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v8, v24

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1385
    const-string v5, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v6, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1387
    .local v5, "wigigClass":Ljava/lang/Class;
    move-object/from16 v61, v0

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Class;

    .line 1387
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v61, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const-class v8, Landroid/content/Context;

    const/16 v38, 0x0

    aput-object v8, v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1388
    .end local v61    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v62, v5

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    .line 1388
    .end local v5    # "wigigClass":Ljava/lang/Class;
    .local v62, "wigigClass":Ljava/lang/Class;
    aput-object v2, v5, v38

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    .line 1389
    const-string v5, "SystemServer"

    const-string v8, "Successfully loaded WigigService class"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const-string/jumbo v5, "wigig"

    move-object/from16 v8, v25

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1b

    .line 1393
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v6    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v10    # "wigigP2pClass":Ljava/lang/Class;
    .end local v59    # "wigigClassPath":Ljava/lang/String;
    .end local v62    # "wigigClass":Ljava/lang/Class;
    goto :goto_1e

    .line 1391
    :catch_1b
    move-exception v0

    goto :goto_1d

    .line 1391
    .end local v60    # "location":Lcom/android/server/LocationManagerService;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :catch_1c
    move-exception v0

    move-object/from16 v60, v8

    .line 1391
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v60    # "location":Lcom/android/server/LocationManagerService;
    goto :goto_1d

    .line 1391
    .end local v58    # "hasPdb":Z
    .end local v60    # "location":Lcom/android/server/LocationManagerService;
    .local v5, "hasPdb":Z
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :catch_1d
    move-exception v0

    move/from16 v58, v5

    move-object/from16 v60, v8

    .line 1392
    .end local v5    # "hasPdb":Z
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v58    # "hasPdb":Z
    .restart local v60    # "location":Lcom/android/server/LocationManagerService;
    :goto_1d
    const-string/jumbo v5, "starting WigigService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1392
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1e

    .line 1396
    .end local v58    # "hasPdb":Z
    .end local v60    # "location":Lcom/android/server/LocationManagerService;
    .restart local v5    # "hasPdb":Z
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :cond_17
    move/from16 v58, v5

    move-object/from16 v60, v8

    .line 1396
    .end local v5    # "hasPdb":Z
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v58    # "hasPdb":Z
    .restart local v60    # "location":Lcom/android/server/LocationManagerService;
    :goto_1e
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    .line 1397
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1398
    :cond_18
    const-string v0, "StartEthernet"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1399
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1400
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1403
    :cond_19
    const-string v0, "StartConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1405
    :try_start_1f
    new-instance v0, Lcom/android/server/ConnectivityService;

    invoke-direct {v0, v2, v11, v13, v14}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V

    move-object v15, v0

    .line 1407
    const-string v0, "connectivity"

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static {v0, v15, v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1410
    invoke-virtual {v13, v15}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1411
    invoke-virtual {v14, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1e

    .line 1414
    goto :goto_1f

    .line 1412
    :catch_1e
    move-exception v0

    .line 1413
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Connectivity Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1415
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1417
    const-string v0, "StartNsdService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1419
    :try_start_20
    invoke-static {v2}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_20

    move-object v5, v0

    .line 1420
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .local v5, "serviceDiscovery":Lcom/android/server/NsdService;
    :try_start_21
    const-string/jumbo v0, "servicediscovery"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1f

    .line 1424
    goto :goto_21

    .line 1422
    :catch_1f
    move-exception v0

    goto :goto_20

    .line 1422
    .end local v5    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_20
    move-exception v0

    move-object/from16 v5, v16

    .line 1423
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_20
    const-string/jumbo v6, "starting Service Discovery Service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1425
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_21
    move-object/from16 v16, v5

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1427
    const-string v0, "StartSystemUpdateManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1429
    :try_start_22
    const-string/jumbo v0, "system_update"

    new-instance v5, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_21

    .line 1433
    goto :goto_22

    .line 1431
    :catch_21
    move-exception v0

    .line 1432
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SystemUpdateManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1434
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_22
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1436
    const-string v0, "StartUpdateLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1438
    :try_start_23
    const-string/jumbo v0, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v2}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_22

    .line 1442
    goto :goto_23

    .line 1440
    :catch_22
    move-exception v0

    .line 1441
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting UpdateLockService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1443
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_23
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1445
    const-string v0, "StartNotificationManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1446
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1447
    invoke-static {v2}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1448
    const-string/jumbo v0, "notification"

    .line 1449
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1448
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v6

    .line 1450
    .end local v57    # "notification":Landroid/app/INotificationManager;
    .local v6, "notification":Landroid/app/INotificationManager;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1452
    const-string v0, "StartDeviceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1453
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1454
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1456
    const-string v0, "StartLocationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1458
    :try_start_24
    new-instance v0, Lcom/android/server/LocationManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_24

    move-object v8, v0

    .line 1459
    .end local v60    # "location":Lcom/android/server/LocationManagerService;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :try_start_25
    const-string/jumbo v0, "location"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_23

    .line 1462
    goto :goto_25

    .line 1460
    :catch_23
    move-exception v0

    goto :goto_24

    .line 1460
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v60    # "location":Lcom/android/server/LocationManagerService;
    :catch_24
    move-exception v0

    move-object/from16 v8, v60

    .line 1461
    .end local v60    # "location":Lcom/android/server/LocationManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :goto_24
    const-string/jumbo v5, "starting Location Manager"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1463
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_25
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1465
    const-string v0, "StartCountryDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1467
    :try_start_26
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v2}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 1468
    const-string v0, "country_detector"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_25

    .line 1471
    goto :goto_26

    .line 1469
    :catch_25
    move-exception v0

    .line 1470
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Country Detector"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1472
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_26
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1474
    if-nez v33, :cond_1a

    .line 1475
    const-string v0, "StartSearchManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1477
    :try_start_27
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_26

    .line 1480
    goto :goto_27

    .line 1478
    :catch_26
    move-exception v0

    .line 1479
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Search Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1481
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_27
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1484
    :cond_1a
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x112006b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1485
    const-string v0, "StartWallpaperManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1486
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1487
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1490
    :cond_1b
    const-string v0, "StartAudioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1491
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1492
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1494
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.broadcastradio"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1495
    const-string v0, "StartBroadcastRadioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1496
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1497
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1500
    :cond_1c
    const-string v0, "StartDockObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1501
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1502
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1504
    if-eqz v33, :cond_1d

    .line 1505
    const-string v0, "StartThermalObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1506
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1507
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1510
    :cond_1d
    const-string v0, "StartWiredAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1513
    :try_start_28
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v2, v4}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v4, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_27

    .line 1517
    goto :goto_28

    .line 1515
    :catch_27
    move-exception v0

    .line 1516
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting WiredAccessoryManager"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1518
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_28
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1520
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.midi"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1522
    const-string v0, "StartMidiManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1523
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1524
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1527
    :cond_1e
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    .line 1528
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz v31, :cond_20

    .line 1532
    :cond_1f
    const-string v0, "StartUsbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1533
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1534
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1537
    :cond_20
    if-nez v33, :cond_21

    .line 1538
    const-string v0, "StartSerialService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1541
    :try_start_29
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v2}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_29

    move-object v5, v0

    .line 1542
    .end local v18    # "serial":Lcom/android/server/SerialService;
    .local v5, "serial":Lcom/android/server/SerialService;
    :try_start_2a
    const-string/jumbo v0, "serial"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_28

    .line 1545
    nop

    .line 1546
    move-object/from16 v63, v5

    goto :goto_2a

    .line 1543
    :catch_28
    move-exception v0

    goto :goto_29

    .line 1543
    .end local v5    # "serial":Lcom/android/server/SerialService;
    .restart local v18    # "serial":Lcom/android/server/SerialService;
    :catch_29
    move-exception v0

    move-object/from16 v5, v18

    .line 1544
    .end local v18    # "serial":Lcom/android/server/SerialService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "serial":Lcom/android/server/SerialService;
    :goto_29
    const-string v10, "SystemServer"

    move-object/from16 v63, v5

    const-string v5, "Failure starting SerialService"

    .line 1544
    .end local v5    # "serial":Lcom/android/server/SerialService;
    .local v63, "serial":Lcom/android/server/SerialService;
    invoke-static {v10, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1546
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1549
    move-object/from16 v18, v63

    .line 1549
    .end local v63    # "serial":Lcom/android/server/SerialService;
    .restart local v18    # "serial":Lcom/android/server/SerialService;
    :cond_21
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1551
    :try_start_2b
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_2b

    move-object v5, v0

    .line 1552
    .end local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v5, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_2c
    const-string v0, "hardware_properties"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_2a

    .line 1556
    nop

    .line 1557
    move-object/from16 v22, v5

    goto :goto_2c

    .line 1554
    :catch_2a
    move-exception v0

    goto :goto_2b

    .line 1554
    .end local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catch_2b
    move-exception v0

    move-object/from16 v5, v22

    .line 1555
    .end local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_2b
    const-string v10, "SystemServer"

    move-object/from16 v64, v5

    const-string v5, "Failure starting HardwarePropertiesManagerService"

    .line 1555
    .end local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v64, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    invoke-static {v10, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1557
    .end local v0    # "e":Ljava/lang/Throwable;
    move-object/from16 v22, v64

    .line 1557
    .end local v64    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_2c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1559
    const-string v0, "StartTwilightService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1560
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1561
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1563
    invoke-static {v2}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1564
    const-string v0, "StartNightDisplay"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1565
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1566
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1569
    :cond_22
    const-string v0, "StartJobScheduler"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1570
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1571
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1573
    const-string v0, "StartSoundTrigger"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1574
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1575
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1577
    const-string v0, "StartTrustManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1578
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1579
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1581
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1582
    const-string v0, "StartBackupManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1583
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1584
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1587
    :cond_23
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1588
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1120057

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1589
    :cond_24
    const-string v0, "StartAppWidgerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1590
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1591
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1598
    :cond_25
    const-string v0, "StartVoiceRecognitionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1599
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1600
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1602
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1603
    const-string v0, "StartGestureLauncher"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1604
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1605
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1607
    :cond_26
    const-string v0, "StartSensorNotification"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1608
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1609
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1617
    const-string v0, "StartDiskStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1619
    :try_start_2d
    const-string v0, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v2}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_2c

    .line 1622
    goto :goto_2d

    .line 1620
    :catch_2c
    move-exception v0

    .line 1621
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DiskStats Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1623
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1629
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_27

    .line 1630
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x112006a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_2e

    :cond_27
    const/4 v0, 0x0

    :goto_2e
    move v5, v0

    .line 1632
    .local v5, "startRulesManagerService":Z
    if-eqz v5, :cond_28

    .line 1633
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1634
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1635
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1638
    :cond_28
    if-nez v33, :cond_29

    .line 1639
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1641
    :try_start_2e
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v0, v2}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_2e

    move-object v10, v0

    .line 1642
    .end local v19    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v10, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_2f
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_2d

    .line 1645
    nop

    .line 1646
    move-object/from16 v19, v10

    goto :goto_30

    .line 1643
    :catch_2d
    move-exception v0

    move-object/from16 v19, v10

    goto :goto_2f

    .line 1643
    .end local v10    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v19    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2e
    move-exception v0

    .line 1644
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_2f
    const-string/jumbo v10, "starting NetworkTimeUpdate service"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1646
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_30
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1649
    :cond_29
    const-string v0, "StartCommonTimeManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1651
    :try_start_30
    new-instance v0, Lcom/android/server/CommonTimeManagementService;

    invoke-direct {v0, v2}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_30

    move-object v10, v0

    .line 1652
    .end local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v10, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_31
    const-string v0, "commontime_management"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_2f

    .line 1655
    nop

    .line 1656
    move/from16 v65, v5

    goto :goto_32

    .line 1653
    :catch_2f
    move-exception v0

    goto :goto_31

    .line 1653
    .end local v10    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_30
    move-exception v0

    move-object/from16 v10, v20

    .line 1654
    .end local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v10    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_31
    move/from16 v65, v5

    const-string/jumbo v5, "starting CommonTimeManagementService service"

    .line 1654
    .end local v5    # "startRulesManagerService":Z
    .local v65, "startRulesManagerService":Z
    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1656
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_32
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1658
    const-string v0, "CertBlacklister"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1660
    :try_start_32
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v2}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_31

    .line 1663
    goto :goto_33

    .line 1661
    :catch_31
    move-exception v0

    .line 1662
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting CertBlacklister"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1664
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_33
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1668
    const-string v0, "StartEmergencyAffordanceService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1669
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1670
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1674
    const-string v0, "StartDreamManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1675
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1676
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1678
    const-string v0, "AddGraphicsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1679
    const-string v0, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v2}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1681
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1683
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_2a

    .line 1684
    const-string v0, "AddCoverageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1685
    const-string v0, "coverage"

    new-instance v5, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v5}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1686
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1689
    :cond_2a
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1690
    const-string v0, "StartPrintManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1691
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1692
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1695
    :cond_2b
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.companion_device_setup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1696
    const-string v0, "StartCompanionDeviceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1697
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1698
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1701
    :cond_2c
    const-string v0, "StartRestrictionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1702
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1703
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1705
    const-string v0, "StartMediaSessionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1706
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1707
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1709
    const-string v0, "StartMediaUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1710
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaUpdateService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1711
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1713
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1714
    const-string v0, "StartHdmiControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1715
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1716
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1719
    :cond_2d
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    .line 1720
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1721
    :cond_2e
    const-string v0, "StartTvInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1722
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1723
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1726
    :cond_2f
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.picture_in_picture"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1727
    const-string v0, "StartMediaResourceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1728
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1729
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1732
    :cond_30
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1733
    const-string v0, "StartTvRemoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1734
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1735
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1738
    :cond_31
    const-string v0, "StartMediaRouterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1740
    :try_start_33
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v2}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_33

    move-object v5, v0

    .line 1741
    .end local v36    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v5, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_34
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_32

    .line 1744
    nop

    .line 1745
    move-object/from16 v66, v5

    goto :goto_35

    .line 1742
    :catch_32
    move-exception v0

    goto :goto_34

    .line 1742
    .end local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v36    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_33
    move-exception v0

    move-object/from16 v5, v36

    .line 1743
    .end local v36    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_34
    move-object/from16 v66, v5

    const-string/jumbo v5, "starting MediaRouterService"

    .line 1743
    .end local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v66, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1745
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_35
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1747
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1748
    const-string v0, "StartFingerprintSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1749
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1750
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1753
    :cond_32
    const-string v0, "StartBackgroundDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1755
    :try_start_35
    invoke-static {v2}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_34

    .line 1758
    goto :goto_36

    .line 1756
    :catch_34
    move-exception v0

    move-object v5, v0

    .line 1757
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StartBackgroundDexOptService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1759
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_36
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1761
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1763
    :try_start_36
    invoke-static {v2}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_35

    .line 1766
    goto :goto_37

    .line 1764
    :catch_35
    move-exception v0

    move-object v5, v0

    .line 1765
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v5, "StartPruneInstantAppsJobService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1767
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_37
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1770
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1771
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1772
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1774
    const-string v0, "StartLauncherAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1775
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1776
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1778
    const-string v0, "StartCrossProfileAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1779
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1780
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1783
    .end local v58    # "hasPdb":Z
    .end local v65    # "startRulesManagerService":Z
    move-object/from16 v57, v6

    move-object/from16 v60, v8

    move-object/from16 v41, v9

    move-object/from16 v39, v10

    move-object/from16 v20, v13

    move-object/from16 v36, v18

    move-object/from16 v38, v19

    move-object/from16 v40, v22

    move-object/from16 v13, v25

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v22, v14

    move-object/from16 v25, v16

    move-object/from16 v14, v24

    move-object/from16 v24, v15

    move-object/from16 v15, v17

    goto :goto_38

    .end local v6    # "notification":Landroid/app/INotificationManager;
    .end local v10    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v66    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v36    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v57    # "notification":Landroid/app/INotificationManager;
    :cond_33
    move-object/from16 v60, v8

    move-object/from16 v41, v9

    move-object/from16 v38, v19

    move-object/from16 v39, v20

    move-object/from16 v40, v22

    move-object/from16 v66, v36

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v22, v14

    move-object/from16 v36, v18

    move-object/from16 v14, v24

    move-object/from16 v13, v25

    move-object/from16 v18, v11

    move-object/from16 v24, v15

    move-object/from16 v25, v16

    move-object/from16 v15, v17

    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v11    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v12    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v13, "wigigService":Ljava/lang/Object;
    .local v14, "wigigP2pService":Ljava/lang/Object;
    .local v15, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v18, "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v19, "ipSecService":Lcom/android/server/IpSecService;
    .local v20, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v22, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v24, "connectivity":Lcom/android/server/ConnectivityService;
    .local v25, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v36, "serial":Lcom/android/server/SerialService;
    .local v38, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v40, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v41, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v60    # "location":Lcom/android/server/LocationManagerService;
    .restart local v66    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_38
    if-nez v33, :cond_34

    .line 1784
    const-string v0, "StartMediaProjectionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1785
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1786
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1789
    :cond_34
    if-eqz v33, :cond_36

    .line 1790
    const-string v0, "StartWearConfigService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1791
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.WearConfigManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1792
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1794
    const-string v0, "StartWearConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1795
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1796
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1798
    const-string v0, "StartWearTimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1799
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1800
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1801
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1803
    if-eqz v30, :cond_35

    .line 1804
    const-string v0, "StartWearLeftyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1805
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1806
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1809
    :cond_35
    const-string v0, "StartWearGlobalActionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1810
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1811
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1814
    :cond_36
    if-nez v29, :cond_37

    .line 1815
    const-string v0, "StartSliceManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1816
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1817
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1820
    :cond_37
    if-nez v28, :cond_38

    .line 1821
    const-string v0, "StartCameraServiceProxy"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1822
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1823
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1826
    :cond_38
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.type.embedded"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1827
    const-string v0, "StartIoTSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1828
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.things.services.IoTSystemService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1829
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1833
    :cond_39
    const-string v0, "StartStatsCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1834
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1835
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1839
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v12

    .line 1840
    .local v12, "safeMode":Z
    if-eqz v12, :cond_3a

    .line 1841
    const-string v0, "EnterSafeModeAndDisableJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1842
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1844
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1845
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_39

    .line 1848
    :cond_3a
    const-string v0, "StartJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1849
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 1850
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1854
    :goto_39
    const-string v0, "StartMmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1855
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/MmsServiceBroker;

    .line 1856
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1858
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.autofill"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1859
    const-string v0, "StartAutoFillService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1860
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1861
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1865
    :cond_3b
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BSPApplicationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1869
    const-string v0, "MakeVibratorServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1871
    :try_start_37
    invoke-virtual {v7}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_36

    .line 1874
    goto :goto_3a

    .line 1872
    :catch_36
    move-exception v0

    move-object v5, v0

    .line 1873
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Vibrator Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1875
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1877
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1878
    if-eqz v15, :cond_3c

    .line 1880
    :try_start_38
    invoke-interface {v15}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_37

    .line 1883
    goto :goto_3b

    .line 1881
    :catch_37
    move-exception v0

    move-object v5, v0

    .line 1882
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Lock Settings Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1885
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3c
    :goto_3b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1888
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1889
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1890
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1892
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1893
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1894
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1898
    if-eqz v32, :cond_3d

    .line 1900
    :try_start_39
    const-string v0, "SystemServer"

    const-string v6, "calling onBootPhase for Wigig Services"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1902
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v6, "onBootPhase"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v0, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1903
    .local v6, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v6, v14, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1907
    .local v8, "wigigClass":Ljava/lang/Class;
    const-string/jumbo v9, "onBootPhase"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v10, v11, v16

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v6, v9

    .line 1908
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x0

    aput-object v10, v9, v5

    invoke-virtual {v6, v13, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_38

    .line 1912
    .end local v0    # "wigigP2pClass":Ljava/lang/Class;
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "wigigClass":Ljava/lang/Class;
    goto :goto_3c

    .line 1910
    :catch_38
    move-exception v0

    .line 1911
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "Wigig services ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1915
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3d
    :goto_3c
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1918
    :try_start_3a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_39

    .line 1921
    goto :goto_3d

    .line 1919
    :catch_39
    move-exception v0

    move-object v5, v0

    .line 1920
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Window Manager Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1922
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1924
    if-eqz v12, :cond_3e

    .line 1925
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1931
    :cond_3e
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v11

    .line 1932
    .local v11, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v10, v0

    .line 1933
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/WindowManager;

    .line 1934
    .local v9, "w":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1935
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1938
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 1939
    .local v6, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v6}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 1940
    invoke-virtual {v6}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1943
    :cond_3f
    const-string v0, "MakePowerManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1946
    :try_start_3b
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v8, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_3a

    .line 1949
    goto :goto_3e

    .line 1947
    :catch_3a
    move-exception v0

    .line 1948
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Power Manager Service ready"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1950
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1952
    const-string v0, "MakePackageManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1953
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 1954
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1956
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1959
    :try_start_3c
    iget-object v0, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v8, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v12, v8}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_3b

    .line 1962
    goto :goto_3f

    .line 1960
    :catch_3b
    move-exception v0

    .line 1961
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Display Manager Service ready"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1963
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1965
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 1968
    const-string v0, "StartDeviceSpecificServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1969
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1070025

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1971
    .local v8, "classes":[Ljava/lang/String;
    array-length v5, v8

    move-object/from16 v67, v2

    const/4 v2, 0x0

    .line 1971
    .end local v2    # "context":Landroid/content/Context;
    .local v67, "context":Landroid/content/Context;
    :goto_40
    if-ge v2, v5, :cond_40

    move/from16 v68, v5

    aget-object v5, v8, v2

    .line 1972
    .local v5, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v69, v6

    const-string v6, "StartDeviceSpecificServices "

    .line 1972
    .end local v6    # "systemTheme":Landroid/content/res/Resources$Theme;
    .local v69, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1974
    :try_start_3d
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_3c

    .line 1977
    nop

    .line 1978
    move-object/from16 v70, v7

    goto :goto_41

    .line 1975
    :catch_3c
    move-exception v0

    .line 1976
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v70, v7

    const-string/jumbo v7, "starting "

    .line 1976
    .end local v7    # "vibrator":Lcom/android/server/VibratorService;
    .local v70, "vibrator":Lcom/android/server/VibratorService;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1978
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_41
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1971
    .end local v5    # "className":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v68

    move-object/from16 v6, v69

    move-object/from16 v7, v70

    goto :goto_40

    .line 1980
    .end local v69    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v70    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v7    # "vibrator":Lcom/android/server/VibratorService;
    :cond_40
    move-object/from16 v69, v6

    move-object/from16 v70, v7

    .line 1980
    .end local v6    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v7    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v69    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v70    # "vibrator":Lcom/android/server/VibratorService;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1982
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1983
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x208

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1984
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1987
    move-object/from16 v5, v18

    .line 1988
    .local v5, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v43, v8

    move-object/from16 v8, v20

    .line 1989
    .local v8, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .local v43, "classes":[Ljava/lang/String;
    move-object/from16 v44, v69

    move-object/from16 v6, v22

    .line 1990
    .end local v69    # "systemTheme":Landroid/content/res/Resources$Theme;
    .local v6, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v44, "systemTheme":Landroid/content/res/Resources$Theme;
    move-object/from16 v46, v9

    move-object/from16 v9, v24

    .line 1991
    .local v9, "connectivityF":Lcom/android/server/ConnectivityService;
    .local v46, "w":Landroid/view/WindowManager;
    move-object/from16 v47, v10

    move-object/from16 v10, v60

    .line 1992
    .local v10, "locationF":Lcom/android/server/LocationManagerService;
    .local v47, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v48, v11

    move-object/from16 v11, v41

    .line 1993
    .local v11, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .local v48, "config":Landroid/content/res/Configuration;
    move/from16 v49, v12

    move-object/from16 v12, v38

    .line 1994
    .local v12, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .local v49, "safeMode":Z
    move-object/from16 v50, v13

    move-object/from16 v13, v39

    .line 1995
    .local v13, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .local v50, "wigigService":Ljava/lang/Object;
    move-object/from16 v51, v14

    move-object v14, v4

    .line 1996
    .local v14, "inputManagerF":Lcom/android/server/input/InputManagerService;
    .local v51, "wigigP2pService":Ljava/lang/Object;
    move-object/from16 v52, v15

    move-object/from16 v15, v35

    .line 1997
    .local v15, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .local v52, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move-object/from16 v16, v66

    .line 1998
    .local v16, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v21

    .line 1999
    .local v17, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v53, v70

    move-object/from16 v7, v19

    .line 2000
    .end local v70    # "vibrator":Lcom/android/server/VibratorService;
    .local v7, "ipSecServiceF":Lcom/android/server/IpSecService;
    .local v53, "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v54, v4

    move-object v4, v1

    .line 2007
    .local v4, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v54, "inputManager":Lcom/android/server/input/InputManagerService;
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v2, Lcom/android/server/-$$Lambda$SystemServer$s9erd2iGXiS7bbg_mQJUxyVboQM;

    move-object/from16 v55, v1

    move-object v1, v2

    .line 2007
    .end local v1    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v55, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v71, v0

    move-object v0, v2

    move-object/from16 v56, v67

    move-object v2, v3

    .line 2007
    .end local v67    # "context":Landroid/content/Context;
    .local v56, "context":Landroid/content/Context;
    move-object/from16 v3, v56

    invoke-direct/range {v1 .. v17}, Lcom/android/server/-$$Lambda$SystemServer$s9erd2iGXiS7bbg_mQJUxyVboQM;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    sget-object v1, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v2, v71

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    .line 2207
    return-void
.end method

.method static final startPresetInstall(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2212
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.packageoptimization"

    const-string v3, "cn.nubia.packageoptimization.PackageOptService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2214
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2215
    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 2219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2220
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2222
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2224
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2225
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2226
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2229
    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2231
    return-void
.end method

.method private static traceEnd()V
    .locals 1

    .line 2244
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2245
    return-void
.end method

.method private updateCurrentTheme(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 2235
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2236
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.intent.action.UPDATE_CURRENT_THEME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2237
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.theme.apply"

    const-string v3, "cn.nubia.theme.apply.ThemeApplyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2239
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2240
    return-void
.end method
