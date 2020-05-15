.class public Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;
    }
.end annotation


# static fields
.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final CONTENT_URI_APP_STORE:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "zmy"


# instance fields
.field private mAppStoreList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mQueryAppStoreRunnable:Ljava/lang/Runnable;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "content://cn.nubia.behaviordetection/app_store_table"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->CONTENT_URI_APP_STORE:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mAppStoreList:Ljava/util/HashSet;

    .line 48
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$1;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$2;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mQueryAppStoreRunnable:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->loadData()V

    .line 35
    new-instance v0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;-><init>(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;Landroid/os/Handler;)V

    .line 36
    .local v0, "observer":Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager$AppStoreObserver;->observe()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    .line 18
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->updateData()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    .line 18
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .line 18
    sget-object v0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->CONTENT_URI_APP_STORE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    .line 18
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mQueryAppStoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    .line 18
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;

    .line 18
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->loadAppStoreData()V

    return-void
.end method

.method private loadAppStoreData()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->loadAppStoreList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->loadDefaultAppStoreList()V

    .line 64
    :cond_0
    return-void
.end method

.method private loadAppStoreList()Z
    .locals 9

    .line 67
    const-string/jumbo v0, "package_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "selections":[Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 69
    return v7

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 72
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v2, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->CONTENT_URI_APP_STORE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 73
    if-nez v0, :cond_2

    .line 74
    nop

    .line 86
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    :cond_1
    return v7

    .line 76
    :cond_2
    :try_start_1
    const-string/jumbo v4, "package_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 77
    .local v4, "pkgIndex":I
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 78
    .local v5, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, -0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 79
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "pkgName":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v6    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 83
    :cond_3
    iget-object v6, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mAppStoreList:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    :try_start_2
    iput-object v5, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mAppStoreList:Ljava/util/HashSet;

    .line 85
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .end local v4    # "pkgIndex":I
    .end local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 89
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_4
    nop

    .line 90
    const/4 v0, 0x1

    return v0

    .line 85
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "pkgIndex":I
    .restart local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 86
    .end local v4    # "pkgIndex":I
    .end local v5    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v4

    goto :goto_1

    .line 72
    :catch_0
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 86
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_8
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "zmy"

    const-string v4, "failed load AppStore packages list from database"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    return v7
.end method

.method private loadDefaultAppStoreList()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mAppStoreList:Ljava/util/HashSet;

    const-string v1, "com.hiapk.marketpho"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mAppStoreList:Ljava/util/HashSet;

    const-string v1, "com.tencent.android.qqdownloader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mAppStoreList:Ljava/util/HashSet;

    const-string v1, "ccom.baidu.appsearch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mAppStoreList:Ljava/util/HashSet;

    const-string v1, "com.qihoo.appstore"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mAppStoreList:Ljava/util/HashSet;

    const-string v1, "com.oppo.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method private updateData()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->loadAppStoreData()V

    .line 58
    return-void
.end method


# virtual methods
.method public isInAppStoreList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mAppStoreList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadData()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/DataManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method
