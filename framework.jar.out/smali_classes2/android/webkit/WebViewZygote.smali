.class public Landroid/webkit/WebViewZygote;
.super Ljava/lang/Object;
.source "WebViewZygote.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebViewZygote"

.field private static final sLock:Ljava/lang/Object;

.field private static sMultiprocessEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sPackage:Landroid/content/pm/PackageInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sPackageOriginalAppInfo:Landroid/content/pm/ApplicationInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sZygote:Landroid/os/ChildZygoteProcess;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static connectToZygoteIfNeededLocked()V
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .line 143
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v0, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 148
    const-string v0, "WebViewZygote"

    const-string v1, "Cannot connect to zygote, no package specified"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 153
    :cond_1
    :try_start_0
    sget-object v2, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    const-string v3, "com.android.internal.os.WebViewZygoteInit"

    const-string/jumbo v4, "webview_zygote"

    const/16 v5, 0x41d

    const/16 v6, 0x41d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "webview_zygote"

    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/os/ZygoteProcess;->startChildZygote(Ljava/lang/String;Ljava/lang/String;II[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ChildZygoteProcess;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v0, "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    .line 172
    .local v1, "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v0, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 173
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "librarySearchPath":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_2
    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v11, v5

    .line 177
    .local v11, "zip":Ljava/lang/String;
    sget-object v5, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "libFileName":Ljava/lang/String;
    sget-object v5, Landroid/webkit/WebViewZygote;->sPackageOriginalAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v4, v5, v0, v3}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    .line 184
    :cond_3
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v9, v3

    .line 186
    .local v9, "cacheKey":Ljava/lang/String;
    sget-object v3, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v3}, Landroid/os/ChildZygoteProcess;->getPrimarySocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V

    .line 188
    const-string v3, "WebViewZygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preloading package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v5, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v10, v3, v4

    move-object v6, v11

    move-object v7, v2

    invoke-virtual/range {v5 .. v10}, Landroid/os/ChildZygoteProcess;->preloadPackageForAbi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "librarySearchPath":Ljava/lang/String;
    .end local v8    # "libFileName":Ljava/lang/String;
    .end local v9    # "cacheKey":Ljava/lang/String;
    .end local v11    # "zip":Ljava/lang/String;
    goto :goto_2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WebViewZygote"

    const-string v2, "Error connecting to webview zygote"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 2

    .line 82
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getProcess()Landroid/os/ZygoteProcess;
    .locals 2

    .line 73
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    monitor-exit v0

    return-object v1

    .line 76
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->connectToZygoteIfNeededLocked()V

    .line 77
    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isMultiprocessEnabled()Z
    .locals 2

    .line 88
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static onWebViewProviderChanged(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "originalAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 115
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    sput-object p0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 117
    sput-object p1, Landroid/webkit/WebViewZygote;->sPackageOriginalAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 120
    sget-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    if-nez v1, :cond_0

    .line 121
    monitor-exit v0

    return-void

    .line 124
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setMultiprocessEnabled(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .line 94
    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    sput-boolean p0, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    .line 101
    if-eqz p0, :cond_0

    .line 105
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/webkit/-$$Lambda$xYTrYQCPf1HcdlWzDof3mq93ihs;->INSTANCE:Landroid/webkit/-$$Lambda$xYTrYQCPf1HcdlWzDof3mq93ihs;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    .line 110
    :goto_0
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static stopZygoteLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .line 130
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->close()V

    .line 136
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 137
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    .line 139
    :cond_0
    return-void
.end method
