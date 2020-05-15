.class public Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
    }
.end annotation


# static fields
.field public static final DEX_OPT_FAILED:I = -0x1

.field public static final DEX_OPT_PERFORMED:I = 0x1

.field public static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field public static final SKIP_SHARED_LIBRARY_CHECK:Ljava/lang/String; = "&"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"

.field private static final WAKELOCK_TIMEOUT_MS:J = 0xa1220L


# instance fields
.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation
.end field

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation
.end field

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "wakeLockTag"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 103
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 105
    const-string/jumbo v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 106
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .locals 1
    .param p1, "from"    # Lcom/android/server/pm/PackageDexOptimizer;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 111
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 112
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 114
    return-void
.end method

.method private acquireWakeLockLI(I)J
    .locals 3
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation

    .line 359
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 360
    const-wide/16 v0, -0x1

    return-wide v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 363
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xa1220

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 118
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    .line 682
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 683
    return-object v1

    .line 685
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 686
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 692
    .local v2, "oatDir":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    nop

    .line 697
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 693
    :catch_0
    move-exception v3

    .line 694
    .local v3, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v4, "PackageManager.DexOptimizer"

    const-string v5, "Failed to create oat dir"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    return-object v1

    .line 699
    .end local v2    # "oatDir":Ljava/io/File;
    .end local v3    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_1
    return-object v1
.end method

