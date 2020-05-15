.class Lcom/android/server/pm/PackageManagerService$17;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$hasAccessInstantApps:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;IIILjava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 20030
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$17;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$17;->val$callingUid:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$17;->val$hasAccessInstantApps:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$17;->val$userId:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$17;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 20032
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$17;->val$pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$17;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 20033
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    :goto_0
    const/4 v1, 0x1

    .line 20034
    .local v1, "doClearData":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 20035
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$17;->val$callingUid:I

    .line 20036
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    .line 20037
    .local v4, "targetIsInstantApp":Z
    if-eqz v4, :cond_2

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$17;->val$hasAccessInstantApps:I

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    :goto_2
    move v1, v5

    .line 20040
    .end local v4    # "targetIsInstantApp":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 20041
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 20042
    const/4 v5, 0x3

    .line 20046
    .local v5, "flags":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$17;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$17;->val$userId:I

    const/16 v9, 0x103

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->access$5400(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    .line 20047
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$17;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$17;->val$userId:I

    const/16 v9, 0x203

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->access$5400(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;II)V

    .line 20048
    .end local v5    # "flags":I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20049
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$17;->val$userId:I

    invoke-static {v4, v5, v6, v3}, Lcom/android/server/pm/PackageManagerService;->access$5200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    goto :goto_3

    .line 20048
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 20051
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$17;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v3, :cond_5

    .line 20053
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$17;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 20056
    goto :goto_4

    .line 20054
    :catch_0
    move-exception v2

    .line 20055
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20058
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_4
    return-void
.end method
