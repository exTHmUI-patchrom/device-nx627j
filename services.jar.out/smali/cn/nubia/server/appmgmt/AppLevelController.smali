.class public Lcn/nubia/server/appmgmt/AppLevelController;
.super Ljava/lang/Object;
.source "AppLevelController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;,
        Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;
    }
.end annotation


# static fields
.field private static final LEVEL:Ljava/lang/String; = "level"

.field public static final MSG_UPDATE_NETWORK_SETTINGS:I = 0x64

.field private static final NUBIA_APP_LEVEL_FILE:Ljava/lang/String; = "security_app_power_level.xml"

.field private static final NUBIA_APP_LEVEL_URI:Ljava/lang/String; = "content://cn.nubia.security.power/app_level_table"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "pkg_name"

.field private static final TAG:Ljava/lang/String; = "AppLevelController"


# instance fields
.field private mAppLevelMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFreezeBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFreezeWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mQueryAppLevelRunnable:Ljava/lang/Runnable;

.field private mThread:Landroid/os/HandlerThread;

.field private mXmlOperator:Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mFreezeWhiteList:Ljava/util/HashSet;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mFreezeBlackList:Ljava/util/HashSet;

    .line 149
    new-instance v0, Lcn/nubia/server/appmgmt/AppLevelController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/AppLevelController$1;-><init>(Lcn/nubia/server/appmgmt/AppLevelController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mQueryAppLevelRunnable:Ljava/lang/Runnable;

    .line 43
    iput-object p1, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppLevelControllerIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mThread:Landroid/os/HandlerThread;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;

    const-string/jumbo v1, "security_app_power_level.xml"

    .line 48
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;-><init>(Lcn/nubia/server/appmgmt/AppLevelController;Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mXmlOperator:Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;

    .line 49
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppLevelController;->initData()V

    .line 50
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppLevelController;->constructFreezeList()V

    .line 51
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppLevelController;->setAppDozeWhitelist()V

    .line 52
    new-instance v0, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;-><init>(Lcn/nubia/server/appmgmt/AppLevelController;Landroid/os/Handler;)V

    .line 53
    .local v0, "observer":Lcn/nubia/server/appmgmt/AppLevelController$AppLevelObserver;
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/AppLevelController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/AppLevelController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mQueryAppLevelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/AppLevelController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 25
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/AppLevelController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppLevelController;->loadAppLevelData()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/AppLevelController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppLevelController;->constructFreezeList()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/AppLevelController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/AppLevelController;

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppLevelController;->setAppDozeWhitelist()V

    return-void
.end method

.method private constructFreezeList()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mFreezeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 97
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mFreezeBlackList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 98
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mFreezeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 104
    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mFreezeBlackList:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 107
    :cond_2
    return-void
.end method

.method private initData()V
    .locals 3

    .line 56
    const-string/jumbo v0, "security_app_power_level.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mXmlOperator:Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 58
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 60
    :try_start_0
    iput-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    .line 61
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 63
    .end local v0    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    goto :goto_1

    .line 64
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/AppLevelController;->loadAppLevelData()V

    .line 66
    :goto_1
    return-void
.end method

.method private loadAppLevelData()V
    .locals 9

    .line 69
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 70
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v0, "content://cn.nubia.security.power/app_level_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "is_exist=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 72
    if-nez v0, :cond_1

    .line 87
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    :cond_0
    return-void

    .line 75
    :cond_1
    :try_start_1
    const-string/jumbo v3, "pkg_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 76
    .local v3, "appNameIndex":I
    const-string/jumbo v4, "level"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 77
    .local v4, "appLevelIndex":I
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 78
    .local v5, "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, -0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 79
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 82
    .local v7, "level":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "level":I
    goto :goto_0

    .line 84
    :cond_2
    iget-object v6, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :try_start_2
    iput-object v5, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    .line 86
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .end local v3    # "appNameIndex":I
    .end local v4    # "appLevelIndex":I
    .end local v5    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 89
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_3

    .line 86
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "appNameIndex":I
    .restart local v4    # "appLevelIndex":I
    .restart local v5    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
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

    .line 87
    .end local v3    # "appNameIndex":I
    .end local v4    # "appLevelIndex":I
    .end local v5    # "temp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v3

    goto :goto_1

    .line 70
    :catch_0
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 87
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AppLevelController"

    const-string v3, "Failed load nubia app level data."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 91
    :try_start_9
    iget-object v2, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mXmlOperator:Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/AppLevelController$AppLevelXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_2
    move-exception v2

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v2
.end method

.method private setAppDozeWhitelist()V
    .locals 4

    .line 110
    const-string v0, "deviceidle"

    .line 111
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 112
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_2

    .line 114
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 118
    invoke-interface {v0, v2}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_0
    invoke-interface {v0, v2}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 125
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    goto :goto_2

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AppLevelController"

    const-string v3, "Failed set doze white list."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public getAppLevelMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mAppLevelMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getFreezeBlackList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mFreezeBlackList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getFreezeWhiteList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcn/nubia/server/appmgmt/AppLevelController;->mFreezeWhiteList:Ljava/util/HashSet;

    return-object v0
.end method
