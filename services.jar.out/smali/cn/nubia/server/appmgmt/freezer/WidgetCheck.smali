.class public Lcn/nubia/server/appmgmt/freezer/WidgetCheck;
.super Ljava/lang/Object;
.source "WidgetCheck.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "selfstart_provider"

.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

.field private static final TABLE_WIDGET_LIST:Ljava/lang/String; = "widget_list"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoadWidgetRunnable:Ljava/lang/Runnable;

.field private final widgetPackNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "content://selfstart_provider/widget_list"

    .line 23
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    .line 49
    new-instance v0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$1;-><init>(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mLoadWidgetRunnable:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->loadWidget()V

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->startRegisterObserver()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    .line 18
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->loadWidgetFromDb()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/freezer/WidgetCheck;

    .line 18
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->loadWidget()V

    return-void
.end method

.method private loadWidget()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mLoadWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mLoadWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method private loadWidgetFromCursor(Landroid/database/Cursor;)Ljava/util/HashSet;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    const-string/jumbo v0, "package_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "packageNameIndex":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v1, "resetHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "cn.nubia.music.preset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 102
    :cond_1
    return-object v1
.end method

.method private loadWidgetFromDb()V
    .locals 8

    .line 67
    const-string/jumbo v0, "package_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "selections":[Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    move-object v7, v1

    .line 74
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    .line 76
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 77
    invoke-direct {p0, v7}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->loadWidgetFromCursor(Landroid/database/Cursor;)Ljava/util/HashSet;

    move-result-object v1

    .line 78
    .local v1, "loadWidgetPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 80
    iget-object v4, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 81
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    .end local v1    # "loadWidgetPkgName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 87
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 86
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    :goto_2
    return-void

    .line 86
    :goto_3
    if-eqz v7, :cond_3

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private startRegisterObserver()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->CONTENT_URI_SELFSTART_WIDGET_LIST:Landroid/net/Uri;

    new-instance v2, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/appmgmt/freezer/WidgetCheck$2;-><init>(Lcn/nubia/server/appmgmt/freezer/WidgetCheck;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    return-void
.end method


# virtual methods
.method hasWidgets(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 3
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/WidgetCheck;->widgetPackNames:Ljava/util/HashSet;

    iget-object v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
