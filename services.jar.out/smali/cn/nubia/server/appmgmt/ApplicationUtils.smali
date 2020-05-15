.class public Lcn/nubia/server/appmgmt/ApplicationUtils;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;
    }
.end annotation


# static fields
.field private static final SWITCH:Ljava/lang/String; = "switch"

.field private static final URI_USB_INSTALL:Ljava/lang/String; = "content://cn.nubia.security.appops/usb_install_table"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mScreenOn:Z

.field private mThread:Landroid/os/HandlerThread;

.field private mVisiblePackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mScreenOn:Z

    .line 33
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationUtilsIO"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mThread:Landroid/os/HandlerThread;

    .line 35
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/ApplicationUtils;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/ApplicationUtils;

    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method public getForegroundPackageName()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 76
    .local v1, "pkgSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v2, "foregroundPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 78
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_0

    .line 80
    :cond_0
    monitor-exit v0

    return-object v2

    .line 81
    .end local v1    # "pkgSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v2    # "foregroundPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUsbInstallSwitchOn()Z
    .locals 9

    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, "isSwitchOn":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 119
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    move-object v8, v2

    .line 121
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://cn.nubia.security.appops/usb_install_table"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v8, v2

    .line 123
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 124
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    const-string/jumbo v2, "switch"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 132
    :cond_0
    if-eqz v8, :cond_1

    .line 133
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 132
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    :goto_1
    return v0

    .line 132
    :goto_2
    if-eqz v8, :cond_2

    .line 133
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method noteActivityStackRemoved(I)V
    .locals 3
    .param p1, "stackId"    # I

    .line 63
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notePausingActivity(IILjava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isVisiblePackage"    # Z
    .param p5, "topActivityPackageName"    # Ljava/lang/String;

    .line 50
    if-nez p3, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mScreenOn:Z

    if-eqz v1, :cond_2

    .line 53
    if-lez p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 54
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2
    :goto_0
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .line 69
    if-nez p2, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;

    invoke-direct {v1, p0, p2}, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;-><init>(Lcn/nubia/server/appmgmt/ApplicationUtils;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method noteResumingActivity(IILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 40
    if-nez p3, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mScreenOn:Z

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    monitor-exit v0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 108
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mVisiblePackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 109
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 110
    .local v1, "isScreenOn":Z
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mScreenOn:Z

    if-eq v2, v1, :cond_1

    .line 111
    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils;->mScreenOn:Z

    .line 113
    .end local v1    # "isScreenOn":Z
    :cond_1
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
