.class public Lcom/android/server/am/NubiaRiskAppStartUtil;
.super Ljava/lang/Object;
.source "NubiaRiskAppStartUtil.java"


# static fields
.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NubiaRiskAppStartUtil"

.field private static sNubiaRiskAppStartUtil:Lcom/android/server/am/NubiaRiskAppStartUtil;


# instance fields
.field private final mBlackListPkgNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPackageInstallerSupport:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "content://risk_app_provider/risk_app_list"

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/NubiaRiskAppStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    .line 51
    iput-object p1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/NubiaRiskAppStartUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;

    .line 34
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->setBlackListPkgNames()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;
    .param p1, "x1"    # Landroid/content/pm/ApplicationInfo;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaRiskAppStartUtil;->isRiskAppStart(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/NubiaRiskAppStartUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;

    .line 34
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;
    .param p1, "x1"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/am/NubiaRiskAppStartUtil;->getBlackListPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/NubiaRiskAppStartUtil;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/NubiaRiskAppStartUtil;

    .line 34
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    return-object v0
.end method

.method private checkPackageInstaller()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    monitor-enter v0

    .line 176
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/priv-app/PackageInstaller"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/am/NubiaRiskAppStartUtil;->isAppSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    .line 180
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    const-string v0, "NubiaRiskAppStartUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPackageInstallerSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 180
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getBlackListPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 163
    .local v0, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/NubiaRiskAppStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/NubiaRiskAppStartUtil;->loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V

    .line 165
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/NubiaRiskAppStartUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    sget-object v0, Lcom/android/server/am/NubiaRiskAppStartUtil;->sNubiaRiskAppStartUtil:Lcom/android/server/am/NubiaRiskAppStartUtil;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/server/am/NubiaRiskAppStartUtil;

    invoke-direct {v0, p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/NubiaRiskAppStartUtil;->sNubiaRiskAppStartUtil:Lcom/android/server/am/NubiaRiskAppStartUtil;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/server/am/NubiaRiskAppStartUtil;->sNubiaRiskAppStartUtil:Lcom/android/server/am/NubiaRiskAppStartUtil;

    return-object v0
.end method

.method private initHandler()V
    .locals 2

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NubiaRiskAppStartUtil"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method private isAppSupport(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    const/4 v0, 0x0

    move v1, v0

    .line 189
    .local v1, "isInstall":Z
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.packageinstaller.RISK_APP_STARTED"

    .line 190
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.packageinstaller"

    .line 191
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 192
    .local v2, "it":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x20000

    .line 193
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 194
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    move v1, v0

    .line 196
    .end local v2    # "it":Landroid/content/Intent;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 197
    :goto_0
    return v1
.end method

.method private isPackageInstallerSupport()Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mPackageInstallerSupport:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isRiskAppStart(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mBlackListPkgNames:Ljava/util/Set;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 119
    monitor-exit v1

    .line 120
    return v0

    .line 119
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadPackageNamesFromDb(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p5, "resultHashMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "package_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "selections":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    move-object v7, v1

    .line 94
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    .line 95
    if-eqz v7, :cond_0

    .line 96
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 97
    .local v1, "sum":I
    const/4 v2, 0x0

    move v4, v2

    .line 97
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 98
    invoke-interface {v7, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 99
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "sum":I
    .end local v4    # "i":I
    :cond_0
    if-eqz v7, :cond_1

    .line 107
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :goto_1
    goto :goto_2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 105
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 102
    :catch_1
    move-exception v1

    .line 103
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "NubiaRiskAppStartUtil"

    const-string/jumbo v4, "loadPackageNamesFromDb query error"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_1

    .line 107
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 113
    :cond_1
    :goto_2
    return-void

    .line 105
    :goto_3
    if-eqz v7, :cond_2

    .line 107
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 110
    goto :goto_4

    .line 108
    :catch_2
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    throw v1
.end method

.method private registerRiskAppObserver()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/NubiaRiskAppStartUtil;->CONTENT_URI_SELFSTART_BLACK_LIST:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/NubiaRiskAppStartUtil$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/NubiaRiskAppStartUtil$1;-><init>(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    return-void
.end method

.method private setBlackListPkgNames()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaRiskAppStartUtil$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/NubiaRiskAppStartUtil$3;-><init>(Lcom/android/server/am/NubiaRiskAppStartUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method


# virtual methods
.method public checkRiskAndShowDialog(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 124
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->isPackageInstallerSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/NubiaRiskAppStartUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/NubiaRiskAppStartUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/NubiaRiskAppStartUtil$2;-><init>(Lcom/android/server/am/NubiaRiskAppStartUtil;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void

    .line 125
    :cond_1
    :goto_0
    return-void
.end method

.method public firstBootGetAllowPkgNames()V
    .locals 2

    .line 62
    const-string v0, "NubiaRiskAppStartUtil"

    const-string v1, "boot and register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->checkPackageInstaller()V

    .line 64
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->isPackageInstallerSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->initHandler()V

    .line 66
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->setBlackListPkgNames()V

    .line 67
    invoke-direct {p0}, Lcom/android/server/am/NubiaRiskAppStartUtil;->registerRiskAppObserver()V

    .line 69
    :cond_0
    return-void
.end method
