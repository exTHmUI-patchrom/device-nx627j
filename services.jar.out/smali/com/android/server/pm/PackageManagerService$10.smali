.class Lcom/android/server/pm/PackageManagerService$10;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 15349
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 15351
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15353
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>()V

    .line 15354
    .local v0, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$currentStatus:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 15355
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 15356
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 15357
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 15358
    iget v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 15359
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 15360
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15361
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-static {v3, v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15362
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15363
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    goto :goto_0

    .line 15362
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 15369
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 15371
    .local v1, "update":Z
    :goto_1
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 15372
    .local v4, "flags":I
    :goto_2
    if-nez v1, :cond_3

    const v5, 0x8000

    and-int/2addr v5, v4

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v3

    .line 15379
    .local v5, "doRestore":Z
    :goto_3
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput v2, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 15380
    :cond_4
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v7, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    move v6, v7

    .line 15382
    .local v6, "token":I
    new-instance v7, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v7, v8, v0}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15383
    .local v7, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15386
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const-wide/32 v9, 0x40000

    if-ne v8, v2, :cond_7

    if-eqz v5, :cond_7

    .line 15391
    const-string v8, "backup"

    .line 15392
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 15391
    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v8

    .line 15393
    .local v8, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v8, :cond_6

    .line 15396
    const-string/jumbo v11, "restore"

    invoke-static {v9, v10, v11, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15399
    :try_start_2
    invoke-interface {v8, v3}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 15400
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v11, v6}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 15402
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 15406
    :catch_0
    move-exception v11

    .line 15407
    .local v11, "e":Ljava/lang/Exception;
    const-string v12, "PackageManager"

    const-string v13, "Exception trying to enqueue restore"

    invoke-static {v12, v13, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15408
    const/4 v5, 0x0

    .line 15409
    .end local v8    # "bm":Landroid/app/backup/IBackupManager;
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 15404
    .restart local v8    # "bm":Landroid/app/backup/IBackupManager;
    :catch_1
    move-exception v11

    goto :goto_4

    .line 15411
    :cond_6
    const-string v11, "PackageManager"

    const-string v12, "Backup Manager not found!"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15412
    const/4 v5, 0x0

    .line 15416
    .end local v8    # "bm":Landroid/app/backup/IBackupManager;
    :cond_7
    :goto_5
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v8, v2, :cond_8

    .line 15417
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-static {v2, v8, v11}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 15418
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-static {v2}, Lnubia/os/ApplicationManager$Trigger;->installEvent(Landroid/os/Bundle;)V

    .line 15421
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_8
    if-nez v5, :cond_9

    .line 15426
    const-string/jumbo v2, "postInstall"

    invoke-static {v9, v10, v2, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15428
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v8, 0x9

    invoke-virtual {v2, v8, v6, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 15429
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 15431
    .end local v2    # "msg":Landroid/os/Message;
    :cond_9
    return-void
.end method