.method private dexOptPath(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I
    .locals 31
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isa"    # Ljava/lang/String;
    .param p4, "compilerFilter"    # Ljava/lang/String;
    .param p5, "profileUpdated"    # Z
    .param p6, "classLoaderContext"    # Ljava/lang/String;
    .param p7, "dexoptFlags"    # I
    .param p8, "uid"    # I
    .param p9, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p10, "downgrade"    # Z
    .param p11, "profileName"    # Ljava/lang/String;
    .param p12, "dexMetadataPath"    # Ljava/lang/String;
    .param p13, "compilationReason"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p9

    .line 267
    move-object v1, v8

    move-object v2, v15

    move-object v3, v14

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p5

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v1

    .line 269
    .local v1, "dexoptNeeded":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 270
    return v2

    .line 276
    :cond_0
    invoke-direct {v8, v9, v14}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "oatDir":Ljava/lang/String;
    const-string v0, "PackageManager.DexOptimizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running dexopt (dexoptNeeded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isa="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dexoptFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    move/from16 v5, p7

    invoke-direct {v8, v5}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " targetFilter="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " oatDir="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " classLoaderContext="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-wide/from16 v27, v10

    .line 287
    .local v27, "startTime":J
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v4, "com.ludashi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v4, "com.antutu"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    :cond_1
    const-string/jumbo v0, "speed"

    .line 294
    .end local p4    # "compilerFilter":Ljava/lang/String;
    .local v0, "compilerFilter":Ljava/lang/String;
    move-object v6, v0

    .line 294
    .end local v0    # "compilerFilter":Ljava/lang/String;
    .local v6, "compilerFilter":Ljava/lang/String;
    :cond_2
    iget-object v10, v8, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/16 v22, 0x0

    iget-object v11, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v29, 0x1

    if-eqz p12, :cond_3

    .line 298
    move/from16 v2, v29

    goto :goto_0

    .line 294
    :cond_3
    nop

    .line 298
    :goto_0
    move/from16 v9, p13

    :try_start_1
    invoke-direct {v8, v9, v2}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v26
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 294
    move v2, v11

    move-object v11, v15

    move-object/from16 v21, v12

    move/from16 v12, p8

    move-object v8, v13

    move-object v13, v0

    move-object/from16 v14, p3

    move-object v9, v15

    move v15, v1

    move-object/from16 v16, v3

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    move/from16 v23, v2

    move-object/from16 v24, p11

    move-object/from16 v25, p12

    :try_start_2
    invoke-virtual/range {v10 .. v26}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-eqz v8, :cond_4

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 302
    .local v10, "endTime":J
    sub-long v12, v10, v27

    long-to-int v0, v12

    int-to-long v12, v0

    invoke-virtual {v8, v9, v12, v13}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V

    .line 305
    .end local v10    # "endTime":J
    :cond_4
    const-class v0, Lcom/android/server/NubiaMLockManager;

    .line 306
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NubiaMLockManager;
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    .local v0, "mLockManager":Lcom/android/server/NubiaMLockManager;
    if-eqz v0, :cond_5

    .line 309
    move-object/from16 v2, p1

    :try_start_3
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/NubiaMLockManager;->updateWhenAppChange(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 313
    .end local v0    # "mLockManager":Lcom/android/server/NubiaMLockManager;
    .end local v27    # "startTime":J
    :catch_0
    move-exception v0

    goto :goto_3

    .line 312
    .restart local v0    # "mLockManager":Lcom/android/server/NubiaMLockManager;
    .restart local v27    # "startTime":J
    :cond_5
    move-object/from16 v2, p1

    :goto_1
    return v29

    .line 313
    .end local v0    # "mLockManager":Lcom/android/server/NubiaMLockManager;
    .end local v27    # "startTime":J
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v8, v13

    move-object v9, v15

    :goto_2
    move-object/from16 v2, p1

    goto :goto_3

    .line 313
    .end local v6    # "compilerFilter":Ljava/lang/String;
    .restart local p4    # "compilerFilter":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v2, v9

    move-object v8, v13

    move-object v9, v15

    .line 314
    .end local p4    # "compilerFilter":Ljava/lang/String;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v6    # "compilerFilter":Ljava/lang/String;
    :goto_3
    const-string v4, "PackageManager.DexOptimizer"

    const-string v10, "Failed to dexopt"

    invoke-static {v4, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    const/4 v4, -0x1

    return v4
.end method

.method private dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 27
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    .line 390
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySharedDex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v3

    .line 396
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 400
    .local v14, "compilerFilter":Ljava/lang/String;
    move-object/from16 v13, p4

    invoke-direct {v1, v2, v14, v13}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    .line 402
    .local v0, "dexoptFlags":I
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/16 v20, -0x1

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 403
    invoke-static {v3, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    or-int/lit16 v0, v0, 0x100

    .line 412
    .end local v0    # "dexoptFlags":I
    .local v12, "dexoptFlags":I
    :goto_0
    move v12, v0

    goto :goto_1

    .line 405
    .end local v12    # "dexoptFlags":I
    .restart local v0    # "dexoptFlags":I
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 406
    invoke-static {v3, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    .line 412
    .end local v0    # "dexoptFlags":I
    .restart local v12    # "dexoptFlags":I
    :goto_1
    const-string v0, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running dexopt on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isa="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " dexoptFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-direct {v1, v12}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " target-filter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v21, "&"

    .line 423
    .local v21, "classLoaderContext":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v0

    move v11, v0

    .line 425
    .local v11, "reason":I
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 430
    .local v7, "isa":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 433
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v16

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 434
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v19
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    move-object/from16 v23, v4

    move-object v4, v15

    move/from16 v22, v9

    const/4 v9, 0x0

    move-object/from16 v24, v10

    move v10, v12

    move/from16 v25, v11

    move-object v11, v14

    .end local v11    # "reason":I
    .local v25, "reason":I
    move/from16 v26, v12

    move-object/from16 v12, v24

    .end local v12    # "dexoptFlags":I
    .local v26, "dexoptFlags":I
    move-object/from16 v13, v21

    move-object/from16 v24, v14

    move-object/from16 v14, v23

    .end local v14    # "compilerFilter":Ljava/lang/String;
    .local v24, "compilerFilter":Ljava/lang/String;
    move/from16 v15, v16

    move/from16 v16, v22

    :try_start_1
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .end local v7    # "isa":Ljava/lang/String;
    nop

    .line 425
    move-object/from16 v15, p2

    move-object/from16 v13, p4

    move-object/from16 v14, v24

    move/from16 v11, v25

    move/from16 v12, v26

    goto :goto_2

    .line 437
    .end local v24    # "compilerFilter":Ljava/lang/String;
    .end local v25    # "reason":I
    .end local v26    # "dexoptFlags":I
    .restart local v11    # "reason":I
    .restart local v12    # "dexoptFlags":I
    .restart local v14    # "compilerFilter":Ljava/lang/String;
    :cond_2
    move/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v24, v14

    .end local v11    # "reason":I
    .end local v12    # "dexoptFlags":I
    .end local v14    # "compilerFilter":Ljava/lang/String;
    .restart local v24    # "compilerFilter":Ljava/lang/String;
    .restart local v25    # "reason":I
    .restart local v26    # "dexoptFlags":I
    const-class v0, Lcom/android/server/NubiaMLockManager;

    .line 438
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NubiaMLockManager;

    .line 440
    .local v0, "mLockManager":Lcom/android/server/NubiaMLockManager;
    if-eqz v0, :cond_3

    .line 441
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/NubiaMLockManager;->updateWhenAppChange(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 445
    .end local v0    # "mLockManager":Lcom/android/server/NubiaMLockManager;
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v24    # "compilerFilter":Ljava/lang/String;
    .end local v25    # "reason":I
    .end local v26    # "dexoptFlags":I
    .restart local v11    # "reason":I
    .restart local v12    # "dexoptFlags":I
    .restart local v14    # "compilerFilter":Ljava/lang/String;
    :catch_1
    move-exception v0

    move/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v24, v14

    .line 446
    .end local v11    # "reason":I
    .end local v12    # "dexoptFlags":I
    .end local v14    # "compilerFilter":Ljava/lang/String;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v24    # "compilerFilter":Ljava/lang/String;
    .restart local v25    # "reason":I
    .restart local v26    # "dexoptFlags":I
    :goto_3
    const-string v3, "PackageManager.DexOptimizer"

    const-string v4, "Failed to dexopt"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    return v20

    .line 409
    .end local v21    # "classLoaderContext":Ljava/lang/String;
    .end local v24    # "compilerFilter":Ljava/lang/String;
    .end local v25    # "reason":I
    .end local v26    # "dexoptFlags":I
    .local v0, "dexoptFlags":I
    .restart local v14    # "compilerFilter":Ljava/lang/String;
    :cond_4
    move-object/from16 v24, v14

    .end local v14    # "compilerFilter":Ljava/lang/String;
    .restart local v24    # "compilerFilter":Ljava/lang/String;
    const-string v3, "PackageManager.DexOptimizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not infer CE/DE storage for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v20
.end method

.method private getAugmentedReasonName(IZ)Ljava/lang/String;
    .locals 3
    .param p1, "compilationReason"    # I
    .param p2, "useDexMetadata"    # Z

    .line 320
    if-eqz p2, :cond_0

    .line 321
    const-string v0, "-dm"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 322
    .local v0, "annotation":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 12
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 583
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 584
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 589
    .local v1, "debuggable":Z
    :goto_0
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v4

    .line 590
    .local v4, "isProfileGuidedFilter":Z
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isForwardLocked()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_1

    .line 591
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    .line 592
    .local v5, "isPublic":Z
    :goto_1
    if-eqz v4, :cond_3

    const/16 v6, 0x10

    goto :goto_2

    :cond_3
    move v6, v3

    .line 596
    .local v6, "profileFlag":I
    :goto_2
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v7

    if-nez v7, :cond_4

    .line 597
    nop

    .line 598
    move v7, v3

    goto :goto_3

    :cond_4
    const/16 v7, 0x400

    .line 600
    .local v7, "hiddenApiFlag":I
    :goto_3
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v8

    .line 601
    .local v8, "compilationReason":I
    const/4 v9, 0x1

    .line 602
    .local v9, "generateCompactDex":Z
    packed-switch v8, :pswitch_data_0

    goto :goto_4

    .line 606
    :pswitch_0
    const/4 v9, 0x0

    .line 614
    :goto_4
    if-eqz v4, :cond_6

    iget-object v10, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-eqz v10, :cond_5

    .line 615
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isAppImageEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    .line 617
    .local v2, "generateAppImage":Z
    :goto_5
    if-eqz v5, :cond_7

    .line 618
    const/4 v10, 0x2

    goto :goto_6

    .line 617
    :cond_7
    nop

    .line 618
    move v10, v3

    :goto_6
    if-eqz v1, :cond_8

    const/4 v11, 0x4

    goto :goto_7

    :cond_8
    move v11, v3

    :goto_7
    or-int/2addr v10, v11

    or-int/2addr v10, v6

    .line 620
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x8

    goto :goto_8

    :cond_9
    move v11, v3

    :goto_8
    or-int/2addr v10, v11

    .line 621
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x200

    goto :goto_9

    :cond_a
    move v11, v3

    :goto_9
    or-int/2addr v10, v11

    .line 622
    if-eqz v9, :cond_b

    const/16 v11, 0x800

    goto :goto_a

    :cond_b
    move v11, v3

    :goto_a
    or-int/2addr v10, v11

    .line 623
    if-eqz v2, :cond_c

    const/16 v3, 0x1000

    nop

    :cond_c
    or-int/2addr v3, v10

    or-int/2addr v3, v7

    .line 625
    .local v3, "dexFlags":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v10

    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getDexFlags(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 575
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isa"    # Ljava/lang/String;
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "classLoaderContext"    # Ljava/lang/String;
    .param p5, "newProfile"    # Z
    .param p6, "downgrade"    # Z

    .line 636
    :try_start_0
    invoke-static/range {p1 .. p6}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .local v0, "dexoptNeeded":I
    nop

    .line 640
    nop

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v1

    return v1

    .line 638
    .end local v0    # "dexoptNeeded":I
    :catch_0
    move-exception v0

    .line 639
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "PackageManager.DexOptimizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException reading apk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    const/4 v1, -0x1

    return v1
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "codePath"    # Ljava/io/File;

    .line 703
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"    # Z

    .line 550
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 551
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 553
    .local v1, "vmSafeMode":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    const-string/jumbo v2, "verify"

    return-object v2

    .line 556
    :cond_1
    if-eqz v1, :cond_2

    .line 557
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 560
    :cond_2
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    .line 562
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 566
    :cond_3
    return-object p2
.end method

.method private isAppImageEnabled()Z
    .locals 2

    .line 579
    const-string v0, "dalvik.vm.appimageformat"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isProfileUpdated(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "uid"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "compilerFilter"    # Ljava/lang/String;

    .line 656
    invoke-static {p4}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 657
    return v1

    .line 661
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v2, p3}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageManager.DexOptimizer"

    const-string v3, "Failed to merge profiles"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    return v1
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 36
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "targetInstructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 161
    if-eqz p3, :cond_0

    .line 162
    move-object/from16 v0, p3

    goto :goto_0

    :cond_0
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v13, v0

    .line 163
    .local v13, "instructionSets":[Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    move-result-object v11

    .line 166
    .local v11, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 167
    .local v0, "sharedGid":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 168
    const-string v1, "PackageManager.DexOptimizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Well this is awkward; package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " had UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/16 v0, 0x270f

    .line 176
    .end local v0    # "sharedGid":I
    .local v9, "sharedGid":I
    :cond_1
    move v9, v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Z

    .line 177
    .local v8, "pathsWithCode":[Z
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_2

    move/from16 v0, v17

    goto :goto_1

    :cond_2
    move/from16 v0, v16

    :goto_1
    aput-boolean v0, v8, v16

    .line 178
    move/from16 v0, v17

    .line 178
    .local v0, "i":I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 179
    iget-object v1, v15, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    move/from16 v1, v17

    goto :goto_3

    :cond_3
    move/from16 v1, v16

    :goto_3
    aput-boolean v1, v8, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    .end local v0    # "i":I
    :cond_4
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v7, p2

    invoke-static {v0, v7, v8}, Lcom/android/server/pm/dex/DexoptUtils;->getClassLoaderContexts(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "classLoaderContexts":[Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v6

    if-eq v0, v1, :cond_6

    .line 186
    iget-object v0, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "splitCodePaths":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information between PackageParser.Package and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.applicationInfo.getBaseCodePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 190
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.applicationInfo.getSplitCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    if-nez v0, :cond_5

    const-string/jumbo v3, "null"

    goto :goto_4

    :cond_5
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    .end local v0    # "splitCodePaths":[Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    .line 196
    .local v0, "result":I
    move v1, v0

    move/from16 v0, v16

    .line 196
    .local v0, "i":I
    .local v1, "result":I
    :goto_5
    move v4, v0

    .line 196
    .end local v0    # "i":I
    .local v4, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_12

    .line 198
    aget-boolean v0, v8, v4

    if-nez v0, :cond_7

    .line 199
    goto :goto_6

    .line 201
    :cond_7
    aget-object v0, v6, v4

    if-eqz v0, :cond_11

    .line 208
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 209
    .local v3, "path":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 212
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 213
    nop

    .line 196
    .end local v3    # "path":Ljava/lang/String;
    :goto_6
    move v14, v4

    move-object/from16 v31, v6

    move-object/from16 v26, v8

    move/from16 v32, v9

    move v15, v10

    move-object/from16 v33, v11

    move-object/from16 v27, v12

    move-object/from16 v34, v13

    goto/16 :goto_f

    .line 217
    .restart local v3    # "path":Ljava/lang/String;
    :cond_8
    if-nez v4, :cond_9

    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    iget-object v2, v15, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    add-int/lit8 v5, v4, -0x1

    aget-object v2, v2, v5

    :goto_7
    invoke-static {v2}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "profileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 220
    .local v5, "dexMetadataPath":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 222
    .local v0, "dexMetadataFile":Ljava/io/File;
    if-nez v0, :cond_a

    .line 223
    const/16 v18, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    :goto_8
    move-object/from16 v0, v18

    .line 223
    .end local v5    # "dexMetadataPath":Ljava/lang/String;
    .local v0, "dexMetadataPath":Ljava/lang/String;
    goto :goto_9

    .line 226
    .end local v0    # "dexMetadataPath":Ljava/lang/String;
    .restart local v5    # "dexMetadataPath":Ljava/lang/String;
    :cond_b
    move-object/from16 v18, v5

    .line 226
    .end local v5    # "dexMetadataPath":Ljava/lang/String;
    .local v18, "dexMetadataPath":Ljava/lang/String;
    :goto_9
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptAsSharedLibrary()Z

    move-result v0

    if-nez v0, :cond_d

    .line 227
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_a

    :cond_c
    move/from16 v5, v16

    goto :goto_b

    :cond_d
    move-object/from16 v0, p5

    :goto_a
    move/from16 v5, v17

    .line 228
    .local v5, "isUsedByOtherApps":Z
    :goto_b
    iget-object v10, v15, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 229
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-direct {v14, v10, v0, v5}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 230
    .local v10, "compilerFilter":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileUpdates()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 231
    invoke-direct {v14, v15, v9, v2, v10}, Lcom/android/server/pm/PackageDexOptimizer;->isProfileUpdated(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move/from16 v0, v17

    goto :goto_c

    :cond_e
    move/from16 v0, v16

    :goto_c
    move/from16 v19, v5

    move v5, v0

    .line 235
    .local v5, "profileUpdated":Z
    .local v19, "isUsedByOtherApps":Z
    move-object/from16 v0, p6

    invoke-direct {v14, v15, v10, v0}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v22

    .line 237
    .local v22, "dexoptFlags":I
    move/from16 v23, v5

    array-length v5, v12

    .line 237
    .end local v5    # "profileUpdated":Z
    .local v23, "profileUpdated":Z
    move/from16 v24, v1

    move/from16 v1, v16

    .line 237
    .end local v1    # "result":I
    .local v24, "result":I
    :goto_d
    if-ge v1, v5, :cond_10

    aget-object v25, v12, v1

    .line 238
    .local v25, "dexCodeIsa":Ljava/lang/String;
    aget-object v26, v6, v4

    .line 240
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v27

    .line 241
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v28

    .line 238
    move-object v0, v14

    move/from16 v21, v1

    move-object v1, v15

    move-object/from16 v29, v2

    move-object v2, v3

    .line 238
    .end local v2    # "profileName":Ljava/lang/String;
    .local v29, "profileName":Ljava/lang/String;
    move-object/from16 v30, v3

    move-object/from16 v3, v25

    .line 238
    .end local v3    # "path":Ljava/lang/String;
    .local v30, "path":Ljava/lang/String;
    move v14, v4

    move-object v4, v10

    .line 238
    .end local v4    # "i":I
    .local v14, "i":I
    move-object/from16 v31, v6

    move-object/from16 v6, v26

    .line 238
    .end local v6    # "classLoaderContexts":[Ljava/lang/String;
    .local v31, "classLoaderContexts":[Ljava/lang/String;
    move/from16 v7, v22

    move-object/from16 v26, v8

    move v8, v9

    .line 238
    .end local v8    # "pathsWithCode":[Z
    .local v26, "pathsWithCode":[Z
    move/from16 v32, v9

    move-object/from16 v9, p4

    .line 238
    .end local v9    # "sharedGid":I
    .local v32, "sharedGid":I
    move-object/from16 v20, v10

    const/4 v15, -0x1

    move/from16 v10, v27

    .line 238
    .end local v10    # "compilerFilter":Ljava/lang/String;
    .local v20, "compilerFilter":Ljava/lang/String;
    move-object/from16 v33, v11

    move-object/from16 v11, v29

    .line 238
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v33, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v27, v12

    move-object/from16 v12, v18

    .line 238
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v27, "dexCodeInstructionSets":[Ljava/lang/String;
    move-object/from16 v34, v13

    move/from16 v13, v28

    .line 238
    .end local v13    # "instructionSets":[Ljava/lang/String;
    .local v34, "instructionSets":[Ljava/lang/String;
    move/from16 v35, v23

    move/from16 v23, v5

    move/from16 v5, v35

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 246
    .end local v23    # "profileUpdated":Z
    .local v0, "newResult":I
    .restart local v5    # "profileUpdated":Z
    move/from16 v1, v24

    if-eq v1, v15, :cond_f

    .line 246
    .end local v24    # "result":I
    .restart local v1    # "result":I
    if-eqz v0, :cond_f

    .line 247
    nop

    .line 237
    .end local v1    # "result":I
    .end local v25    # "dexCodeIsa":Ljava/lang/String;
    .local v0, "result":I
    move/from16 v24, v0

    goto :goto_e

    .line 237
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :cond_f
    move/from16 v24, v1

    .line 237
    .end local v1    # "result":I
    .restart local v24    # "result":I
    :goto_e
    add-int/lit8 v1, v21, 0x1

    move-object/from16 v7, p2

    move-object/from16 v0, p6

    move v4, v14

    move-object/from16 v10, v20

    move-object/from16 v8, v26

    move-object/from16 v12, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v6, v31

    move/from16 v9, v32

    move-object/from16 v11, v33

    move-object/from16 v13, v34

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v35, v23

    move/from16 v23, v5

    move/from16 v5, v35

    goto :goto_d

    .line 196
    .end local v5    # "profileUpdated":Z
    .end local v14    # "i":I
    .end local v18    # "dexMetadataPath":Ljava/lang/String;
    .end local v19    # "isUsedByOtherApps":Z
    .end local v20    # "compilerFilter":Ljava/lang/String;
    .end local v22    # "dexoptFlags":I
    .end local v26    # "pathsWithCode":[Z
    .end local v27    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v29    # "profileName":Ljava/lang/String;
    .end local v30    # "path":Ljava/lang/String;
    .end local v31    # "classLoaderContexts":[Ljava/lang/String;
    .end local v32    # "sharedGid":I
    .end local v33    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "instructionSets":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v8    # "pathsWithCode":[Z
    .restart local v9    # "sharedGid":I
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v13    # "instructionSets":[Ljava/lang/String;
    :cond_10
    move v14, v4

    move-object/from16 v31, v6

    move-object/from16 v26, v8

    move/from16 v32, v9

    move-object/from16 v33, v11

    move-object/from16 v27, v12

    move-object/from16 v34, v13

    move/from16 v1, v24

    const/4 v15, -0x1

    .end local v4    # "i":I
    .end local v6    # "classLoaderContexts":[Ljava/lang/String;
    .end local v8    # "pathsWithCode":[Z
    .end local v9    # "sharedGid":I
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v13    # "instructionSets":[Ljava/lang/String;
    .end local v24    # "result":I
    .restart local v1    # "result":I
    .restart local v14    # "i":I
    .restart local v26    # "pathsWithCode":[Z
    .restart local v27    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v31    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v32    # "sharedGid":I
    .restart local v33    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "instructionSets":[Ljava/lang/String;
    :goto_f
    add-int/lit8 v0, v14, 0x1

    .line 196
    .end local v14    # "i":I
    .local v0, "i":I
    move-object/from16 v7, p2

    move v10, v15

    move-object/from16 v8, v26

    move-object/from16 v12, v27

    move-object/from16 v6, v31

    move/from16 v9, v32

    move-object/from16 v11, v33

    move-object/from16 v13, v34

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    goto/16 :goto_5

    .line 202
    .end local v0    # "i":I
    .end local v26    # "pathsWithCode":[Z
    .end local v27    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v31    # "classLoaderContexts":[Ljava/lang/String;
    .end local v32    # "sharedGid":I
    .end local v33    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "instructionSets":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v8    # "pathsWithCode":[Z
    .restart local v9    # "sharedGid":I
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v13    # "instructionSets":[Ljava/lang/String;
    :cond_11
    move v14, v4

    move-object/from16 v31, v6

    move-object/from16 v26, v8

    move/from16 v32, v9

    move-object/from16 v33, v11

    move-object/from16 v27, v12

    move-object/from16 v34, v13

    .line 202
    .end local v4    # "i":I
    .end local v6    # "classLoaderContexts":[Ljava/lang/String;
    .end local v8    # "pathsWithCode":[Z
    .end local v9    # "sharedGid":I
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v13    # "instructionSets":[Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v26    # "pathsWithCode":[Z
    .restart local v27    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v31    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v32    # "sharedGid":I
    .restart local v33    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "instructionSets":[Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    move-object/from16 v3, v33

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 204
    .end local v33    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    .end local v3    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "i":I
    .end local v26    # "pathsWithCode":[Z
    .end local v27    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v31    # "classLoaderContexts":[Ljava/lang/String;
    .end local v32    # "sharedGid":I
    .end local v34    # "instructionSets":[Ljava/lang/String;
    .restart local v6    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v8    # "pathsWithCode":[Z
    .restart local v9    # "sharedGid":I
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v13    # "instructionSets":[Ljava/lang/String;
    :cond_12
    move-object/from16 v31, v6

    move-object/from16 v26, v8

    move/from16 v32, v9

    move-object v3, v11

    move-object/from16 v27, v12

    move-object/from16 v34, v13

    .line 251
    .end local v6    # "classLoaderContexts":[Ljava/lang/String;
    .end local v8    # "pathsWithCode":[Z
    .end local v9    # "sharedGid":I
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v13    # "instructionSets":[Ljava/lang/String;
    .restart local v3    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "pathsWithCode":[Z
    .restart local v27    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v31    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v32    # "sharedGid":I
    .restart local v34    # "instructionSets":[Ljava/lang/String;
    return v1
.end method

.method private printDexoptFlags(I)Ljava/lang/String;
    .locals 3
    .param p1, "flags"    # I

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v0, "flagsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 714
    const-string v1, "boot_complete"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_0
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 717
    const-string v1, "debuggable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_1
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 720
    const-string/jumbo v1, "profile_guided"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_2
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 723
    const-string/jumbo v1, "public"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_3
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 726
    const-string/jumbo v1, "secondary"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_4
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    .line 729
    const-string v1, "force"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    :cond_5
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    .line 732
    const-string/jumbo v1, "storage_ce"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_6
    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_7

    .line 735
    const-string/jumbo v1, "storage_de"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_7
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_8

    .line 738
    const-string v1, "idle_background_job"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_8
    and-int/lit16 v1, p1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_9

    .line 741
    const-string v1, "enable_hidden_api_checks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_9
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private releaseWakeLockLI(J)V
    .locals 5
    .param p1, "acquireTime"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation

    .line 369
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 370
    return-void

    .line 373
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 376
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 377
    .local v0, "duration":J
    const-wide/32 v2, 0xa1220

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 378
    const-string v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " time out. Operation took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms. Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v0    # "duration":J
    :cond_2
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageManager.DexOptimizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while releasing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .locals 0
    .param p1, "dexoptFlags"    # I

    .line 463
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .locals 0
    .param p1, "dexoptNeeded"    # I

    .line 456
    return p1
.end method

.method public dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 341
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 347
    .local v1, "acquireTime":J
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 347
    return v3

    .line 349
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    throw v3

    .line 351
    .end local v1    # "acquireTime":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .locals 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "useInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 497
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "instructionSets":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v2

    .line 502
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 503
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 506
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v1, v6

    .line 508
    .local v7, "isa":Ljava/lang/String;
    :try_start_0
    invoke-static {v4, v7}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v8

    .line 509
    .local v8, "info":Ldalvik/system/DexFile$OptimizationInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": [status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] [reason="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v8}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 509
    invoke-virtual {p1, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v8    # "info":Ldalvik/system/DexFile$OptimizationInfo;
    goto :goto_2

    .line 511
    :catch_0
    move-exception v8

    .line 512
    .local v8, "ioe":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": [Exception]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 506
    .end local v7    # "isa":Ljava/lang/String;
    .end local v8    # "ioe":Ljava/io/IOException;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 516
    :cond_0
    invoke-virtual {p3, v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "used by other apps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 520
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v5

    .line 522
    .local v5, "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 523
    const-string/jumbo v6, "known secondary dex files:"

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 525
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 526
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 527
    .local v8, "dex":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 528
    .local v9, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-virtual {p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 531
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "class loader context: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 533
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "used by other apps: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 535
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 536
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v8    # "dex":Ljava/lang/String;
    .end local v9    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    goto :goto_3

    .line 537
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 539
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 540
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    goto/16 :goto_0

    .line 541
    :cond_5
    return-void
.end method

.method dumpDexoptStateForPackage(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/lang/String;
    .locals 13
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "useInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 472
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "instructionSets":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v2

    .line 475
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 476
    .local v3, "dumppedState":Ljava/lang/StringBuffer;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 477
    .local v5, "path":Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v1, v7

    .line 478
    .local v8, "isa":Ljava/lang/String;
    const/4 v9, 0x0

    .line 480
    .local v9, "status":Ljava/lang/String;
    :try_start_0
    invoke-static {v5, v8}, Ldalvik/system/DexFile;->getDexFileStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 481
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    goto :goto_2

    .line 483
    :catch_0
    move-exception v10

    .line 484
    .local v10, "ioe":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Exception]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .end local v8    # "isa":Ljava/lang/String;
    .end local v9    # "status":Ljava/lang/String;
    .end local v10    # "ioe":Ljava/io/IOException;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 487
    .end local v5    # "path":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 135
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 139
    invoke-static {p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    .local v1, "acquireTime":J
    :try_start_1
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 145
    return v3

    .line 148
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    throw v3

    .line 150
    .end local v1    # "acquireTime":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method systemReady()V
    .locals 1

    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 708
    return-void
.end method
