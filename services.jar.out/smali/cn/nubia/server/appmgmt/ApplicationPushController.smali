.class public Lcn/nubia/server/appmgmt/ApplicationPushController;
.super Ljava/lang/Object;
.source "ApplicationPushController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;,
        Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;,
        Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;
    }
.end annotation


# static fields
.field private static final ATTR_PACKAGE:Ljava/lang/String; = "include_pkg"

.field private static final PUSH_DEPENDENT_URI:Ljava/lang/String; = "content://cn.nubia.security.power/push_dependent_table"

.field private static final PUSH_MANAGER_URI:Ljava/lang/String; = "content://cn.nubia.security.power/push_access_table"

.field private static final PUSH_MANAGE_FILE:Ljava/lang/String; = "security_push_manager.xml"

.field private static final TABLE_PUSH_ACCESS_COLUMN:Ljava/lang/String; = "app_pkg"

.field private static final TABLE_PUSH_DEPENDENT_COLUMN:Ljava/lang/String; = "dependent_pkg"

.field private static final TAG:Ljava/lang/String; = "ApplicationPushController"

.field private static final TAG_DEFAULT:Ljava/lang/String; = "default_settings"

.field private static final TAG_PUSH:Ljava/lang/String; = "push"

.field private static final TAG_PUSH_DEPENDENT:Ljava/lang/String; = "dependce"


# instance fields
.field private m3rdPartyPushPrefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m3rdPartyPushPrefixesLock:Ljava/lang/Object;

.field private mAllowed3rdPartyPushApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowed3rdPartyPushLock:Ljava/lang/Object;

.field private mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private final mPushFile:Ljava/io/File;

.field private mQueryPushRunnable:Ljava/lang/Runnable;

