.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installReason:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationInfo"    # Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;
    .param p12, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p13, "installReason"    # I

    .line 15686
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15687
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15688
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15689
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15690
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15691
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15692
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 15693
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15694
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 15695
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 15696
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 15697
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 15698
    iput p13, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 15699
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 13
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 15708
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 15709
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 15710
    .local v1, "installLocation":I
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 15712
    .local v2, "onSd":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 15715
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 15720
    .local v6, "installedPkg":Landroid/content/pm/PackageParser$Package;
    move-object v7, v6

    .line 15721
    .local v7, "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v7, :cond_1

    .line 15722
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 15723
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_1

    .line 15724
    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v7, v9

    .line 15728
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_1
    const/4 v8, 0x2

    if-eqz v7, :cond_6

    .line 15742
    iget v9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_2

    move v9, v4

    goto :goto_1

    :cond_2
    move v9, v3

    .line 15744
    .local v9, "downgradeRequested":Z
    :goto_1
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_3

    move v10, v4

    goto :goto_2

    :cond_3
    move v10, v3

    .line 15747
    .local v10, "packageDebuggable":Z
    :goto_2
    if-eqz v9, :cond_5

    sget-boolean v11, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_4

    if-eqz v10, :cond_5

    :cond_4
    move v3, v4

    nop

    .line 15749
    .local v3, "downgradePermitted":Z
    :cond_5
    if-nez v3, :cond_6

    .line 15751
    :try_start_1
    invoke-static {v7, p1}, Lcom/android/server/pm/PackageManagerService;->access$3600(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15755
    goto :goto_3

    .line 15752
    :catch_0
    move-exception v4

    .line 15753
    .local v4, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_2
    const-string v8, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Downgrade detected: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15754
    const/4 v8, -0x7

    monitor-exit v5

    return v8

    .line 15759
    .end local v3    # "downgradePermitted":Z
    .end local v4    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v9    # "downgradeRequested":Z
    .end local v10    # "packageDebuggable":Z
    :cond_6
    :goto_3
    if-eqz v6, :cond_e

    .line 15760
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_d

    .line 15762
    iget-object v3, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 15763
    if-eqz v2, :cond_7

    .line 15764
    const-string v3, "PackageManager"

    const-string v4, "Cannot install update to system app on sdcard"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15765
    const/4 v3, -0x3

    monitor-exit v5

    return v3

    .line 15767
    :cond_7
    monitor-exit v5

    return v4

    .line 15769
    :cond_8
    if-eqz v2, :cond_9

    .line 15771
    monitor-exit v5

    return v8

    .line 15774
    :cond_9
    if-ne v1, v4, :cond_a

    .line 15776
    monitor-exit v5

    return v4

    .line 15777
    :cond_a
    if-ne v1, v8, :cond_b

    .end local v6    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_4

    .line 15781
    .restart local v6    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v7    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    :cond_b
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$3700(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 15782
    monitor-exit v5

    return v8

    .line 15784
    :cond_c
    monitor-exit v5

    return v4

    .line 15789
    :cond_d
    const/4 v3, -0x4

    monitor-exit v5

    return v3

    .line 15792
    .end local v6    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    :cond_e
    :goto_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15795
    if-eqz v2, :cond_f

    .line 15796
    return v8

    .line 15798
    :cond_f
    iget v3, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v3

    .line 15792
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method


# virtual methods
.method handleReturnCode()V
    .locals 3

    .line 16111
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 16112
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 16114
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .line 16118
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16119
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16120
    return-void
.end method

.method public handleStartCopy()V
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15808
    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 15811
    .local v2, "ret":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v0, :cond_1

    .line 15812
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 15813
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15814
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_0

    .line 15816
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15820
    :cond_1
    :goto_0
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    .line 15821
    .local v5, "onSd":Z
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move v6, v0

    .line 15822
    .local v6, "onInt":Z
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move v7, v0

    .line 15823
    .local v7, "ephemeral":Z
    const/4 v0, 0x0

    .line 15825
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    const/4 v8, -0x6

    const/4 v9, -0x1

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 15827
    const-string v10, "PackageManager"

    const-string v11, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15828
    const/16 v2, -0x13

    goto/16 :goto_5

    .line 15829
    :cond_5
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    .line 15830
    const-string v10, "PackageManager"

    const-string v11, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15831
    const/16 v2, -0x13

    goto/16 :goto_5

    .line 15833
    :cond_6
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v10, v11, v12, v13}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v10

    .line 15836
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v10, "pkgLite":Landroid/content/pm/PackageInfoLite;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3800()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v7, :cond_7

    .line 15837
    const-string v0, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pkgLite for install: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15844
    :cond_7
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v0, :cond_8

    iget v0, v10, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v9, :cond_8

    .line 15847
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v11

    .line 15848
    .local v11, "storage":Landroid/os/storage/StorageManager;
    nop

    .line 15849
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 15848
    invoke-virtual {v11, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v12

    .line 15851
    .local v12, "lowThreshold":J
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v0, v14, v15}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    .line 15855
    .local v14, "sizeBytes":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v17, 0x0

    add-long v18, v14, v12

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    .line 15856
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15860
    .end local v10    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    goto :goto_4

    .line 15858
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v10    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :catch_0
    move-exception v0

    .line 15859
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v3, "PackageManager"

    const-string v4, "Failed to free cache"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15869
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    move-object v0, v10

    .line 15869
    .end local v10    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    :goto_4
    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v3, v8, :cond_9

    .line 15871
    const/4 v3, -0x1

    iput v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 15871
    .end local v11    # "storage":Landroid/os/storage/StorageManager;
    .end local v12    # "lowThreshold":J
    .end local v14    # "sizeBytes":J
    goto :goto_5

    .line 15877
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v10    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_8
    move-object v0, v10

    .line 15877
    .end local v10    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_9
    :goto_5
    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 15878
    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 15879
    .local v3, "loc":I
    const/4 v4, -0x3

    if-ne v3, v4, :cond_a

    .line 15880
    const/16 v2, -0x13

    goto :goto_6

    .line 15881
    :cond_a
    const/4 v4, -0x4

    if-ne v3, v4, :cond_b

    .line 15882
    const/4 v2, -0x1

    goto :goto_6

    .line 15883
    :cond_b
    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    .line 15884
    const/4 v2, -0x4

    goto :goto_6

    .line 15885
    :cond_c
    const/4 v4, -0x2

    if-ne v3, v4, :cond_d

    .line 15886
    const/4 v2, -0x2

    goto :goto_6

    .line 15887
    :cond_d
    if-ne v3, v8, :cond_e

    .line 15888
    const/4 v2, -0x3

    goto :goto_6

    .line 15889
    :cond_e
    const/4 v4, -0x5

    if-ne v3, v4, :cond_f

    .line 15890
    const/16 v2, -0x14

    goto :goto_6

    .line 15893
    :cond_f
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v3

    .line 15894
    const/4 v4, -0x7

    if-ne v3, v4, :cond_10

    .line 15895
    const/16 v2, -0x19

    goto :goto_6

    .line 15896
    :cond_10
    if-nez v5, :cond_14

    if-nez v6, :cond_14

    .line 15898
    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    .line 15900
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15901
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_6

    .line 15902
    :cond_11
    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 15903
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3800()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 15904
    const-string v4, "PackageManager"

    const-string v8, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15906
    :cond_12
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15907
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x19

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_6

    .line 15912
    :cond_13
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15913
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15919
    .end local v3    # "loc":I
    :cond_14
    :goto_6
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    .line 15920
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 15922
    const/4 v4, 0x1

    if-ne v2, v4, :cond_26

    .line 15925
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 15926
    .local v4, "verifierUser":Landroid/os/UserHandle;
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v4, v8, :cond_15

    .line 15927
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 15934
    :cond_15
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/high16 v9, 0x10000000

    if-nez v8, :cond_16

    .line 15935
    const/4 v8, -0x1

    goto :goto_7

    :cond_16
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 15936
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 15935
    invoke-virtual {v8, v10, v9, v11}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    :goto_7
    move v15, v8

    .line 15938
    .local v15, "requiredUid":I
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-nez v8, :cond_17

    .line 15939
    const/4 v8, -0x1

    goto :goto_8

    :cond_17
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 15940
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 15939
    invoke-virtual {v8, v10, v9, v11}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    :goto_8
    move v14, v8

    .line 15943
    .local v14, "optionalUid":I
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v8, :cond_18

    const/4 v8, -0x1

    goto :goto_9

    :cond_18
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    :goto_9
    move v13, v8

    .line 15944
    .local v13, "installerUid":I
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v8, v8, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v8, :cond_25

    const/4 v8, -0x1

    if-ne v15, v8, :cond_1a

    if-eq v14, v8, :cond_19

    goto :goto_a

    .line 16099
    :cond_19
    move-object/from16 v36, v0

    move/from16 v37, v2

    move/from16 v26, v5

    move/from16 v27, v6

    move v6, v13

    move/from16 v25, v14

    move/from16 v20, v15

    goto/16 :goto_f

    .line 15944
    :cond_1a
    :goto_a
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15946
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    iget v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15945
    invoke-static {v8, v10, v11, v13}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;III)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 15947
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v8

    .line 15949
    .local v12, "verification":Landroid/content/Intent;
    invoke-virtual {v12, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15950
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 15952
    const/4 v8, 0x1

    invoke-virtual {v12, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15955
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v18, "application/vnd.android.package-archive"

    const/16 v19, 0x0

    .line 15956
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    const/16 v21, 0x0

    .line 15955
    move-object/from16 v16, v8

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v11

    .line 15965
    .local v11, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$4208(Lcom/android/server/pm/PackageManagerService;)I

    move-result v10

    .line 15967
    .local v10, "verificationId":I
    const-string v8, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v12, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15969
    const-string v8, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15972
    const-string v8, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15975
    const-string v8, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    iget-object v9, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15978
    const-string v8, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    iget v9, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15981
    const-string v8, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    .line 15982
    move/from16 v26, v5

    move/from16 v27, v6

    invoke-virtual {v0}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v5

    .line 15981
    .end local v5    # "onSd":Z
    .end local v6    # "onInt":Z
    .local v26, "onSd":Z
    .local v27, "onInt":Z
    invoke-virtual {v12, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 15984
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v5, :cond_1e

    .line 15985
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v5, :cond_1b

    .line 15986
    const-string v5, "android.intent.extra.ORIGINATING_URI"

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15989
    :cond_1b
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v5, :cond_1c

    .line 15990
    const-string v5, "android.intent.extra.REFERRER"

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15993
    :cond_1c
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v5, :cond_1d

    .line 15994
    const-string v5, "android.intent.extra.ORIGINATING_UID"

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15997
    :cond_1d
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v5, v5, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v5, :cond_1e

    .line 15998
    const-string v5, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16003
    :cond_1e
    new-instance v5, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v5, v15, v3}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 16006
    .local v5, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v6, v10, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 16008
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v0, v11, v5}, Lcom/android/server/pm/PackageManagerService;->access$4300(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v6

    .line 16011
    .local v6, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v17

    .line 16012
    .local v17, "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v18

    .line 16018
    .local v18, "idleDuration":J
    if-eqz v6, :cond_21

    .line 16019
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 16020
    .local v8, "N":I
    if-nez v8, :cond_1f

    .line 16021
    const-string v9, "PackageManager"

    move-object/from16 v36, v0

    const-string v0, "Additional verifiers required, but none installed."

    .line 16021
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v36, "pkgLite":Landroid/content/pm/PackageInfoLite;
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16022
    const/16 v0, -0x16

    .line 16037
    .end local v2    # "ret":I
    .local v0, "ret":I
    move v2, v0

    move-object/from16 v38, v6

    goto :goto_d

    .line 16024
    .end local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v2    # "ret":I
    :cond_1f
    move-object/from16 v36, v0

    .line 16024
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    const/16 v23, 0x0

    .line 16024
    .local v23, "i":I
    :goto_b
    move/from16 v0, v23

    .line 16024
    .end local v23    # "i":I
    .local v0, "i":I
    if-ge v0, v8, :cond_20

    .line 16025
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 16026
    .local v9, "verifierComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v29

    .line 16027
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    .line 16028
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v33

    const/16 v34, 0x0

    const-string/jumbo v35, "package verifier"

    .line 16026
    move-object/from16 v28, v17

    move-wide/from16 v31, v18

    invoke-virtual/range {v28 .. v35}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 16030
    move/from16 v37, v2

    new-instance v2, Landroid/content/Intent;

    .line 16030
    .end local v2    # "ret":I
    .local v37, "ret":I
    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16031
    .local v2, "sufficientIntent":Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16032
    move-object/from16 v38, v6

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16032
    .end local v6    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v38, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 16024
    .end local v2    # "sufficientIntent":Landroid/content/Intent;
    .end local v9    # "verifierComponent":Landroid/content/ComponentName;
    add-int/lit8 v23, v0, 0x1

    .line 16024
    .end local v0    # "i":I
    .restart local v23    # "i":I
    move/from16 v2, v37

    move-object/from16 v6, v38

    goto :goto_b

    .line 16037
    .end local v8    # "N":I
    .end local v23    # "i":I
    .end local v37    # "ret":I
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v2, "ret":I
    .restart local v6    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_20
    move/from16 v37, v2

    move-object/from16 v38, v6

    .line 16037
    .end local v2    # "ret":I
    .end local v6    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v37    # "ret":I
    .restart local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_c

    .line 16037
    .end local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v37    # "ret":I
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v2    # "ret":I
    .restart local v6    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_21
    move-object/from16 v36, v0

    move/from16 v37, v2

    move-object/from16 v38, v6

    .line 16037
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v2    # "ret":I
    .end local v6    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v37    # "ret":I
    .restart local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_c
    move/from16 v2, v37

    .line 16037
    .end local v37    # "ret":I
    .restart local v2    # "ret":I
    :goto_d
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 16038
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16039
    .local v0, "optionalIntent":Landroid/content/Intent;
    const-string v8, "com.qualcomm.qti.intent.action.PACKAGE_NEEDS_OPTIONAL_VERIFICATION"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16040
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v30, "application/vnd.android.package-archive"

    const/16 v31, 0x0

    .line 16041
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v32

    const/16 v33, 0x0

    .line 16040
    move-object/from16 v28, v8

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v33}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v9

    .line 16042
    .local v9, "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    invoke-static {v8, v6, v9}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v6

    .line 16044
    .local v6, "optionalVerifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16045
    invoke-virtual {v5, v14}, Lcom/android/server/pm/PackageVerificationState;->addOptionalVerifier(I)V

    .line 16046
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v8, :cond_22

    .line 16047
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v39, v5

    const-string v5, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 16047
    .end local v5    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .local v39, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    invoke-virtual {v8, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 16061
    move/from16 v41, v10

    move-object/from16 v42, v11

    move-object v5, v12

    move v6, v13

    move/from16 v25, v14

    move/from16 v20, v15

    goto :goto_e

    .line 16049
    .end local v39    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v5    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_22
    move-object/from16 v39, v5

    .line 16049
    .end local v5    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v39    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v40, v6

    new-instance v6, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    .line 16049
    .end local v6    # "optionalVerifierComponent":Landroid/content/ComponentName;
    .local v40, "optionalVerifierComponent":Landroid/content/ComponentName;
    invoke-direct {v6, v1, v10}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v9

    move-object v9, v0

    .line 16049
    .end local v9    # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v23, "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move/from16 v41, v10

    move-object v10, v4

    .line 16049
    .end local v10    # "verificationId":I
    .local v41, "verificationId":I
    move-object/from16 v42, v11

    move-object v11, v5

    .line 16049
    .end local v11    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v42, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v5, v12

    move-object v12, v6

    .line 16049
    .end local v12    # "verification":Landroid/content/Intent;
    .local v5, "verification":Landroid/content/Intent;
    move v6, v13

    move-object/from16 v13, v16

    .line 16049
    .end local v13    # "installerUid":I
    .local v6, "installerUid":I
    move/from16 v25, v14

    move/from16 v14, v20

    .line 16049
    .end local v14    # "optionalUid":I
    .local v25, "optionalUid":I
    move/from16 v20, v15

    move-object/from16 v15, v21

    .line 16049
    .end local v15    # "requiredUid":I
    .local v20, "requiredUid":I
    move-object/from16 v16, v22

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 16058
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16058
    .end local v0    # "optionalIntent":Landroid/content/Intent;
    .end local v23    # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v40    # "optionalVerifierComponent":Landroid/content/ComponentName;
    goto :goto_e

    .line 16061
    .end local v6    # "installerUid":I
    .end local v20    # "requiredUid":I
    .end local v25    # "optionalUid":I
    .end local v39    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v41    # "verificationId":I
    .end local v42    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v5, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v10    # "verificationId":I
    .restart local v11    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "verification":Landroid/content/Intent;
    .restart local v13    # "installerUid":I
    .restart local v14    # "optionalUid":I
    .restart local v15    # "requiredUid":I
    :cond_23
    move-object/from16 v39, v5

    move/from16 v41, v10

    move-object/from16 v42, v11

    move-object v5, v12

    move v6, v13

    move/from16 v25, v14

    move/from16 v20, v15

    .line 16061
    .end local v10    # "verificationId":I
    .end local v11    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "verification":Landroid/content/Intent;
    .end local v13    # "installerUid":I
    .end local v14    # "optionalUid":I
    .end local v15    # "requiredUid":I
    .local v5, "verification":Landroid/content/Intent;
    .restart local v6    # "installerUid":I
    .restart local v20    # "requiredUid":I
    .restart local v25    # "optionalUid":I
    .restart local v39    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .restart local v41    # "verificationId":I
    .restart local v42    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_e
    const/4 v8, 0x1

    if-ne v2, v8, :cond_24

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 16063
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    move-object/from16 v15, v42

    invoke-static {v0, v8, v15}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 16065
    .end local v42    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "requiredVerifierComponent":Landroid/content/ComponentName;
    .local v15, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-wide/32 v8, 0x40000

    const-string/jumbo v10, "verification"

    move/from16 v14, v41

    invoke-static {v8, v9, v10, v14}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 16072
    .end local v41    # "verificationId":I
    .local v14, "verificationId":I
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16073
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v29

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 16075
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v33

    const/16 v34, 0x0

    const-string/jumbo v35, "package verifier"

    .line 16073
    move-object/from16 v28, v17

    move-object/from16 v30, v8

    move-wide/from16 v31, v18

    invoke-virtual/range {v28 .. v35}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 16076
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.PACKAGE_VERIFICATION_AGENT"

    new-instance v12, Lcom/android/server/pm/PackageManagerService$InstallParams$2;

    invoke-direct {v12, v1, v14}, Lcom/android/server/pm/PackageManagerService$InstallParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v9, v5

    move-object v10, v4

    move/from16 v23, v14

    move/from16 v14, v16

    .end local v14    # "verificationId":I
    .local v23, "verificationId":I
    move-object/from16 v24, v15

    move-object/from16 v15, v21

    .line 16076
    .end local v15    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v24, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v16, v22

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 16092
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16094
    .end local v0    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v17    # "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v18    # "idleDuration":J
    .end local v23    # "verificationId":I
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v39    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_24
    goto :goto_10

    .line 16099
    .end local v20    # "requiredUid":I
    .end local v25    # "optionalUid":I
    .end local v26    # "onSd":Z
    .end local v27    # "onInt":Z
    .end local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v5, "onSd":Z
    .local v6, "onInt":Z
    .restart local v13    # "installerUid":I
    .local v14, "optionalUid":I
    .local v15, "requiredUid":I
    :cond_25
    move-object/from16 v36, v0

    move/from16 v37, v2

    move/from16 v26, v5

    move/from16 v27, v6

    move v6, v13

    move/from16 v25, v14

    move/from16 v20, v15

    .line 16099
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v2    # "ret":I
    .end local v5    # "onSd":Z
    .end local v13    # "installerUid":I
    .end local v14    # "optionalUid":I
    .end local v15    # "requiredUid":I
    .local v6, "installerUid":I
    .restart local v20    # "requiredUid":I
    .restart local v25    # "optionalUid":I
    .restart local v26    # "onSd":Z
    .restart local v27    # "onInt":Z
    .restart local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v37    # "ret":I
    :goto_f
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v2

    .line 16099
    .end local v4    # "verifierUser":Landroid/os/UserHandle;
    .end local v6    # "installerUid":I
    .end local v20    # "requiredUid":I
    .end local v25    # "optionalUid":I
    .end local v37    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_10

    .line 16103
    .end local v26    # "onSd":Z
    .end local v27    # "onInt":Z
    .end local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v5    # "onSd":Z
    .local v6, "onInt":Z
    :cond_26
    move-object/from16 v36, v0

    move/from16 v37, v2

    move/from16 v26, v5

    move/from16 v27, v6

    .line 16103
    .end local v0    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v5    # "onSd":Z
    .end local v6    # "onInt":Z
    .restart local v26    # "onSd":Z
    .restart local v27    # "onInt":Z
    .restart local v36    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :goto_10
    iput v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
