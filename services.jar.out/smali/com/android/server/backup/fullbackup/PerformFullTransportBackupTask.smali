.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;,
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field private final mBackupRunnerOpToken:I

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private volatile mIsDoingBackup:Z

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field mUpdateSchedule:Z

.field mUserInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V
    .locals 17
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "whichPackages"    # [Ljava/lang/String;
    .param p5, "updateSchedule"    # Z
    .param p6, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p7, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p8, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p9, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p10, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p11, "userInitiated"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 159
    move-object/from16 v3, p3

    invoke-direct {v1, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 160
    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 161
    move-object/from16 v5, p2

    iput-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 162
    move/from16 v6, p5

    iput-boolean v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 163
    move-object/from16 v7, p7

    iput-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 164
    move-object/from16 v8, p6

    iput-object v8, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    array-length v9, v2

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 166
    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 167
    move-object/from16 v10, p9

    iput-object v10, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 168
    if-eqz p10, :cond_0

    move-object/from16 v0, p10

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_0
    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 169
    move/from16 v11, p11

    iput-boolean v11, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 172
    nop

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v12, "Timeout parameters cannot be null"

    .line 172
    invoke-static {v0, v12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const-string v0, "PFTBT"

    const-string v12, "Skipping full backup. A backup is already in progress."

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 181
    return-void

    .line 184
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->registerTask()V

    .line 186
    array-length v12, v2

    const/4 v0, 0x0

    move v13, v0

    :goto_1
    if-ge v13, v12, :cond_5

    aget-object v0, v2, v13

    move-object v14, v0

    .line 188
    .local v14, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 189
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x8000000

    invoke-virtual {v0, v14, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 190
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iput-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 191
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v3

    move-object v15, v0

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .local v15, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_2

    .line 199
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v4, 0x9

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v3, v4, v0, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 204
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v3, -0x7d1

    invoke-static {v0, v14, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 206
    goto :goto_2

    .line 207
    :cond_2
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0xa

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 219
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v3, -0x7d1

    invoke-static {v0, v14, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 221
    goto :goto_2

    .line 222
    :cond_3
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0xb

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 234
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v3, -0x7d1

    invoke-static {v0, v14, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 236
    goto :goto_2

    .line 238
    :cond_4
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_2

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found; ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0xc

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 186
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "pkg":Ljava/lang/String;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    goto/16 :goto_1

    .line 248
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 97
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 97
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    return-object v0
.end method

.method static synthetic lambda$newWithCurrentTransport$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "listenerCaller"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method

.method public static newWithCurrentTransport(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 17
    .param p0, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p2, "whichPackages"    # [Ljava/lang/String;
    .param p3, "updateSchedule"    # Z
    .param p4, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p5, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p6, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p8, "userInitiated"    # Z
    .param p9, "caller"    # Ljava/lang/String;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    .line 110
    .local v0, "transportManager":Lcom/android/server/backup/TransportManager;
    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v14

    .line 111
    .local v14, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    new-instance v15, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk;

    .local v15, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct {v15, v0, v14}, Lcom/android/server/backup/fullbackup/-$$Lambda$PerformFullTransportBackupTask$ymLoQLrsEpmGaMrcudrdAgsU1Zk;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V

    .line 114
    new-instance v16, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v14

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object v12, v15

    move/from16 v13, p8

    invoke-direct/range {v2 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    return-object v16
.end method

.method private registerTask()V
    .locals 6

    .line 251
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 252
    :try_start_0
    const-string v1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupmanager pftbt token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .line 659
    if-eqz p1, :cond_1

    .line 660
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 661
    aget-object v1, p1, v0

    .line 662
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v2, p1, v0

    .line 664
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "PFTBT"

    const-string v4, "Unable to close pipe!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 670
    aget-object v1, p1, v0

    .line 671
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v2, p1, v0

    .line 673
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 676
    goto :goto_1

    .line 674
    :catch_1
    move-exception v0

    .line 675
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "PFTBT"

    const-string v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-void
.end method

.method public execute()V
    .locals 0

    .line 266
    return-void
.end method

.method public handleCancel(Z)V
    .locals 5
    .param p1, "cancelAll"    # Z

    .line 270
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    if-nez p1, :cond_0

    .line 277
    :try_start_0
    const-string v1, "PFTBT"

    const-string v2, "Expected cancelAll to be true."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 280
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_1

    .line 281
    const-string v1, "PFTBT"

    const-string v2, "Ignoring duplicate cancel call."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    monitor-exit v0

    return-void

    .line 285
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 286
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/backup/BackupManagerService;->handleCancel(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v2, "PFTBT.handleCancel()"

    .line 291
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportClient;->getConnectedTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    .line 292
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_1

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Landroid/util/AndroidException;
    :try_start_2
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v1    # "e":Landroid/util/AndroidException;
    :cond_2
    :goto_1
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    .line 304
    return-void
.end method

.method public run()V
    .locals 47

    .line 310
    move-object/from16 v10, p0

    const/4 v1, 0x0

    .line 313
    .local v1, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    .line 315
    .local v2, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v3, 0x0

    .line 316
    .local v3, "backoff":J
    const/4 v11, 0x0

    move v12, v11

    .line 319
    .local v12, "backupRunStatus":I
    const/4 v14, 0x0

    :try_start_0
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    move/from16 v27, v12

    goto/16 :goto_18

    .line 342
    :cond_0
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v5, "PFTBT.run()"

    invoke-virtual {v0, v5}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1e

    move-object v15, v0

    .line 343
    .local v15, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v9, 0x1

    if-nez v15, :cond_4

    .line 344
    :try_start_1
    const-string v0, "PFTBT"

    const-string v5, "Transport not present; full data backup not performed"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v12, -0x3e8

    .line 346
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v5, 0xf

    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v5, v6, v9, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_20

    .line 621
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v0, :cond_1

    .line 622
    const/16 v12, -0x7d3

    .line 626
    .end local v12    # "backupRunStatus":I
    .local v5, "backupRunStatus":I
    :cond_1
    move v5, v12

    const-string v0, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 630
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 631
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 635
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_2

    .line 636
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v0}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 639
    :cond_2
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 640
    :try_start_2
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 641
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v6, "PFTBT.run()"

    invoke-interface {v0, v6}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 645
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 649
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 653
    :cond_3
    const-string v0, "PFTBT"

    const-string v6, "Full data backup pass finished."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 350
    return-void

    .line 641
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 608
    .end local v5    # "backupRunStatus":I
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "backupRunStatus":I
    :catch_0
    move-exception v0

    move/from16 v27, v12

    goto/16 :goto_1a

    .line 354
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_4
    :try_start_4
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v8, v0

    .line 355
    .local v8, "N":I
    const/16 v0, 0x2000

    new-array v0, v0, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1e

    move-object v5, v0

    .line 356
    .local v5, "buffer":[B
    move v0, v11

    .line 356
    .local v0, "i":I
    :goto_0
    move v6, v0

    .line 356
    .end local v0    # "i":I
    .local v6, "i":I
    if-ge v6, v8, :cond_1f

    .line 357
    :try_start_5
    iput-object v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 358
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v7, v0

    .line 359
    .local v7, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 361
    .local v16, "packageName":Ljava/lang/String;
    const-string v0, "PFTBT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Initiating full-data transport backup of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v16

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v16    # "packageName":Ljava/lang/String;
    .local v14, "packageName":Ljava/lang/String;
    const-string v9, " token: "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/16 v0, 0xb18

    invoke-static {v0, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 366
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_19

    move-object v13, v0

    .line 369
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v13, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_6
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    move v9, v0

    .line 371
    .local v9, "flags":I
    const-wide v18, 0x7fffffffffffffffL

    .line 372
    .local v18, "quota":J
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_18

    .line 373
    :try_start_7
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_15

    if-eqz v0, :cond_5

    .line 374
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 621
    move-wide/from16 v25, v3

    move/from16 v27, v12

    goto/16 :goto_14

    .line 394
    :catchall_1
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v25, v3

    move-object/from16 v41, v5

    move/from16 v29, v6

    move-object v5, v7

    move/from16 v20, v8

    move/from16 v17, v9

    move/from16 v27, v12

    move-object v12, v14

    move-object v9, v15

    goto/16 :goto_11

    .line 376
    :cond_5
    :try_start_9
    aget-object v0, v13, v11

    invoke-interface {v15, v7, v0, v9}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_15

    .line 379
    .local v0, "backupPackageStatus":I
    if-nez v0, :cond_6

    .line 380
    :try_start_a
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-wide/from16 v20, v3

    const/4 v3, 0x1

    :try_start_b
    invoke-interface {v15, v11, v3}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 380
    .end local v3    # "backoff":J
    .local v20, "backoff":J
    move v11, v6

    move-object v4, v7

    move-wide/from16 v6, v22

    .line 383
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v18    # "quota":J
    .local v4, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v6, "quota":J
    .local v11, "i":I
    :try_start_c
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object/from16 v16, v3

    .line 384
    .end local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v16, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_d
    new-instance v3, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/16 v17, 0x1

    aget-object v18, v16, v17

    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move/from16 v24, v8

    :try_start_e
    iget v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 387
    .end local v8    # "N":I
    .local v24, "N":I
    invoke-interface {v15}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v22, v1

    move-object v1, v3

    move-object/from16 v23, v2

    move-object v2, v10

    move/from16 v27, v12

    move-wide/from16 v25, v20

    move-object v12, v3

    move-object/from16 v3, v18

    .end local v12    # "backupRunStatus":I
    .end local v20    # "backoff":J
    .local v25, "backoff":J
    .local v27, "backupRunStatus":I
    move-object/from16 v28, v4

    .line 387
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v28, "currentPackage":Landroid/content/pm/PackageInfo;
    move/from16 v29, v11

    move-object v11, v5

    move-object/from16 v5, v22

    .line 387
    .end local v5    # "buffer":[B
    .local v11, "buffer":[B
    .local v29, "i":I
    move/from16 v20, v24

    .line 387
    .end local v24    # "N":I
    .local v20, "N":I
    move-object/from16 v30, v14

    move/from16 v14, v17

    move/from16 v17, v9

    move/from16 v9, v19

    .line 387
    .end local v9    # "flags":I
    .end local v14    # "packageName":Ljava/lang/String;
    .local v17, "flags":I
    .local v30, "packageName":Ljava/lang/String;
    :try_start_f
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportClient;JII)V

    iput-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 389
    aget-object v1, v16, v14

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 390
    const/4 v1, 0x0

    aput-object v1, v16, v14

    .line 392
    iput-boolean v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 394
    move-object/from16 v1, v16

    goto/16 :goto_2

    .line 394
    .end local v0    # "backupPackageStatus":I
    :catchall_2
    move-exception v0

    move-wide/from16 v18, v6

    move-object/from16 v41, v11

    move-object v9, v15

    move-object/from16 v1, v16

    move-object/from16 v5, v28

    move-object/from16 v12, v30

    goto/16 :goto_11

    .line 394
    .end local v17    # "flags":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v9    # "flags":I
    .local v11, "i":I
    .restart local v12    # "backupRunStatus":I
    .restart local v14    # "packageName":Ljava/lang/String;
    .local v20, "backoff":J
    .restart local v24    # "N":I
    :catchall_3
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v17, v9

    move/from16 v29, v11

    move/from16 v27, v12

    move-wide/from16 v25, v20

    move/from16 v20, v24

    move-object/from16 v41, v5

    move-wide/from16 v18, v6

    move-object v12, v14

    move-object v9, v15

    move-object/from16 v1, v16

    move-object v5, v4

    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v9    # "flags":I
    .end local v12    # "backupRunStatus":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v24    # "N":I
    .local v11, "buffer":[B
    .restart local v17    # "flags":I
    .local v20, "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    goto/16 :goto_11

    .line 394
    .end local v17    # "flags":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "buffer":[B
    .restart local v8    # "N":I
    .restart local v9    # "flags":I
    .local v11, "i":I
    .restart local v12    # "backupRunStatus":I
    .restart local v14    # "packageName":Ljava/lang/String;
    .local v20, "backoff":J
    :catchall_4
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v17, v9

    move/from16 v29, v11

    move/from16 v27, v12

    move-wide/from16 v25, v20

    move/from16 v20, v8

    move-object/from16 v41, v5

    move-wide/from16 v18, v6

    move-object v12, v14

    move-object v9, v15

    move-object/from16 v1, v16

    goto :goto_1

    .end local v16    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_5
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v17, v9

    move/from16 v29, v11

    move/from16 v27, v12

    move-wide/from16 v25, v20

    move/from16 v20, v8

    move-object/from16 v41, v5

    move-wide/from16 v18, v6

    move-object v12, v14

    move-object v9, v15

    .end local v6    # "quota":J
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v18    # "quota":J
    .local v41, "buffer":[B
    :goto_1
    move-object v5, v4

    .line 394
    .end local v4    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "buffer":[B
    .end local v8    # "N":I
    .end local v9    # "flags":I
    .end local v12    # "backupRunStatus":I
    .end local v14    # "packageName":Ljava/lang/String;
    .local v11, "buffer":[B
    .restart local v17    # "flags":I
    .local v20, "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    goto/16 :goto_11

    .line 394
    .end local v11    # "buffer":[B
    .end local v17    # "flags":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .end local v41    # "buffer":[B
    .restart local v5    # "buffer":[B
    .local v6, "i":I
    .restart local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v8    # "N":I
    .restart local v9    # "flags":I
    .restart local v12    # "backupRunStatus":I
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v20, "backoff":J
    :catchall_6
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v29, v6

    move/from16 v17, v9

    move/from16 v27, v12

    move-wide/from16 v25, v20

    move/from16 v20, v8

    move-object/from16 v41, v5

    move-object v5, v7

    move-object v12, v14

    move-object v9, v15

    .end local v5    # "buffer":[B
    .end local v6    # "i":I
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v8    # "N":I
    .end local v9    # "flags":I
    .end local v12    # "backupRunStatus":I
    .end local v14    # "packageName":Ljava/lang/String;
    .restart local v11    # "buffer":[B
    .restart local v17    # "flags":I
    .local v20, "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    goto/16 :goto_11

    .line 394
    .end local v11    # "buffer":[B
    .end local v17    # "flags":I
    .end local v20    # "N":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v3    # "backoff":J
    .restart local v5    # "buffer":[B
    .restart local v6    # "i":I
    .restart local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v8    # "N":I
    .restart local v9    # "flags":I
    .restart local v12    # "backupRunStatus":I
    .restart local v14    # "packageName":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v25, v3

    move/from16 v29, v6

    move/from16 v20, v8

    move/from16 v17, v9

    move/from16 v27, v12

    move-object/from16 v41, v5

    move-object v5, v7

    move-object v12, v14

    move-object v9, v15

    .end local v3    # "backoff":J
    .end local v5    # "buffer":[B
    .end local v6    # "i":I
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v8    # "N":I
    .end local v9    # "flags":I
    .end local v12    # "backupRunStatus":I
    .end local v14    # "packageName":Ljava/lang/String;
    .restart local v11    # "buffer":[B
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    goto/16 :goto_11

    .line 394
    .end local v11    # "buffer":[B
    .end local v17    # "flags":I
    .end local v20    # "N":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v0    # "backupPackageStatus":I
    .restart local v3    # "backoff":J
    .restart local v5    # "buffer":[B
    .restart local v6    # "i":I
    .restart local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v8    # "N":I
    .restart local v9    # "flags":I
    .restart local v12    # "backupRunStatus":I
    .restart local v14    # "packageName":Ljava/lang/String;
    :cond_6
    move-object/from16 v23, v2

    move-wide/from16 v25, v3

    move-object v11, v5

    move/from16 v29, v6

    move-object/from16 v28, v7

    move/from16 v20, v8

    move/from16 v17, v9

    move/from16 v27, v12

    move-object/from16 v30, v14

    const/4 v14, 0x1

    move-wide/from16 v6, v18

    .end local v3    # "backoff":J
    .end local v5    # "buffer":[B
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v8    # "N":I
    .end local v9    # "flags":I
    .end local v12    # "backupRunStatus":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v18    # "quota":J
    .local v6, "quota":J
    .restart local v11    # "buffer":[B
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    :goto_2
    :try_start_10
    monitor-exit v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_14

    .line 395
    if-nez v0, :cond_13

    .line 399
    const/4 v3, 0x0

    :try_start_11
    aget-object v4, v13, v3

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 400
    const/4 v4, 0x0

    aput-object v4, v13, v3

    .line 404
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v5, "package-backup-bridge"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 409
    new-instance v3, Ljava/io/FileInputStream;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    .line 410
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 411
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    aget-object v5, v13, v14

    .line 412
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 413
    .local v4, "out":Ljava/io/FileOutputStream;
    const-wide/16 v8, 0x0

    .line 414
    .local v8, "totalRead":J
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v18

    move-wide/from16 v31, v18

    .line 416
    .local v31, "preflightResult":J
    const-wide/16 v18, 0x0

    move-object/from16 v33, v15

    move-wide/from16 v14, v31

    cmp-long v5, v14, v18

    .line 416
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v31    # "preflightResult":J
    .local v14, "preflightResult":J
    .local v33, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-gez v5, :cond_7

    .line 422
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v12, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    .line 426
    move-wide/from16 v34, v8

    const/4 v8, 0x0

    invoke-static {v8, v12, v14, v15}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v9

    .line 422
    .end local v8    # "totalRead":J
    .local v34, "totalRead":J
    const/16 v8, 0x10

    const/4 v12, 0x3

    invoke-static {v5, v8, v2, v12, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 429
    long-to-int v0, v14

    .line 466
    move/from16 v39, v0

    move-object/from16 v36, v3

    move-object/from16 v38, v4

    move-object/from16 v41, v11

    move-object/from16 v12, v30

    move-object/from16 v9, v33

    move-wide/from16 v3, v34

    goto/16 :goto_9

    .line 431
    .end local v34    # "totalRead":J
    .restart local v8    # "totalRead":J
    :cond_7
    move-wide/from16 v34, v8

    .line 431
    .end local v8    # "totalRead":J
    .restart local v34    # "totalRead":J
    move v2, v0

    const/4 v0, 0x0

    .line 433
    .local v0, "nRead":I
    .local v2, "backupPackageStatus":I
    :goto_3
    invoke-virtual {v3, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 437
    .end local v0    # "nRead":I
    .local v5, "nRead":I
    if-lez v5, :cond_a

    .line 438
    const/4 v8, 0x0

    invoke-virtual {v4, v11, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 439
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_16

    .line 440
    :try_start_12
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    if-nez v0, :cond_8

    .line 441
    move-object/from16 v9, v33

    :try_start_13
    invoke-interface {v9, v5}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 443
    .end local v2    # "backupPackageStatus":I
    .end local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v0, "backupPackageStatus":I
    .local v9, "transport":Lcom/android/internal/backup/IBackupTransport;
    move v2, v0

    goto :goto_4

    .line 443
    .end local v0    # "backupPackageStatus":I
    .restart local v2    # "backupPackageStatus":I
    :catchall_8
    move-exception v0

    move-object/from16 v36, v3

    move-object/from16 v12, v30

    goto :goto_6

    .line 443
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_8
    move-object/from16 v9, v33

    .line 443
    .end local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :goto_4
    :try_start_14
    monitor-exit v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 444
    move/from16 v37, v2

    move-object/from16 v36, v3

    int-to-long v2, v5

    .line 444
    .end local v2    # "backupPackageStatus":I
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v36, "in":Ljava/io/FileInputStream;
    .local v37, "backupPackageStatus":I
    add-long v2, v34, v2

    .line 445
    .end local v34    # "totalRead":J
    .local v2, "totalRead":J
    :try_start_15
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_9

    cmp-long v0, v14, v18

    if-lez v0, :cond_9

    .line 446
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    new-instance v8, Landroid/app/backup/BackupProgress;

    invoke-direct {v8, v14, v15, v2, v3}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 447
    move-object/from16 v12, v30

    invoke-static {v0, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_16

    .line 447
    .end local v30    # "packageName":Ljava/lang/String;
    .local v12, "packageName":Ljava/lang/String;
    goto :goto_5

    .line 451
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v30    # "packageName":Ljava/lang/String;
    :cond_9
    move-object/from16 v12, v30

    .line 451
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v12    # "packageName":Ljava/lang/String;
    :goto_5
    move-object/from16 v38, v4

    move-wide v3, v2

    move/from16 v2, v37

    goto :goto_7

    .line 443
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v36    # "in":Ljava/io/FileInputStream;
    .end local v37    # "backupPackageStatus":I
    .local v2, "backupPackageStatus":I
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v30    # "packageName":Ljava/lang/String;
    .restart local v34    # "totalRead":J
    :catchall_9
    move-exception v0

    move/from16 v37, v2

    move-object/from16 v36, v3

    move-object/from16 v12, v30

    .line 443
    .end local v2    # "backupPackageStatus":I
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v36    # "in":Ljava/io/FileInputStream;
    .restart local v37    # "backupPackageStatus":I
    goto :goto_6

    .line 443
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v36    # "in":Ljava/io/FileInputStream;
    .end local v37    # "backupPackageStatus":I
    .restart local v2    # "backupPackageStatus":I
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v30    # "packageName":Ljava/lang/String;
    .restart local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_a
    move-exception v0

    move-object/from16 v36, v3

    move-object/from16 v12, v30

    move-object/from16 v9, v33

    .line 443
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v30    # "packageName":Ljava/lang/String;
    .end local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v36    # "in":Ljava/io/FileInputStream;
    :goto_6
    :try_start_16
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :try_start_17
    throw v0

    :catchall_b
    move-exception v0

    goto :goto_6

    .line 451
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v36    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v30    # "packageName":Ljava/lang/String;
    .restart local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_a
    move-object/from16 v36, v3

    move-object/from16 v12, v30

    move-object/from16 v9, v33

    move-object/from16 v38, v4

    move-wide/from16 v3, v34

    .line 451
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v30    # "packageName":Ljava/lang/String;
    .end local v33    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v34    # "totalRead":J
    .local v3, "totalRead":J
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v36    # "in":Ljava/io/FileInputStream;
    .local v38, "out":Ljava/io/FileOutputStream;
    :goto_7
    if-lez v5, :cond_c

    if-eqz v2, :cond_b

    goto :goto_8

    .line 431
    :cond_b
    move-wide/from16 v34, v3

    move v0, v5

    move-object/from16 v33, v9

    move-object/from16 v30, v12

    move-object/from16 v3, v36

    move-object/from16 v4, v38

    goto :goto_3

    .line 454
    :cond_c
    :goto_8
    const/16 v0, -0x3ed

    if-ne v2, v0, :cond_d

    .line 455
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v39, v2

    const-string v2, "Package hit quota limit in-flight "

    .line 455
    .end local v2    # "backupPackageStatus":I
    .local v39, "backupPackageStatus":I
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v2, 0x12

    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move/from16 v40, v5

    move-object/from16 v41, v11

    const/4 v5, 0x0

    const/4 v11, 0x1

    invoke-static {v0, v2, v8, v11, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    .end local v5    # "nRead":I
    .end local v11    # "buffer":[B
    .local v40, "nRead":I
    .restart local v41    # "buffer":[B
    iput-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 462
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    .line 462
    .end local v40    # "nRead":I
    goto :goto_9

    .line 466
    .end local v39    # "backupPackageStatus":I
    .end local v41    # "buffer":[B
    .restart local v2    # "backupPackageStatus":I
    .restart local v11    # "buffer":[B
    :cond_d
    move/from16 v39, v2

    move-object/from16 v41, v11

    .line 466
    .end local v2    # "backupPackageStatus":I
    .end local v11    # "buffer":[B
    .restart local v39    # "backupPackageStatus":I
    .restart local v41    # "buffer":[B
    :goto_9
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v0

    move v2, v0

    .line 468
    .local v2, "backupRunnerResult":I
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    .line 469
    const/4 v8, 0x0

    :try_start_18
    iput-boolean v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 471
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    if-nez v0, :cond_10

    .line 472
    if-nez v2, :cond_f

    .line 477
    :try_start_19
    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v0

    .line 478
    .local v0, "finishResult":I
    if-nez v39, :cond_e

    .line 479
    move/from16 v39, v0

    .line 481
    .end local v0    # "finishResult":I
    :cond_e
    goto :goto_a

    .line 485
    :catchall_c
    move-exception v0

    move/from16 v46, v2

    move-wide/from16 v44, v3

    goto/16 :goto_c

    .line 482
    :cond_f
    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 485
    :cond_10
    :goto_a
    :try_start_1a
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    .line 496
    if-nez v39, :cond_11

    .line 498
    if-eqz v2, :cond_11

    .line 501
    move v0, v2

    .line 501
    .end local v39    # "backupPackageStatus":I
    .local v0, "backupPackageStatus":I
    goto :goto_b

    .line 514
    .end local v0    # "backupPackageStatus":I
    .restart local v39    # "backupPackageStatus":I
    :cond_11
    move/from16 v0, v39

    .line 514
    .end local v39    # "backupPackageStatus":I
    .restart local v0    # "backupPackageStatus":I
    :goto_b
    if-eqz v0, :cond_12

    .line 515
    :try_start_1b
    const-string v5, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " backing up "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_12
    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v18
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_16

    move-wide/from16 v42, v18

    .line 523
    .end local v25    # "backoff":J
    .local v42, "backoff":J
    :try_start_1c
    const-string v5, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transport suggested backoff="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    move/from16 v46, v2

    move-wide/from16 v44, v3

    move-wide/from16 v2, v42

    :try_start_1d
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v3    # "totalRead":J
    .end local v42    # "backoff":J
    .local v2, "backoff":J
    .local v44, "totalRead":J
    .local v46, "backupRunnerResult":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    .line 530
    .end local v14    # "preflightResult":J
    .end local v36    # "in":Ljava/io/FileInputStream;
    .end local v38    # "out":Ljava/io/FileOutputStream;
    .end local v44    # "totalRead":J
    .end local v46    # "backupRunnerResult":I
    move-wide v3, v2

    move v2, v0

    goto :goto_d

    .line 621
    .end local v0    # "backupPackageStatus":I
    .end local v6    # "quota":J
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v17    # "flags":I
    .end local v20    # "N":I
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v29    # "i":I
    .end local v41    # "buffer":[B
    :catchall_d
    move-exception v0

    move-wide v3, v2

    goto/16 :goto_1d

    .line 608
    :catch_1
    move-exception v0

    move-wide v3, v2

    goto/16 :goto_10

    .line 621
    .end local v2    # "backoff":J
    .restart local v42    # "backoff":J
    :catchall_e
    move-exception v0

    move-wide/from16 v2, v42

    move-wide v3, v2

    .line 621
    .end local v42    # "backoff":J
    .restart local v2    # "backoff":J
    goto/16 :goto_1d

    .line 608
    .end local v2    # "backoff":J
    .restart local v42    # "backoff":J
    :catch_2
    move-exception v0

    move-wide/from16 v2, v42

    move-wide v3, v2

    move-object v2, v13

    .line 608
    .end local v42    # "backoff":J
    .restart local v2    # "backoff":J
    goto/16 :goto_1a

    .line 485
    .local v2, "backupRunnerResult":I
    .restart local v3    # "totalRead":J
    .restart local v6    # "quota":J
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "preflightResult":J
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v25    # "backoff":J
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v36    # "in":Ljava/io/FileInputStream;
    .restart local v38    # "out":Ljava/io/FileOutputStream;
    .restart local v39    # "backupPackageStatus":I
    .restart local v41    # "buffer":[B
    :catchall_f
    move-exception v0

    move/from16 v46, v2

    move-wide/from16 v44, v3

    .line 485
    .end local v2    # "backupRunnerResult":I
    .end local v3    # "totalRead":J
    .restart local v44    # "totalRead":J
    .restart local v46    # "backupRunnerResult":I
    :goto_c
    :try_start_1e
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    :try_start_1f
    throw v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6
    .catchall {:try_start_1f .. :try_end_1f} :catchall_16

    :catchall_10
    move-exception v0

    goto :goto_c

    .line 530
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "preflightResult":J
    .end local v36    # "in":Ljava/io/FileInputStream;
    .end local v38    # "out":Ljava/io/FileOutputStream;
    .end local v39    # "backupPackageStatus":I
    .end local v41    # "buffer":[B
    .end local v44    # "totalRead":J
    .end local v46    # "backupRunnerResult":I
    .restart local v0    # "backupPackageStatus":I
    .restart local v11    # "buffer":[B
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v30    # "packageName":Ljava/lang/String;
    :cond_13
    move-object/from16 v41, v11

    move-object v9, v15

    move-object/from16 v12, v30

    move v2, v0

    move-wide/from16 v3, v25

    .line 530
    .end local v0    # "backupPackageStatus":I
    .end local v11    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v25    # "backoff":J
    .end local v30    # "packageName":Ljava/lang/String;
    .local v2, "backupPackageStatus":I
    .local v3, "backoff":J
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v41    # "buffer":[B
    :goto_d
    :try_start_20
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_14

    .line 531
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v12, v14, v15}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 534
    :cond_14
    const/16 v0, -0x3ea

    if-ne v2, v0, :cond_16

    .line 535
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 536
    invoke-static {v5, v12, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 539
    const-string v0, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transport rejected backup of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", skipping"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/16 v0, 0xb19

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v5, v8

    const-string/jumbo v8, "transport rejected"

    const/4 v11, 0x1

    aput-object v8, v5, v11

    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 547
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v0, :cond_15

    .line 548
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v5, v28

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 548
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_e

    .line 597
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    :cond_15
    move-object/from16 v5, v28

    .line 597
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    goto/16 :goto_e

    .line 551
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    :cond_16
    move-object/from16 v5, v28

    const/4 v11, 0x1

    .line 551
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    const/16 v0, -0x3ed

    if-ne v2, v0, :cond_17

    .line 552
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 553
    invoke-static {v8, v12, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 556
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transport quota exceeded for package: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/16 v0, 0xb1d

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 560
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_e

    .line 562
    :cond_17
    const/16 v0, -0x3eb

    if-ne v2, v0, :cond_18

    .line 563
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 564
    invoke-static {v8, v12, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 566
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Application failure for package: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/16 v0, 0xb07

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 568
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_e

    .line 570
    :cond_18
    const/16 v0, -0x7d3

    if-ne v2, v0, :cond_19

    .line 571
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 572
    invoke-static {v8, v12, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 574
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Backup cancelled. package="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", cancelAll="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/16 v0, 0xb1e

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 577
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_e

    .line 579
    :cond_19
    if-eqz v2, :cond_1d

    .line 580
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v8, -0x3e8

    .line 581
    invoke-static {v0, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 583
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transport failed; aborting backup: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/16 v0, 0xb1a

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    .line 586
    const/16 v8, -0x3e8

    .line 587
    .end local v27    # "backupRunStatus":I
    .local v8, "backupRunStatus":I
    :try_start_21
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v11}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_3
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    .line 621
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v0, :cond_1a

    .line 622
    const/16 v8, -0x7d3

    .line 626
    .end local v8    # "backupRunStatus":I
    .local v11, "backupRunStatus":I
    :cond_1a
    move v11, v8

    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Full backup completed with status: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 630
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 631
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 635
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_1b

    .line 636
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v0}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 639
    :cond_1b
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 640
    :try_start_22
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 641
    monitor-exit v14
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    .line 643
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v8, "PFTBT.run()"

    invoke-interface {v0, v8}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 645
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 649
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_1c

    .line 650
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 653
    :cond_1c
    const-string v0, "PFTBT"

    const-string v8, "Full data backup pass finished."

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 588
    return-void

    .line 641
    :catchall_11
    move-exception v0

    :try_start_23
    monitor-exit v14
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    throw v0

    .line 621
    .end local v2    # "backupPackageStatus":I
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "quota":J
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v11    # "backupRunStatus":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v17    # "flags":I
    .end local v20    # "N":I
    .end local v29    # "i":I
    .end local v41    # "buffer":[B
    .restart local v8    # "backupRunStatus":I
    :catchall_12
    move-exception v0

    move/from16 v27, v8

    goto/16 :goto_1d

    .line 608
    :catch_3
    move-exception v0

    move/from16 v27, v8

    goto :goto_10

    .line 591
    .end local v8    # "backupRunStatus":I
    .restart local v2    # "backupPackageStatus":I
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v6    # "quota":J
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v27    # "backupRunStatus":I
    .restart local v29    # "i":I
    .restart local v41    # "buffer":[B
    :cond_1d
    :try_start_24
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 592
    const/4 v8, 0x0

    invoke-static {v0, v12, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 594
    const/16 v0, 0xb1b

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 595
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 597
    :goto_e
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 598
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 599
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1e

    .line 600
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unbinding agent in "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unbinding "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_5
    .catchall {:try_start_24 .. :try_end_24} :catchall_13

    .line 603
    :try_start_25
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v8}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_4
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_5
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    .line 605
    goto :goto_f

    :catch_4
    move-exception v0

    .line 356
    .end local v2    # "backupPackageStatus":I
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "quota":J
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v17    # "flags":I
    :cond_1e
    :goto_f
    add-int/lit8 v0, v29, 0x1

    .line 356
    .end local v29    # "i":I
    .local v0, "i":I
    move-object v15, v9

    move v9, v11

    move-object v2, v13

    move/from16 v8, v20

    move/from16 v12, v27

    move-object/from16 v5, v41

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 621
    .end local v0    # "i":I
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v20    # "N":I
    .end local v41    # "buffer":[B
    :catchall_13
    move-exception v0

    goto/16 :goto_1d

    .line 608
    :catch_5
    move-exception v0

    .line 608
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v2, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_10
    move-object v2, v13

    goto/16 :goto_1a

    .line 394
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "backoff":J
    .restart local v6    # "quota":J
    .local v11, "buffer":[B
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v25    # "backoff":J
    .restart local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v29    # "i":I
    .restart local v30    # "packageName":Ljava/lang/String;
    :catchall_14
    move-exception v0

    move-object/from16 v41, v11

    move-object v9, v15

    move-object/from16 v5, v28

    move-object/from16 v12, v30

    move-wide/from16 v18, v6

    .line 394
    .end local v11    # "buffer":[B
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v28    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v30    # "packageName":Ljava/lang/String;
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v41    # "buffer":[B
    goto :goto_11

    .line 394
    .end local v17    # "flags":I
    .end local v20    # "N":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v29    # "i":I
    .end local v41    # "buffer":[B
    .restart local v3    # "backoff":J
    .local v5, "buffer":[B
    .local v6, "i":I
    .restart local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v8, "N":I
    .local v9, "flags":I
    .local v12, "backupRunStatus":I
    .local v14, "packageName":Ljava/lang/String;
    .restart local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v18    # "quota":J
    :catchall_15
    move-exception v0

    move-object/from16 v23, v2

    move-wide/from16 v25, v3

    move-object/from16 v41, v5

    move/from16 v29, v6

    move-object v5, v7

    move/from16 v20, v8

    move/from16 v17, v9

    move/from16 v27, v12

    move-object v12, v14

    move-object v9, v15

    .end local v3    # "backoff":J
    .end local v6    # "i":I
    .end local v7    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v8    # "N":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v5, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v9, "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v12, "packageName":Ljava/lang/String;
    .restart local v17    # "flags":I
    .restart local v20    # "N":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    .restart local v29    # "i":I
    .restart local v41    # "buffer":[B
    :goto_11
    :try_start_26
    monitor-exit v23
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_17

    :try_start_27
    throw v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_6
    .catchall {:try_start_27 .. :try_end_27} :catchall_16

    .line 621
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v17    # "flags":I
    .end local v18    # "quota":J
    .end local v20    # "N":I
    .end local v29    # "i":I
    .end local v41    # "buffer":[B
    :catchall_16
    move-exception v0

    move-wide/from16 v3, v25

    goto/16 :goto_1d

    .line 608
    :catch_6
    move-exception v0

    move-object v2, v13

    move-wide/from16 v3, v25

    goto/16 :goto_1a

    .line 394
    .restart local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v17    # "flags":I
    .restart local v18    # "quota":J
    .restart local v20    # "N":I
    .restart local v29    # "i":I
    .restart local v41    # "buffer":[B
    :catchall_17
    move-exception v0

    goto :goto_11

    .line 621
    .end local v5    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v17    # "flags":I
    .end local v18    # "quota":J
    .end local v20    # "N":I
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .end local v29    # "i":I
    .end local v41    # "buffer":[B
    .restart local v3    # "backoff":J
    .local v12, "backupRunStatus":I
    :catchall_18
    move-exception v0

    move-wide/from16 v25, v3

    move/from16 v27, v12

    goto :goto_12

    .line 608
    :catch_7
    move-exception v0

    move-wide/from16 v25, v3

    move/from16 v27, v12

    move-object v2, v13

    goto :goto_13

    .line 621
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_19
    move-exception v0

    move-wide/from16 v25, v3

    move/from16 v27, v12

    move-object v13, v2

    .line 621
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "backoff":J
    .end local v12    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    :goto_12
    goto/16 :goto_1d

    .line 608
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "backoff":J
    .restart local v12    # "backupRunStatus":I
    :catch_8
    move-exception v0

    move-wide/from16 v25, v3

    move/from16 v27, v12

    .line 608
    .end local v3    # "backoff":J
    .end local v12    # "backupRunStatus":I
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    :goto_13
    goto/16 :goto_1a

    .line 621
    .end local v25    # "backoff":J
    .end local v27    # "backupRunStatus":I
    .restart local v3    # "backoff":J
    .restart local v12    # "backupRunStatus":I
    :cond_1f
    move-wide/from16 v25, v3

    move/from16 v27, v12

    move-object v13, v2

    .line 621
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "backoff":J
    .end local v12    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v25    # "backoff":J
    .restart local v27    # "backupRunStatus":I
    :goto_14
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v0, :cond_20

    .line 622
    const/16 v12, -0x7d3

    .line 622
    .end local v27    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    goto :goto_15

    .line 626
    .end local v12    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :cond_20
    move/from16 v12, v27

    .line 626
    .end local v27    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :goto_15
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 630
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 631
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 635
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_21

    .line 636
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v0}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 639
    :cond_21
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 640
    :try_start_28
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 641
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1a

    .line 643
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 645
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 649
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_22

    .line 650
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    move-wide/from16 v6, v25

    invoke-virtual {v0, v6, v7}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_16

    .line 653
    :cond_22
    move-wide/from16 v6, v25

    .line 653
    .end local v25    # "backoff":J
    .local v6, "backoff":J
    :goto_16
    const-string v0, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 655
    nop

    .line 656
    move-wide v3, v6

    move v5, v12

    goto/16 :goto_1c

    .line 641
    .end local v6    # "backoff":J
    .restart local v25    # "backoff":J
    :catchall_1a
    move-exception v0

    move-wide/from16 v6, v25

    .line 641
    .end local v25    # "backoff":J
    .restart local v6    # "backoff":J
    :goto_17
    :try_start_29
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1b

    throw v0

    :catchall_1b
    move-exception v0

    goto :goto_17

    .line 322
    .end local v6    # "backoff":J
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "backoff":J
    :cond_23
    move/from16 v27, v12

    .line 322
    .end local v12    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :goto_18
    :try_start_2a
    const-string v0, "PFTBT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "full backup requested but enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 323
    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " provisioned="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 324
    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 329
    const/16 v0, 0xd

    .line 329
    .local v0, "monitoringEvent":I
    goto :goto_19

    .line 331
    .end local v0    # "monitoringEvent":I
    :cond_24
    const/16 v0, 0xe

    .line 331
    .restart local v0    # "monitoringEvent":I
    :goto_19
    move v5, v0

    .line 333
    .end local v0    # "monitoringEvent":I
    .local v5, "monitoringEvent":I
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 334
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v0, v5, v6, v7, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 337
    const/4 v6, 0x0

    iput-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_9
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1d

    .line 338
    const/16 v0, -0x7d1

    .line 621
    .end local v27    # "backupRunStatus":I
    .local v0, "backupRunStatus":I
    iget-boolean v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v6, :cond_25

    .line 622
    const/16 v0, -0x7d3

    .line 626
    .end local v0    # "backupRunStatus":I
    .local v6, "backupRunStatus":I
    :cond_25
    move v6, v0

    const-string v0, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup completed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 630
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 631
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 635
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_26

    .line 636
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v0}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 639
    :cond_26
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 640
    :try_start_2b
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 641
    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1c

    .line 643
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 645
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 649
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_27

    .line 650
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 653
    :cond_27
    const-string v0, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 339
    return-void

    .line 641
    :catchall_1c
    move-exception v0

    :try_start_2c
    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1c

    throw v0

    .line 621
    .end local v5    # "monitoringEvent":I
    .end local v6    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    :catchall_1d
    move-exception v0

    move-object v13, v2

    goto/16 :goto_1d

    .line 608
    :catch_9
    move-exception v0

    goto :goto_1a

    .line 621
    .end local v27    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :catchall_1e
    move-exception v0

    move/from16 v27, v12

    move-object v13, v2

    .line 621
    .end local v12    # "backupRunStatus":I
    .restart local v27    # "backupRunStatus":I
    goto/16 :goto_1d

    .line 608
    .end local v27    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :catch_a
    move-exception v0

    move/from16 v27, v12

    .line 609
    .end local v12    # "backupRunStatus":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v27    # "backupRunStatus":I
    :goto_1a
    const/16 v12, -0x3e8

    .line 610
    .end local v27    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :try_start_2d
    const-string v5, "PFTBT"

    const-string v6, "Exception trying full transport backup"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x13

    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v8, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 617
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    .line 615
    const/4 v11, 0x0

    invoke-static {v11, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 611
    const/4 v9, 0x3

    invoke-static {v5, v6, v7, v9, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_20

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v0, :cond_28

    .line 622
    const/16 v0, -0x7d3

    .line 626
    .end local v12    # "backupRunStatus":I
    .local v0, "backupRunStatus":I
    move v5, v0

    goto :goto_1b

    .line 626
    .end local v0    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :cond_28
    move v5, v12

    .line 626
    .end local v12    # "backupRunStatus":I
    .local v5, "backupRunStatus":I
    :goto_1b
    const-string v0, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 630
    invoke-virtual {v10, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 631
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 635
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_29

    .line 636
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v0}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 639
    :cond_29
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 640
    :try_start_2e
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 641
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1f

    .line 643
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v6, "PFTBT.run()"

    invoke-interface {v0, v6}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 645
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 649
    iget-boolean v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_2a

    .line 650
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 653
    :cond_2a
    const-string v0, "PFTBT"

    const-string v6, "Full data backup pass finished."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 655
    nop

    .line 656
    move-object v13, v2

    .line 656
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_1c
    return-void

    .line 641
    .end local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_1f
    move-exception v0

    :try_start_2f
    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1f

    throw v0

    .line 621
    .end local v5    # "backupRunStatus":I
    .restart local v12    # "backupRunStatus":I
    :catchall_20
    move-exception v0

    move-object v13, v2

    move/from16 v27, v12

    .line 621
    .end local v2    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v12    # "backupRunStatus":I
    .restart local v13    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v27    # "backupRunStatus":I
    :goto_1d
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v2, :cond_2b

    .line 622
    const/16 v27, -0x7d3

    .line 626
    .end local v27    # "backupRunStatus":I
    .local v2, "backupRunStatus":I
    :cond_2b
    move/from16 v2, v27

    const-string v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v5, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 630
    invoke-virtual {v10, v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 631
    invoke-virtual {v10, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 635
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_2c

    .line 636
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 639
    :cond_2c
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 640
    :try_start_30
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 641
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_21

    .line 643
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v6, "PFTBT.run()"

    invoke-interface {v5, v6}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 645
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 649
    iget-boolean v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_2d

    .line 650
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 653
    :cond_2d
    const-string v5, "PFTBT"

    const-string v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v5, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 641
    :catchall_21
    move-exception v0

    :try_start_31
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_21

    throw v0
.end method

.method public unregisterTask()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 261
    return-void
.end method
