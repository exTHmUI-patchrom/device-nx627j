.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field final mAllowApks:Z

.field private final mAllowObbs:Z

.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field final mBuffer:[B

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZI)V
    .locals 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "monitorTask"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p6, "allowApks"    # Z
    .param p7, "allowObbs"    # Z
    .param p8, "ephemeralOpToken"    # I

    .line 133
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 75
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 112
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 121
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 124
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 134
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 135
    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 136
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 137
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 138
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 139
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 140
    iput-boolean p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 141
    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowObbs:Z

    .line 142
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    .line 144
    nop

    .line 145
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v1, "Timeout parameters cannot be null"

    .line 144
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 147
    return-void
.end method

.method static synthetic access$014(Lcom/android/server/backup/restore/FullRestoreEngine;J)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/backup/restore/FullRestoreEngine;
    .param p1, "x1"    # J

    .line 69
    iget-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    return-wide v0
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 630
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 634
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .locals 3
    .param p0, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 605
    const-string v0, "c"

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 609
    return v1

    .line 612
    :cond_0
    const-string/jumbo v0, "r"

    iget-object v2, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v2, "no_backup/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    return v1

    .line 626
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 570
    return-void
.end method

.method private shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 648
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "packages_to_clear_data_before_full_restore"

    .line 647
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "packageListString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    const/4 v1, 0x0

    return v1

    .line 654
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 655
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 592
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 596
    :cond_0
    return-void
.end method