.field private mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 264
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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
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
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mDumpDebugLog:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    .line 120
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/ApplicationPushController$1;-><init>(Lcn/nubia/server/appmgmt/ApplicationPushController;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mQueryPushRunnable:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p3, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    .line 64
    const-string/jumbo v0, "security_push_manager.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mPushFile:Ljava/io/File;

    .line 66
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mPushFile:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;-><init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;

    .line 67
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->initData()V

    .line 68
    new-instance v0, Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;-><init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Landroid/os/Handler;)V

    .line 69
    .local v0, "observer":Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushControlObserver;->observe()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationPushController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/ApplicationPushController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 28
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->loadPushData()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/ApplicationPushController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/ApplicationPushController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationPushController;

    .line 28
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mQueryPushRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initData()V
    .locals 3

    .line 140
    const-string/jumbo v0, "security_push_manager.xml"

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->readDataFromFile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    .line 142
    .local v0, "data":Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$200(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_1
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;->access$300(Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    .line 148
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 145
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 150
    .end local v0    # "data":Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;
    :cond_0
    :goto_0
    goto :goto_1

    .line 151
    :cond_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->loadPushData()V

    .line 153
    :goto_1
    return-void
.end method

.method private is3rdPartyPush(Ljava/lang/String;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 134
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    monitor-exit v0

    .line 136
    const/4 v0, 0x0

    return v0

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private load3rdPartyPushPrefixes(Landroid/content/ContentResolver;)Z
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 249
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://cn.nubia.security.power/push_dependent_table"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 250
    if-nez v1, :cond_1

    .line 251
    :try_start_1
    const-string v3, "ApplicationPushController"

    const-string/jumbo v4, "push dependent uri data null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    nop

    .line 264
    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/ApplicationPushController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 252
    :cond_0
    return v0

    .line 264
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 249
    :catch_0
    move-exception v2

    goto :goto_1

    .line 254
    :cond_1
    :try_start_3
    const-string v3, "dependent_pkg"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 255
    .local v3, "classnameIndex":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 256
    .local v4, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, -0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 257
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 258
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_0

    .line 261
    :cond_2
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    :try_start_4
    iput-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    .line 263
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 264
    .end local v3    # "classnameIndex":I
    .end local v4    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    :try_start_5
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/ApplicationPushController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 267
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_3
    nop

    .line 268
    const/4 v0, 0x1

    return v0

    .line 263
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "classnameIndex":I
    .restart local v4    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 249
    .end local v3    # "classnameIndex":I
    .end local v4    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 264
    :goto_2
    if-eqz v1, :cond_4

    :try_start_9
    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/ApplicationPushController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 264
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ApplicationPushController"

    const-string v3, "failed load 3rd party push prefixes"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v0
.end method

.method private loadAllowed3rdPartyPushApps(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 284
    :try_start_0
    const-string v0, "content://cn.nubia.security.power/push_access_table"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 285
    if-nez v0, :cond_1

    .line 286
    :try_start_1
    const-string v2, "ApplicationPushController"

    const-string/jumbo v3, "push access uri data null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 287
    :cond_0
    return-void

    .line 299
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 284
    :catch_0
    move-exception v1

    goto :goto_1

    .line 289
    :cond_1
    :try_start_3
    const-string v2, "app_pkg"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 290
    .local v2, "appnameIndex":I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 291
    .local v3, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 292
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 296
    :cond_2
    iget-object v4, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :try_start_4
    iput-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    .line 298
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 299
    .end local v2    # "appnameIndex":I
    .end local v3    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    :try_start_5
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 301
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_3

    .line 298
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "appnameIndex":I
    .restart local v3    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 284
    .end local v2    # "appnameIndex":I
    .end local v3    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 299
    :goto_2
    if-eqz v0, :cond_4

    :try_start_9
    invoke-static {v1, v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 299
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationPushController"

    const-string v2, "failed load 3rd party push apps"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private loadDefaultPushPrefixesData()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    const-string v2, "com.igexin"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    const-string v2, "com.xiaomi.push"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    const-string v2, "com.taobao.agoo"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    const-string v2, "com.huawei.android.pushagent"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    const-string v2, "com.baidu.android"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    const-string v2, "cn.jpush.android"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    const-string v2, "com.tencent.android.tpush"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v0

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadPushData()V
    .locals 7

    .line 234
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 235
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->load3rdPartyPushPrefixes(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->loadDefaultPushPrefixesData()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/ApplicationPushController;->loadAllowed3rdPartyPushApps(Landroid/content/ContentResolver;)V

    .line 239
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    :try_start_1
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mXmlOperator:Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;

    new-instance v4, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;

    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    iget-object v6, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    invoke-direct {v4, p0, v5, v6}, Lcn/nubia/server/appmgmt/ApplicationPushController$XmlData;-><init>(Lcn/nubia/server/appmgmt/ApplicationPushController;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-virtual {v3, v4}, Lcn/nubia/server/appmgmt/ApplicationPushController$PushXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 243
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    :goto_0
    return-void

    .line 243
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 244
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method


# virtual methods
.method public allowApp3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 74
    return v0

    .line 77
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAppLevelController:Lcn/nubia/server/appmgmt/AppLevelController;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/AppLevelController;->getAppLevelMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 78
    .local v1, "appLevelMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 80
    return v0

    .line 81
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 82
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_2
    invoke-static {p1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    return v0

    .line 91
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    return v0

    .line 94
    :cond_4
    invoke-direct {p0, p2}, Lcn/nubia/server/appmgmt/ApplicationPushController;->is3rdPartyPush(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method public dumpListArray(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 105
    const-string v0, "==========managed push services=========="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->m3rdPartyPushPrefixes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .end local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 110
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 112
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mAllowed3rdPartyPushApps:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, "allowed":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    .end local v2    # "allowed":Ljava/lang/String;
    goto :goto_1

    .line 116
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 110
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public updateNubiaData()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mQueryPushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationPushController;->mQueryPushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    :cond_0
    return-void
.end method
