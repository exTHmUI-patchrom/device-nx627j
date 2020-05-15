.class Lcom/android/server/pm/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$canViewInstantApps:Z

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$internalPackageName:Ljava/lang/String;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I

.field final synthetic val$versionCode:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZLjava/lang/String;ZJII[ILandroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 18380
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$callingUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$canViewInstantApps:Z

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteAllUsers:Z

    iput-wide p7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iput p9, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iput p10, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 18382
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18384
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 18385
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x1

    .line 18386
    .local v1, "doDeletePackage":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 18387
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$callingUid:I

    .line 18388
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    .line 18389
    .local v4, "targetIsInstantApp":Z
    if-eqz v4, :cond_1

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$canViewInstantApps:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    move v1, v5

    .line 18393
    .end local v4    # "targetIsInstantApp":Z
    :cond_2
    const-string v4, "com.tencent.mobileqq"

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18394
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "nubia_game_pip_qq_login"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 18397
    :cond_3
    if-eqz v1, :cond_8

    .line 18398
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteAllUsers:Z

    if-nez v4, :cond_4

    .line 18399
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v2

    .line 18399
    .local v2, "returnCode":I
    goto :goto_4

    .line 18402
    .end local v2    # "returnCode":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v4

    .line 18405
    .local v4, "blockUninstallUserIds":[I
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 18406
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iget v11, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v2

    .line 18406
    .restart local v2    # "returnCode":I
    goto :goto_3

    .line 18410
    .end local v2    # "returnCode":I
    :cond_5
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    and-int/lit8 v5, v5, -0x3

    .line 18411
    .local v5, "userFlags":I
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    array-length v13, v12

    :goto_2
    if-ge v2, v13, :cond_7

    aget v14, v12, v2

    .line 18412
    .local v14, "userId":I
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_6

    .line 18413
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    move v10, v14

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v6

    .line 18415
    .local v6, "returnCode":I
    if-eq v6, v3, :cond_6

    .line 18416
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package delete failed for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", returnCode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18411
    .end local v6    # "returnCode":I
    .end local v14    # "userId":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 18423
    :cond_7
    const/4 v2, -0x4

    .line 18425
    .end local v4    # "blockUninstallUserIds":[I
    .end local v5    # "userFlags":I
    .restart local v2    # "returnCode":I
    :goto_3
    goto :goto_4

    .line 18427
    .end local v2    # "returnCode":I
    :cond_8
    const/4 v2, -0x1

    .line 18430
    .restart local v2    # "returnCode":I
    :goto_4
    if-ne v2, v3, :cond_9

    .line 18431
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$4800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 18432
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-static {v3}, Lnubia/os/ApplicationManager$Trigger;->uninstallEvent(Landroid/os/Bundle;)V

    .line 18436
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18439
    goto :goto_5

    .line 18437
    :catch_0
    move-exception v3

    .line 18438
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v5, "Observer no longer exists."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18440
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_5
    return-void
.end method