.method private tearDownPipes()V
    .locals 4

    .line 576
    monitor-enter p0

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 579
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 580
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2

    .line 581
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 582
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 588
    :cond_0
    monitor-exit p0

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .locals 1

    .line 599
    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 600
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 601
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 602
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .locals 52
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    .line 160
    const-string v0, "BackupManagerService"

    const-string v2, "Restore engine used after halting"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v13

    .line 164
    :cond_0
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine$1;

    invoke-direct {v0, v1}, Lcom/android/server/backup/restore/FullRestoreEngine$1;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;)V

    move-object v14, v0

    .line 171
    .local v14, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v15, p7

    invoke-direct {v0, v10, v14, v15}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v9, v0

    .line 179
    .local v9, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v8, -0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v0

    move-object v4, v0

    .line 180
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v4, :cond_20

    .line 185
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v3, v0

    .line 186
    .local v3, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_20

    if-nez v0, :cond_3

    .line 189
    if-eqz v12, :cond_1

    .line 190
    :try_start_1
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected data for "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " but saw "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v1, v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 193
    invoke-virtual {v1, v13}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 194
    return v13

    .line 546
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_0
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    move-object/from16 v30, v15

    goto/16 :goto_1b

    .line 200
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_1
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_3

    .line 208
    const-string v0, "BackupManagerService"

    const-string v2, "Saw new package; finalizing old one"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 212
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 213
    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 214
    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    :cond_3
    :try_start_2
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_manifest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_20

    if-eqz v0, :cond_4

    .line 219
    :try_start_3
    invoke-virtual {v9, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 221
    .local v0, "signatures":[Landroid/content/pm/Signature;
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 223
    .local v7, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 224
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 223
    move-object v2, v9

    move-object v13, v3

    move-object/from16 v3, v16

    .line 223
    .end local v3    # "pkg":Ljava/lang/String;
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v29, v4

    move/from16 v4, p5

    .line 223
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .local v29, "info":Lcom/android/server/backup/FileMetadata;
    move-object v15, v5

    move-object/from16 v5, v29

    move v15, v6

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    .line 226
    .local v2, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v6, v29

    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 226
    .end local v29    # "info":Lcom/android/server/backup/FileMetadata;
    .local v6, "info":Lcom/android/server/backup/FileMetadata;
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v9, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 233
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v3, v13}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 234
    .end local v0    # "signatures":[Landroid/content/pm/Signature;
    .end local v2    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v7    # "pmi":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 552
    move/from16 v7, p6

    move-object v3, v6

    move-object v8, v12

    move-object/from16 v43, v14

    goto/16 :goto_19

    .line 546
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    .line 546
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v30, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v43, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_0
    move-object/from16 v30, p7

    goto/16 :goto_1b

    .line 234
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_4
    move-object v13, v3

    move v15, v6

    move-object v6, v4

    .line 234
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "pkg":Ljava/lang/String;
    :try_start_4
    iget-object v0, v6, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_meta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_20

    if-eqz v0, :cond_5

    .line 236
    :try_start_5
    invoke-virtual {v9, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 242
    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 244
    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v0

    .line 246
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_6
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v9, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 552
    move/from16 v7, p6

    move-object/from16 v30, v2

    move-object v3, v6

    move-object v8, v12

    move-object/from16 v43, v14

    goto/16 :goto_1a

    .line 546
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_2
    move-exception v0

    move/from16 v7, p6

    move-object/from16 v30, v2

    move-object v8, v12

    move-object/from16 v43, v14

    goto/16 :goto_1b

    .line 250
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_5
    const/4 v0, 0x1

    .line 251
    .local v0, "okay":Z
    :try_start_7
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/RestorePolicy;

    move-object v7, v2

    .line 252
    .local v7, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine$2;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v7}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_20

    packed-switch v2, :pswitch_data_0

    .line 305
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    .line 305
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v3, "info":Lcom/android/server/backup/FileMetadata;
    .local v15, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v32, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :try_start_8
    const-string v2, "BackupManagerService"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1f

    goto/16 :goto_2

    .line 289
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :pswitch_0
    :try_start_9
    iget-object v2, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 291
    const-string v2, "BackupManagerService"

    const-string v3, "apk present but ACCEPT"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 297
    const/4 v0, 0x0

    .line 312
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_6
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    goto/16 :goto_3

    .line 260
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :pswitch_1
    :try_start_a
    iget-object v2, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 262
    const-string v2, "BackupManagerService"

    const-string v3, "APK file; installing"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v5, v8

    move-object v8, v2

    .line 266
    .local v8, "installerPackageName":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 267
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 266
    move-object/from16 v16, v2

    move-object v2, v10

    move-object/from16 v5, v16

    move-object/from16 v31, v6

    move-object v6, v15

    .line 266
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .local v31, "info":Lcom/android/server/backup/FileMetadata;
    move-object v15, v7

    move-object/from16 v7, v31

    .line 266
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v15, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    move-object/from16 v32, v15

    move-object v15, v9

    move-object v9, v14

    .line 266
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v15, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :try_start_b
    invoke-static/range {v2 .. v9}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z

    move-result v2

    .line 272
    .local v2, "isSuccessfullyInstalled":Z
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    .line 273
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_1

    .line 274
    :cond_7
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 272
    :goto_1
    invoke-virtual {v3, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    move-object/from16 v3, v31

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    .line 278
    .end local v31    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    invoke-virtual {v15, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 279
    const/4 v4, 0x1

    return v4

    .line 283
    .end local v2    # "isSuccessfullyInstalled":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_8
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    .line 283
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 284
    const/4 v0, 0x0

    .line 286
    goto :goto_3

    .line 546
    .end local v0    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_3
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    move-object/from16 v30, p7

    .line 546
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_1b

    .line 254
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v0    # "okay":Z
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "pkg":Ljava/lang/String;
    :pswitch_2
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    .line 254
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v0, 0x0

    .line 255
    goto :goto_3

    .line 305
    :goto_2
    :try_start_c
    const-string v4, "Invalid policy from manifest"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    .line 307
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :goto_3
    invoke-static {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1f

    if-eqz v2, :cond_9

    :try_start_d
    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_4

    .line 546
    .end local v0    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_4
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    move-object v9, v15

    goto/16 :goto_0

    .line 313
    .restart local v0    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_9
    :goto_4
    const/4 v0, 0x0

    .line 321
    .end local v0    # "okay":Z
    .local v2, "okay":Z
    :cond_a
    move v2, v0

    if-eqz v2, :cond_e

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    if-nez v0, :cond_e

    .line 327
    :try_start_e
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 328
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 333
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 340
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v0

    .line 342
    .local v0, "forceClear":Z
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v4, :cond_b

    if-eqz v0, :cond_c

    .line 344
    :cond_b
    const-string v4, "BackupManagerService"

    const-string v5, "Clearing app data preparatory to full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v13, v5}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    .line 354
    :cond_c
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v0    # "forceClear":Z
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 364
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 366
    iput-object v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_5

    .line 369
    :catch_5
    move-exception v0

    goto :goto_6

    .line 367
    :catch_6
    move-exception v0

    .line 371
    :goto_5
    nop

    .line 373
    :goto_6
    :try_start_f
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_e

    .line 374
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v2, 0x0

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 377
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_e
    if-eqz v2, :cond_f

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 384
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but agent is for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    .line 386
    const/4 v2, 0x0

    .line 393
    :cond_f
    if-eqz v2, :cond_1c

    .line 394
    const/4 v6, 0x1

    .line 395
    .local v6, "agentSuccess":Z
    :try_start_10
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J

    .line 396
    .local v7, "toCopy":J
    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1f

    move v9, v0

    .line 397
    .local v9, "isSharedStorage":Z
    if-eqz v9, :cond_10

    .line 398
    :try_start_11
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    goto :goto_7

    .line 399
    :cond_10
    :try_start_12
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1f

    :goto_7
    move-wide/from16 v35, v16

    .line 401
    .local v35, "timeout":J
    :try_start_13
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v38, 0x1

    move-object/from16 v33, v0

    move/from16 v34, p6

    move-object/from16 v37, v4

    invoke-virtual/range {v33 .. v38}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 406
    const-string/jumbo v0, "obb"

    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_17

    if-eqz v0, :cond_11

    .line 408
    :try_start_14
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring OBB file for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v18, v4, v5

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_f

    move/from16 v39, v2

    :try_start_15
    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_d

    .line 411
    .end local v2    # "okay":Z
    .local v39, "okay":Z
    move/from16 v40, v6

    :try_start_16
    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_b

    .line 411
    .end local v6    # "agentSuccess":Z
    .local v40, "agentSuccess":Z
    move-wide/from16 v41, v7

    :try_start_17
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_9

    .line 411
    .end local v7    # "toCopy":J
    .local v41, "toCopy":J
    move-object/from16 v43, v14

    move-object/from16 v44, v15

    :try_start_18
    iget-wide v14, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_7

    .line 411
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v44, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move/from16 v45, v9

    :try_start_19
    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 414
    .end local v9    # "isSharedStorage":Z
    .local v45, "isSharedStorage":Z
    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 411
    move-object/from16 v16, v0

    move-object/from16 v17, v13

    move-wide/from16 v19, v4

    move/from16 v21, v2

    move-object/from16 v22, v6

    move-wide/from16 v23, v7

    move-wide/from16 v25, v14

    move/from16 v27, p6

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_11

    goto/16 :goto_8

    .line 452
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    :catch_7
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v46, v13

    .line 452
    .end local v9    # "isSharedStorage":Z
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_a

    .line 447
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    :catch_8
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v46, v13

    .line 447
    .end local v9    # "isSharedStorage":Z
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_c

    .line 452
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_9
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 452
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_a

    .line 447
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_a
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 447
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_c

    .line 452
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_b
    move-exception v0

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 452
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_a

    .line 447
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_c
    move-exception v0

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 447
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_c

    .line 452
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_d
    move-exception v0

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 452
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_a

    .line 447
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_e
    move-exception v0

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 447
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_c

    .line 452
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_f
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 452
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_a

    .line 447
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_10
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 447
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_c

    .line 415
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_11
    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    .line 415
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    :try_start_1a
    const-string/jumbo v0, "k"

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_15

    if-eqz v0, :cond_12

    .line 419
    :try_start_1b
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 425
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 427
    .local v0, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-key-value-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 428
    .end local v0    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    goto :goto_8

    .line 452
    :catch_11
    move-exception v0

    move-object/from16 v46, v13

    goto/16 :goto_a

    .line 447
    :catch_12
    move-exception v0

    move-object/from16 v46, v13

    goto/16 :goto_c

    .line 436
    :cond_12
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_15

    if-eqz v0, :cond_13

    .line 437
    :try_start_1d
    const-string v0, "BackupManagerService"

    const-string/jumbo v2, "system process agent - spinning a thread"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 440
    .local v0, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-sys-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_11

    .line 441
    .end local v0    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    nop

    .line 458
    .end local v13    # "pkg":Ljava/lang/String;
    .local v46, "pkg":Ljava/lang/String;
    :goto_8
    move-object/from16 v46, v13

    goto :goto_9

    .line 442
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_13
    :try_start_1e
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v15, v0, v2

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v0, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_15

    move-object/from16 v46, v13

    :try_start_1f
    iget-wide v12, v3, Lcom/android/server/backup/FileMetadata;->mtime:J

    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v46    # "pkg":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 444
    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v26

    .line 442
    move-wide/from16 v16, v4

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-wide/from16 v21, v7

    move-wide/from16 v23, v12

    move/from16 v25, p6

    invoke-interface/range {v14 .. v26}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_13

    .line 458
    :goto_9
    nop

    .line 461
    move/from16 v2, v39

    move/from16 v6, v40

    goto :goto_e

    .line 452
    :catch_13
    move-exception v0

    goto :goto_a

    .line 447
    :catch_14
    move-exception v0

    goto :goto_c

    .line 452
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    :catch_15
    move-exception v0

    move-object/from16 v46, v13

    .line 452
    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v46    # "pkg":Ljava/lang/String;
    goto :goto_a

    .line 447
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    :catch_16
    move-exception v0

    move-object/from16 v46, v13

    .line 447
    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v46    # "pkg":Ljava/lang/String;
    goto :goto_c

    .line 452
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_17
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v46, v13

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    .line 455
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    .restart local v46    # "pkg":Ljava/lang/String;
    :goto_a
    :try_start_20
    const-string v2, "BackupManagerService"

    const-string v4, "Agent crashed during full restore"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_18

    .line 456
    const/4 v6, 0x0

    .line 457
    .end local v40    # "agentSuccess":Z
    .restart local v6    # "agentSuccess":Z
    const/4 v0, 0x0

    .line 457
    .end local v39    # "okay":Z
    .local v0, "okay":Z
    goto :goto_d

    .line 546
    .end local v0    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v6    # "agentSuccess":Z
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v35    # "timeout":J
    .end local v41    # "toCopy":J
    .end local v45    # "isSharedStorage":Z
    .end local v46    # "pkg":Ljava/lang/String;
    :catch_18
    move-exception v0

    move/from16 v7, p6

    move-object/from16 v9, v44

    .line 546
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v9, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_b
    move-object/from16 v8, p4

    goto/16 :goto_0

    .line 447
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .local v9, "isSharedStorage":Z
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v35    # "timeout":J
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_19
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v46, v13

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    .line 449
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    .restart local v46    # "pkg":Ljava/lang/String;
    :goto_c
    :try_start_21
    const-string v2, "BackupManagerService"

    const-string v4, "Couldn\'t establish restore"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v6, 0x0

    .line 451
    .end local v40    # "agentSuccess":Z
    .restart local v6    # "agentSuccess":Z
    const/4 v0, 0x0

    .line 458
    .end local v39    # "okay":Z
    .local v0, "okay":Z
    nop

    .line 461
    .end local v0    # "okay":Z
    .restart local v2    # "okay":Z
    :goto_d
    move v2, v0

    :goto_e
    if-eqz v2, :cond_19

    .line 465
    const/4 v0, 0x1

    .line 466
    .local v0, "pipeOkay":Z
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 467
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1d

    move v5, v0

    move-wide/from16 v8, v41

    .line 468
    .end local v0    # "pipeOkay":Z
    .end local v41    # "toCopy":J
    .local v4, "pipe":Ljava/io/FileOutputStream;
    .local v5, "pipeOkay":Z
    .local v8, "toCopy":J
    :goto_f
    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_18

    .line 469
    :try_start_22
    array-length v0, v11

    int-to-long v12, v0

    cmp-long v0, v8, v12

    if-lez v0, :cond_14

    .line 470
    array-length v0, v11

    goto :goto_10

    :cond_14
    long-to-int v0, v8

    :goto_10
    move v12, v0

    .line 471
    .local v12, "toRead":I
    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v13, v0

    .line 472
    .local v13, "nRead":I
    if-ltz v13, :cond_15

    .line 473
    iget-wide v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    move-wide/from16 v48, v8

    int-to-long v7, v13

    .line 473
    .end local v8    # "toCopy":J
    .local v48, "toCopy":J
    add-long/2addr v14, v7

    iput-wide v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_18

    goto :goto_11

    .line 475
    .end local v48    # "toCopy":J
    .restart local v8    # "toCopy":J
    :cond_15
    move-wide/from16 v48, v8

    .line 475
    .end local v8    # "toCopy":J
    .restart local v48    # "toCopy":J
    :goto_11
    if-gtz v13, :cond_16

    .line 476
    goto :goto_13

    .line 478
    :cond_16
    int-to-long v7, v13

    sub-long v7, v48, v7

    .line 482
    .end local v48    # "toCopy":J
    .restart local v7    # "toCopy":J
    if-eqz v5, :cond_17

    .line 484
    const/4 v9, 0x0

    :try_start_23
    invoke-virtual {v4, v11, v9, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1a

    .line 489
    goto :goto_12

    .line 485
    :catch_1a
    move-exception v0

    move-object v9, v0

    .line 486
    .local v0, "e":Ljava/io/IOException;
    :try_start_24
    const-string v9, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to write to restore pipe: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 486
    invoke-static {v9, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_18

    .line 488
    const/4 v0, 0x0

    .line 491
    .end local v5    # "pipeOkay":Z
    .end local v12    # "toRead":I
    .end local v13    # "nRead":I
    .local v0, "pipeOkay":Z
    move v5, v0

    .line 467
    .end local v0    # "pipeOkay":Z
    .restart local v5    # "pipeOkay":Z
    :cond_17
    :goto_12
    move-wide v8, v7

    const/4 v7, 0x1

    goto :goto_f

    .line 495
    .end local v7    # "toCopy":J
    .restart local v8    # "toCopy":J
    :cond_18
    move-wide/from16 v48, v8

    .line 495
    .end local v8    # "toCopy":J
    .restart local v48    # "toCopy":J
    :goto_13
    :try_start_25
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1d

    move-object/from16 v9, v44

    :try_start_26
    invoke-virtual {v9, v7, v8}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 499
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v9, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1b

    move/from16 v7, p6

    :try_start_27
    invoke-virtual {v0, v7}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    move v6, v0

    .line 499
    .end local v4    # "pipe":Ljava/io/FileOutputStream;
    .end local v5    # "pipeOkay":Z
    goto :goto_14

    .line 546
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v6    # "agentSuccess":Z
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v35    # "timeout":J
    .end local v45    # "isSharedStorage":Z
    .end local v46    # "pkg":Ljava/lang/String;
    .end local v48    # "toCopy":J
    :catch_1b
    move-exception v0

    move/from16 v7, p6

    goto/16 :goto_b

    .line 504
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "agentSuccess":Z
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v35    # "timeout":J
    .restart local v41    # "toCopy":J
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    .restart local v46    # "pkg":Ljava/lang/String;
    :cond_19
    move/from16 v7, p6

    move-object/from16 v9, v44

    move-wide/from16 v48, v41

    .line 504
    .end local v41    # "toCopy":J
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v48    # "toCopy":J
    :goto_14
    if-nez v6, :cond_1a

    .line 505
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Agent failure restoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v46

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v46    # "pkg":Ljava/lang/String;
    .local v5, "pkg":Ljava/lang/String;
    const-string v8, "; ending restore"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 509
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 510
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 511
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v8, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1c

    .line 515
    move-object/from16 v8, p4

    if-eqz v8, :cond_1b

    .line 516
    const/4 v0, -0x2

    :try_start_28
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 517
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 518
    return v12

    .line 546
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "agentSuccess":Z
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v35    # "timeout":J
    .end local v45    # "isSharedStorage":Z
    .end local v48    # "toCopy":J
    :catch_1c
    move-exception v0

    goto/16 :goto_b

    .line 526
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v46    # "pkg":Ljava/lang/String;
    :cond_1a
    move-object/from16 v5, v46

    const/4 v4, 0x0

    move-object/from16 v8, p4

    .line 526
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_1b
    move/from16 v39, v2

    goto :goto_15

    .line 546
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_1d
    move-exception v0

    move/from16 v7, p6

    move-object/from16 v9, v44

    move-object/from16 v8, p4

    move-object/from16 v30, p7

    .line 546
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_1b

    .line 526
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .local v13, "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_1c
    move/from16 v7, p6

    move/from16 v39, v2

    move-object v8, v12

    move-object v5, v13

    move-object/from16 v43, v14

    move-object v9, v15

    const/4 v4, 0x0

    .line 526
    .end local v2    # "okay":Z
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_15
    if-nez v39, :cond_21

    .line 530
    iget-wide v12, v3, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v14, 0x1ff

    add-long/2addr v12, v14

    const-wide/16 v14, -0x200

    and-long/2addr v12, v14

    .line 531
    .local v12, "bytesToConsume":J
    :goto_16
    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_21

    .line 532
    array-length v0, v11

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-lez v0, :cond_1d

    .line 533
    array-length v0, v11

    goto :goto_17

    :cond_1d
    long-to-int v0, v12

    .line 534
    .local v0, "toRead":I
    :goto_17
    const/4 v2, 0x0

    invoke-virtual {v10, v11, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    int-to-long v14, v6

    .line 535
    .local v14, "nRead":J
    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-ltz v2, :cond_1e

    .line 536
    move-object/from16 v50, v5

    iget-wide v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    .line 536
    .end local v5    # "pkg":Ljava/lang/String;
    .local v50, "pkg":Ljava/lang/String;
    add-long/2addr v4, v14

    iput-wide v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1e

    goto :goto_18

    .line 538
    .end local v50    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_1e
    move-object/from16 v50, v5

    .line 538
    .end local v5    # "pkg":Ljava/lang/String;
    .restart local v50    # "pkg":Ljava/lang/String;
    :goto_18
    const-wide/16 v4, 0x0

    cmp-long v2, v14, v4

    if-gtz v2, :cond_1f

    .line 539
    goto :goto_19

    .line 541
    :cond_1f
    sub-long/2addr v12, v14

    .line 542
    .end local v0    # "toRead":I
    .end local v14    # "nRead":J
    nop

    .line 530
    move-object/from16 v5, v50

    const/4 v4, 0x0

    goto :goto_16

    .line 546
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v12    # "bytesToConsume":J
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v39    # "okay":Z
    .end local v50    # "pkg":Ljava/lang/String;
    :catch_1e
    move-exception v0

    goto/16 :goto_0

    .line 546
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v14, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_1f
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    move-object v9, v15

    move-object/from16 v30, p7

    .line 546
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto :goto_1b

    .line 552
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_20
    move/from16 v7, p6

    move-object v3, v4

    move-object v8, v12

    move-object/from16 v43, v14

    .line 552
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_21
    :goto_19
    move-object/from16 v30, p7

    .line 551
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_1a
    move-object/from16 v51, v3

    goto :goto_1c

    .line 546
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_20
    move-exception v0

    move/from16 v7, p6

    move-object v8, v12

    move-object/from16 v43, v14

    move-object/from16 v30, p7

    .line 548
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "e":Ljava/io/IOException;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_1b
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "io exception on restore socket read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 551
    nop

    .line 551
    .end local v0    # "e":Ljava/io/IOException;
    const/16 v51, 0x0

    .line 551
    .local v51, "info":Lcom/android/server/backup/FileMetadata;
    :goto_1c
    move-object/from16 v0, v51

    .line 555
    .end local v51    # "info":Lcom/android/server/backup/FileMetadata;
    .local v0, "info":Lcom/android/server/backup/FileMetadata;
    if-nez v0, :cond_22

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 560
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 561
    if-eqz p2, :cond_23

    .line 562
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_1d

    .line 565
    :cond_22
    const/4 v15, 0x0

    :cond_23
    :goto_1d
    if-eqz v0, :cond_24

    const/16 v47, 0x1

    goto :goto_1e

    :cond_24
    move/from16 v47, v15

    :goto_1e
    return v47

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_0

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 668
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
