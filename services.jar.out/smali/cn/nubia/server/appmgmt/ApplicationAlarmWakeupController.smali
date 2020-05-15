.class public Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
.super Ljava/lang/Object;
.source "ApplicationAlarmWakeupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;,
        Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;
    }
.end annotation


# static fields
.field private static final ATTR_APP_PKG:Ljava/lang/String; = "package"

.field private static final DELIVER_ALLOWED_FILE:Ljava/lang/String; = "security_alarm_deliver_control.xml"

.field private static final NUBIA_ALARM_DELIVER_CONTROL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/alarm_deliver_table"

.field private static final TABLE_PACKAGE_COLUMN:Ljava/lang/String; = "allowed_pkg"

.field private static final TAG:Ljava/lang/String; = "ApplicationAlarmWakeupController"

.field private static final TAG_ALLOWED:Ljava/lang/String; = "allowed"


# instance fields
.field private final mAllowedFile:Ljava/io/File;

.field private mAllowedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedPackagesLock:Ljava/lang/Object;

.field private mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

.field private mCharging:Z

.field private mChargingStateReceiver:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mQueryAllowedDataRunnable:Ljava/lang/Runnable;

.field private mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn/nubia/server/appmgmt/AppLevelController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "appLevelController"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
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
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    .line 44
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mCharging:Z

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    .line 250
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mQueryAllowedDataRunnable:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    .line 56
    const-string/jumbo v0, "security_alarm_deliver_control.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedFile:Ljava/io/File;

    .line 58
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedFile:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;

    .line 59
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;-><init>(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mChargingStateReceiver:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$ChargingStateReceiver;

    .line 60
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->initData()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .line 26
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mCharging:Z

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mCharging:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .line 26
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .line 26
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    .line 26
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->loadAllowedData()V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 68
    const-string/jumbo v0, "security_alarm_deliver_control.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 71
    .local v0, "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    .line 74
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 76
    .end local v0    # "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    goto :goto_1

    .line 77
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->loadAllowedData()V

    .line 79
    :goto_1
    return-void
.end method

.method private loadAllowedData()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->loadNubiaAllowedData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->loadDefaultAllowedData()V

    .line 85
    :cond_0
    return-void
.end method

.method private loadDefaultAllowedData()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    const-string v2, "cn.nubia.databackup"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    const-string v2, "cn.nubia.systemupdate"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    const-string v2, "cn.nubia.deskclock.preset"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadNubiaAllowedData()Z
    .locals 8

    .line 88
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 89
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "content://cn.nubia.security.power/alarm_deliver_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 90
    if-nez v2, :cond_1

    .line 91
    nop

    .line 102
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 91
    :cond_0
    return v0

    .line 92
    :cond_1
    :try_start_1
    const-string v4, "allowed_pkg"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 93
    .local v4, "appNameIndex":I
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 94
    .local v5, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, -0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 95
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v6    # "name":Ljava/lang/String;
    goto :goto_0

    .line 99
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 100
    :try_start_2
    iput-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    .line 101
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    .end local v4    # "appNameIndex":I
    .end local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 105
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    nop

    .line 106
    iget-object v7, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 107
    :try_start_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController$DeliverXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 108
    monitor-exit v7

    .line 109
    const/4 v0, 0x1

    return v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 101
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "appNameIndex":I
    .restart local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 102
    .end local v4    # "appNameIndex":I
    .end local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v4

    goto :goto_1

    .line 89
    :catch_0
    move-exception v3

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 102
    :goto_1
    if-eqz v2, :cond_5

    if-eqz v3, :cond_4

    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_9
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .end local v2    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationAlarmWakeupController"

    const-string v4, "failed load nubia default apps"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0
.end method


# virtual methods
.method public allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 162
    sget-boolean v0, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->mInternationalFeature:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 163
    return v1

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mCharging:Z

    if-eqz v0, :cond_2

    .line 167
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 168
    const-string v0, "ApplicationAlarmWakeupController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charging. Allow to deliver pending non wakeup alarm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    return v1

    .line 173
    :cond_2
    if-nez p1, :cond_3

    .line 174
    return v1

    .line 176
    :cond_3
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    .line 177
    .local v0, "uid":I
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_5

    .line 179
    iget-boolean v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v3, :cond_4

    .line 180
    const-string v3, "ApplicationAlarmWakeupController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package name == null. uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Allow to deliver pending non wakeup alarm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_4
    return v1

    .line 186
    :cond_5
    const/16 v3, 0x2710

    if-ge v0, v3, :cond_7

    .line 187
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v4, :cond_6

    .line 188
    const-string v4, "ApplicationAlarmWakeupController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Allow to deliver pending non wakeup alarm:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_6
    return v1

    .line 194
    :cond_7
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/AppLevelController;->getAppLevelMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 195
    .local v3, "appLevelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 196
    invoke-static {v2}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isSpecialApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 197
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_b

    .line 198
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v4, :cond_8

    .line 199
    const-string v4, "ApplicationAlarmWakeupController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App power level is less than 3. Allow to deliver pending non wakeup alarm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_8
    return v1

    .line 204
    :cond_9
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_b

    .line 205
    iget-boolean v4, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v4, :cond_a

    .line 206
    const-string v4, "ApplicationAlarmWakeupController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App power level is 0. Allow to deliver pending non wakeup alarm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_a
    return v1

    .line 213
    :cond_b
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 214
    :try_start_0
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 215
    iget-boolean v5, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v5, :cond_c

    .line 216
    const-string v5, "ApplicationAlarmWakeupController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in whitelist. Allow to deliver pending non wakeup alarm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_c
    monitor-exit v4

    return v1

    .line 220
    :cond_d
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    if-eqz v1, :cond_e

    .line 223
    const-string v1, "ApplicationAlarmWakeupController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forbid delivering pending non wakeup alarm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_e
    const/4 v1, 0x0

    return v1

    .line 220
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 265
    const-string v0, "==========allowed alram deliver pending action when screen off============="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items to deliver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mAllowedPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 269
    .local v2, "p":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowed packages : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    .end local v2    # "p":Ljava/lang/String;
    goto :goto_0

    .line 271
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 273
    return-void

    .line 271
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 64
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mDumpDebugLog:Z

    .line 65
    return-void
.end method

.method public updateNubiaData()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mQueryAllowedDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->mQueryAllowedDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    :cond_0
    return-void
.end method
