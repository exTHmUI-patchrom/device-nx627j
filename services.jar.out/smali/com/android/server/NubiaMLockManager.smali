.class public final Lcom/android/server/NubiaMLockManager;
.super Ljava/lang/Object;
.source "NubiaMLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NubiaMLockManager$PackageMonitor;,
        Lcom/android/server/NubiaMLockManager$UpdateAppRunnable;,
        Lcom/android/server/NubiaMLockManager$LockedFile;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MADV_DONTNEED:I = 0x4

.field private static final MAX_ONE_FILE_SIZE:J = 0x3200000L

.field private static MAX_TOTAL_SIZE:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "MLManager"

.field private static sIsOpen:Z


# instance fields
.field private mBgThread:Landroid/os/HandlerThread;

.field private mCallback:Lcom/android/server/INubiaMLockCallback;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLockApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/NubiaMLockManager$LockedFile;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockedMemorySize:J

.field private mMemFactor:I

.field private mNeedLockApp:Z

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPreLockAppList:[Ljava/lang/String;

.field private final mPreLockFile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/NubiaMLockManager$LockedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPreLockFileList:[Ljava/lang/String;

.field private mPreLockRunnable:Ljava/lang/Runnable;

.field private mRemoveRunnable:Ljava/lang/Runnable;

.field private final mTempRemoveApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockPreRunnable:Ljava/lang/Runnable;

.field private mUpdatePkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/NubiaMLockManager;->DEBUG:Z

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/NubiaMLockManager;->sIsOpen:Z

    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/NubiaMLockManager;->MAX_TOTAL_SIZE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mPreLockFile:Ljava/util/ArrayList;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/NubiaMLockManager;->mLockedMemorySize:J

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mUpdatePkg:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mTempRemoveApps:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mCallback:Lcom/android/server/INubiaMLockCallback;

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/NubiaMLockManager;->mMemFactor:I

    .line 58
    iput-boolean v1, p0, Lcom/android/server/NubiaMLockManager;->mNeedLockApp:Z

    .line 61
    const-string v2, "/system/framework/arm/boot.art"

    const-string v3, "/system/framework/arm/boot.oat"

    const-string v4, "/system/framework/arm64/boot.art"

    const-string v5, "/system/framework/arm64/boot.oat"

    const-string v6, "/data/dalvik-cache/arm/system@framework@boot.art"

    const-string v7, "/data/dalvik-cache/arm/system@framework@boot.oat"

    const-string v8, "/data/dalvik-cache/arm64/system@framework@boot.art"

    const-string v9, "/data/dalvik-cache/arm64/system@framework@boot.oat"

    const-string v10, "/system/framework/arm/org.apache.http.legacy.boot.odex"

    const-string v11, "/system/framework/arm64/org.apache.http.legacy.boot.odex"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NubiaMLockManager;->mPreLockFileList:[Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mPreLockAppList:[Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/android/server/NubiaMLockManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/NubiaMLockManager$1;-><init>(Lcom/android/server/NubiaMLockManager;)V

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mPreLockRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/android/server/NubiaMLockManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/NubiaMLockManager$2;-><init>(Lcom/android/server/NubiaMLockManager;)V

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mUnlockPreRunnable:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcom/android/server/NubiaMLockManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/NubiaMLockManager$3;-><init>(Lcom/android/server/NubiaMLockManager;)V

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/android/server/NubiaMLockManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/NubiaMLockManager$4;-><init>(Lcom/android/server/NubiaMLockManager;)V

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mRemoveRunnable:Ljava/lang/Runnable;

    .line 145
    iput-object p1, p0, Lcom/android/server/NubiaMLockManager;->mContext:Landroid/content/Context;

    .line 146
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mPM:Landroid/content/pm/PackageManager;

    .line 147
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->initTotalSize()V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NubiaMLockManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;

    .line 38
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->preLockFilesInner()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/NubiaMLockManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;

    .line 38
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->notifyCallbackFinishLock()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->addLockApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NubiaMLockManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;

    .line 38
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mTempRemoveApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->unlockApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NubiaMLockManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;

    .line 38
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->unlockPreLockFilesInner()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/NubiaMLockManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;
    .param p1, "x1"    # Z

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->updateLockAppWithPre(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NubiaMLockManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;

    .line 38
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mUpdatePkg:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/server/NubiaMLockManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->updateApk(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/NubiaMLockManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;

    .line 38
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->shouldLockMemory()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaMLockManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->isTempRemoved(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addLockApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->canLockApp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/NubiaMLockManager;->getLockedSize()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    add-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/NubiaMLockManager;->MAX_TOTAL_SIZE:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    .line 294
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->isLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->lockApp(Ljava/lang/String;)V

    .line 297
    :cond_2
    return-void
.end method

.method private addPreLockApp(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 615
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mPreLockAppList:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mPreLockAppList:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 617
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v0, "preList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mPreLockAppList:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 619
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 620
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 624
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_1

    .line 626
    :cond_3
    return-void

    .line 615
    .end local v0    # "preList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    return-void
.end method

.method private declared-synchronized canLockApp()Z
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    iget v0, p0, Lcom/android/server/NubiaMLockManager;->mMemFactor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/NubiaMLockManager;
    throw v0
.end method

.method private canLockMemory()Z
    .locals 4

    .line 261
    sget-wide v0, Lcom/android/server/NubiaMLockManager;->MAX_TOTAL_SIZE:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized changeLockedSize(J)V
    .locals 4
    .param p1, "offset"    # J

    monitor-enter p0

    .line 215
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/NubiaMLockManager;->mLockedMemorySize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/NubiaMLockManager;->mLockedMemorySize:J

    .line 216
    iget-wide v0, p0, Lcom/android/server/NubiaMLockManager;->mLockedMemorySize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 217
    iput-wide v2, p0, Lcom/android/server/NubiaMLockManager;->mLockedMemorySize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    monitor-exit p0

    return-void

    .line 214
    .end local p1    # "offset":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/NubiaMLockManager;
    throw p1
.end method

.method private doDump(Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "total size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/NubiaMLockManager;->MAX_TOTAL_SIZE:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",used size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/NubiaMLockManager;->getLockedSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canLockApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->canLockApp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pre lock size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mPreLockFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mPreLockFile:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NubiaMLockManager$LockedFile;

    .line 347
    .local v1, "item":Lcom/android/server/NubiaMLockManager$LockedFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/NubiaMLockManager$LockedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/NubiaMLockManager$LockedFile;->mLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    .end local v1    # "item":Lcom/android/server/NubiaMLockManager$LockedFile;
    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    monitor-enter v0

    .line 350
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app lock size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 352
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 353
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NubiaMLockManager$LockedFile;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NubiaMLockManager$LockedFile;

    .line 356
    .local v6, "item":Lcom/android/server/NubiaMLockManager$LockedFile;
    iget-object v7, v6, Lcom/android/server/NubiaMLockManager$LockedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v7, " ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-wide v7, v6, Lcom/android/server/NubiaMLockManager$LockedFile;->mLength:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .end local v6    # "item":Lcom/android/server/NubiaMLockManager$LockedFile;
    goto :goto_2

    .line 361
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NubiaMLockManager$LockedFile;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 363
    :cond_2
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mPM:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDexFileFromCode(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 11
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "is64"    # Z

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "oat":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "arm64"

    goto :goto_0

    :cond_0
    const-string v2, "arm"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v3, "arm"

    goto :goto_1

    :cond_1
    const-string v3, "arm64"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    return-object v4

    .line 485
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "subFs":[Ljava/lang/String;
    if-nez v3, :cond_4

    return-object v4

    .line 487
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v4, "dexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_6

    aget-object v8, v3, v7

    .line 489
    .local v8, "item":Ljava/lang/String;
    const-string v9, "dex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 490
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .end local v8    # "item":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 493
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 494
    .local v5, "re":[Ljava/lang/String;
    nop

    .local v6, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 495
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 494
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 497
    .end local v6    # "i":I
    :cond_7
    return-object v5
.end method

.method private static getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "arch"    # Ljava/lang/String;

    .line 501
    const/4 v0, 0x0

    move-object v1, v0

    .line 503
    .local v1, "re":[Ljava/lang/String;
    :try_start_0
    const-class v2, Ldalvik/system/DexFile;

    const-string v3, "getDexFileOutputPaths"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 504
    .local v2, "method":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    aput-object p1, v3, v8

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 505
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 506
    :goto_0
    return-object v1
.end method

.method private initTotalSize()V
    .locals 5

    .line 406
    const/16 v0, 0xf

    new-array v0, v0, [J

    .line 407
    .local v0, "mInfos":[J
    invoke-static {v0}, Landroid/os/Debug;->getMemInfo([J)V

    .line 408
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    .line 409
    .local v1, "ramSize":J
    const-wide v3, 0x140000000L

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 410
    const-wide/32 v3, 0x25800000

    sput-wide v3, Lcom/android/server/NubiaMLockManager;->MAX_TOTAL_SIZE:J

    .line 411
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/NubiaMLockManager;->mNeedLockApp:Z

    goto :goto_0

    .line 413
    :cond_0
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/android/server/NubiaMLockManager;->MAX_TOTAL_SIZE:J

    .line 415
    :goto_0
    return-void
.end method

.method private isLocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isTempRemoved(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mTempRemoveApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static lockApk(Landroid/content/pm/ApplicationInfo;Ljava/util/ArrayList;)J
    .locals 8
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/NubiaMLockManager$LockedFile;",
            ">;)J"
        }
    .end annotation

    .line 425
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NubiaMLockManager$LockedFile;>;"
    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 426
    .local v7, "apk":Ljava/lang/String;
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x3200000

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/android/server/NubiaMLockManager;->lockFile(Ljava/lang/String;JJJ)Lcom/android/server/NubiaMLockManager$LockedFile;

    move-result-object v0

    .line 427
    .local v0, "f":Lcom/android/server/NubiaMLockManager$LockedFile;
    if-nez v0, :cond_0

    .line 428
    const-string v1, "MLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-wide/16 v1, 0x0

    return-wide v1

    .line 431
    :cond_0
    sget-boolean v1, Lcom/android/server/NubiaMLockManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 432
    const-string v1, "MLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/NubiaMLockManager$LockedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-wide v1, v0, Lcom/android/server/NubiaMLockManager$LockedFile;->mLength:J

    return-wide v1
.end method

.method private lockApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 367
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 368
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->unlockApp(Ljava/lang/String;)V

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v1, "lockFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NubiaMLockManager$LockedFile;>;"
    :try_start_0
    invoke-static {v0, v1}, Lcom/android/server/NubiaMLockManager;->lockApk(Landroid/content/pm/ApplicationInfo;Ljava/util/ArrayList;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/NubiaMLockManager;->changeLockedSize(J)V

    .line 375
    invoke-static {v0, v1}, Lcom/android/server/NubiaMLockManager;->lockOdex(Landroid/content/pm/ApplicationInfo;Ljava/util/ArrayList;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/NubiaMLockManager;->changeLockedSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    :catch_0
    move-exception v2

    .line 377
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    monitor-enter v2

    .line 379
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 382
    :cond_1
    :goto_1
    return-void
.end method

.method public static lockFile(Ljava/lang/String;JJJ)Lcom/android/server/NubiaMLockManager$LockedFile;
    .locals 18
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .param p5, "maxSize"    # J

    move-object/from16 v7, p0

    .line 510
    move-wide/from16 v4, p5

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v3, v0

    .line 512
    .local v3, "fd":Ljava/io/FileDescriptor;
    const/16 v17, 0x0

    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v6, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v0, v6

    sget v6, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v6

    sget v6, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {v7, v0, v6}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v6, v0

    .line 516
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .local v6, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-static {v6}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 518
    .local v0, "sb":Landroid/system/StructStat;
    add-long v8, p1, p3

    iget-wide v10, v0, Landroid/system/StructStat;->st_size:J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_4

    cmp-long v3, v8, v10

    if-lez v3, :cond_0

    .line 519
    :try_start_2
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 520
    const-string v3, "MLManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to lock file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", request extends beyond end of file.  offset + length =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v9, p1, p3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", file length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Landroid/system/StructStat;->st_size:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-object v17

    .line 544
    .end local v0    # "sb":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    move-wide/from16 v1, p3

    goto/16 :goto_1

    .line 526
    .restart local v0    # "sb":Landroid/system/StructStat;
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v3, p3, v8

    if-nez v3, :cond_1

    .line 527
    iget-wide v10, v0, Landroid/system/StructStat;->st_size:J
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    sub-long v1, v10, p1

    .line 530
    .end local p3    # "length":J
    .local v1, "length":J
    move-wide v2, v1

    goto :goto_0

    .end local v1    # "length":J
    .restart local p3    # "length":J
    :cond_1
    move-wide/from16 v2, p3

    .end local p3    # "length":J
    .local v2, "length":J
    :goto_0
    cmp-long v1, v4, v8

    if-lez v1, :cond_2

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 531
    :try_start_3
    const-string v1, "MLManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not lock file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", maxSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1

    .line 534
    return-object v17

    .line 544
    .end local v0    # "sb":Landroid/system/StructStat;
    :catch_1
    move-exception v0

    move-wide v1, v2

    goto :goto_1

    .line 537
    .restart local v0    # "sb":Landroid/system/StructStat;
    :cond_2
    const-wide/16 v8, 0x0

    :try_start_4
    sget v12, Landroid/system/OsConstants;->PROT_READ:I

    sget v13, Landroid/system/OsConstants;->MAP_SHARED:I

    move-wide v10, v2

    move-object v14, v6

    move-wide/from16 v15, p1

    invoke-static/range {v8 .. v16}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v8

    .line 539
    .local v8, "address":J
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 541
    invoke-static {v8, v9, v2, v3}, Landroid/system/Os;->mlock(JJ)V

    .line 543
    new-instance v10, Lcom/android/server/NubiaMLockManager$LockedFile;
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v10

    move-wide v11, v2

    move-wide v2, v8

    .end local v2    # "length":J
    .local v11, "length":J
    move-wide v4, v11

    move-object v13, v6

    move-object v6, v7

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .local v13, "fd":Ljava/io/FileDescriptor;
    :try_start_5
    invoke-direct/range {v1 .. v6}, Lcom/android/server/NubiaMLockManager$LockedFile;-><init>(JJLjava/lang/String;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v10

    .line 544
    .end local v0    # "sb":Landroid/system/StructStat;
    .end local v8    # "address":J
    :catch_2
    move-exception v0

    move-wide v1, v11

    move-object v6, v13

    goto :goto_1

    .end local v11    # "length":J
    .end local v13    # "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "length":J
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    :catch_3
    move-exception v0

    move-wide v11, v2

    move-object v13, v6

    move-wide v1, v11

    .end local v2    # "length":J
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v11    # "length":J
    .restart local v13    # "fd":Ljava/io/FileDescriptor;
    goto :goto_1

    .end local v11    # "length":J
    .end local v13    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "length":J
    :catch_4
    move-exception v0

    move-object v13, v6

    move-wide/from16 v1, p3

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v13    # "fd":Ljava/io/FileDescriptor;
    goto :goto_1

    .end local v13    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    :catch_5
    move-exception v0

    move-wide/from16 v1, p3

    move-object v6, v3

    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "length":J
    .restart local v1    # "length":J
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    :goto_1
    move-object v3, v0

    .line 545
    .local v3, "e":Landroid/system/ErrnoException;
    const-string v0, "MLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not lock file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v6}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    :try_start_6
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_6

    .line 551
    goto :goto_2

    .line 549
    :catch_6
    move-exception v0

    move-object v4, v0

    .line 550
    .local v0, "eClose":Landroid/system/ErrnoException;
    const-string v4, "MLManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close fd, error = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .end local v0    # "eClose":Landroid/system/ErrnoException;
    :cond_3
    :goto_2
    return-object v17
.end method

.method private static lockOdex(Landroid/content/pm/ApplicationInfo;Ljava/util/ArrayList;)J
    .locals 17
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/NubiaMLockManager$LockedFile;",
            ">;)J"
        }
    .end annotation

    .line 440
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NubiaMLockManager$LockedFile;>;"
    move-object/from16 v0, p0

    .line 440
    const-string v1, "arm"

    .line 441
    .local v1, "arch":Ljava/lang/String;
    const/4 v2, 0x0

    .line 442
    .local v2, "is64":Z
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 443
    invoke-static {v3}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "64"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    const/4 v2, 0x1

    goto :goto_0

    .line 447
    :cond_0
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {v3}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "64"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    const/4 v2, 0x1

    .line 454
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "baseCodePath":Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/server/NubiaMLockManager;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "dexs":[Ljava/lang/String;
    if-nez v5, :cond_2

    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/server/NubiaMLockManager;->getDexFileFromCode(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v5

    .line 459
    :cond_2
    if-eqz v5, :cond_7

    array-length v6, v5

    if-nez v6, :cond_3

    goto :goto_3

    .line 463
    :cond_3
    const-wide/16 v6, 0x0

    .line 464
    .local v6, "totalLength":J
    array-length v8, v5

    :goto_1
    if-ge v4, v8, :cond_6

    aget-object v16, v5, v4

    .line 465
    .local v16, "dex":Ljava/lang/String;
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/32 v14, 0x3200000

    move-object/from16 v9, v16

    invoke-static/range {v9 .. v15}, Lcom/android/server/NubiaMLockManager;->lockFile(Ljava/lang/String;JJJ)Lcom/android/server/NubiaMLockManager$LockedFile;

    move-result-object v9

    .line 466
    .local v9, "f":Lcom/android/server/NubiaMLockManager$LockedFile;
    if-eqz v9, :cond_5

    .line 467
    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-boolean v11, Lcom/android/server/NubiaMLockManager;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 469
    const-string v11, "MLManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "locked "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Lcom/android/server/NubiaMLockManager$LockedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_4
    iget-wide v11, v9, Lcom/android/server/NubiaMLockManager$LockedFile;->mLength:J

    add-long/2addr v6, v11

    .line 471
    .end local v9    # "f":Lcom/android/server/NubiaMLockManager$LockedFile;
    .end local v16    # "dex":Ljava/lang/String;
    goto :goto_2

    .line 464
    :cond_5
    move-object/from16 v10, p1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 474
    :cond_6
    move-object/from16 v10, p1

    return-wide v6

    .line 460
    .end local v6    # "totalLength":J
    :cond_7
    :goto_3
    move-object/from16 v10, p1

    const-wide/16 v6, 0x0

    return-wide v6
.end method

.method private static madvise(JJI)V
    .locals 8
    .param p0, "addr"    # J
    .param p2, "length"    # J
    .param p4, "advice"    # I

    .line 559
    :try_start_0
    const-class v0, Landroid/os/MemoryFile;

    const-string/jumbo v1, "native_madvise"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 560
    .local v0, "madvise":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v0    # "madvise":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private notifyCallbackFinishLock()V
    .locals 1

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mCallback:Lcom/android/server/INubiaMLockCallback;

    .line 208
    .local v0, "callback":Lcom/android/server/INubiaMLockCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/android/server/INubiaMLockCallback;->finishMLock()V

    .line 212
    :cond_0
    return-void

    .line 208
    .end local v0    # "callback":Lcom/android/server/INubiaMLockCallback;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private preLockFilesInner()V
    .locals 13

    .line 231
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mPreLockFileList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v10, v0, v2

    .line 232
    .local v10, "path":Ljava/lang/String;
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    sget-wide v8, Lcom/android/server/NubiaMLockManager;->MAX_TOTAL_SIZE:J

    invoke-virtual {p0}, Lcom/android/server/NubiaMLockManager;->getLockedSize()J

    move-result-wide v11

    sub-long/2addr v8, v11

    move-object v3, v10

    invoke-static/range {v3 .. v9}, Lcom/android/server/NubiaMLockManager;->lockFile(Ljava/lang/String;JJJ)Lcom/android/server/NubiaMLockManager$LockedFile;

    move-result-object v3

    .line 233
    .local v3, "f":Lcom/android/server/NubiaMLockManager$LockedFile;
    if-eqz v3, :cond_0

    .line 234
    iget-wide v4, v3, Lcom/android/server/NubiaMLockManager$LockedFile;->mLength:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/NubiaMLockManager;->changeLockedSize(J)V

    .line 235
    iget-object v4, p0, Lcom/android/server/NubiaMLockManager;->mPreLockFile:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v3    # "f":Lcom/android/server/NubiaMLockManager$LockedFile;
    .end local v10    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_1
    return-void
.end method

.method private registerForPackageIntents()V
    .locals 5

    .line 629
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 630
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/NubiaMLockManager$PackageMonitor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/NubiaMLockManager$PackageMonitor;-><init>(Lcom/android/server/NubiaMLockManager;Lcom/android/server/NubiaMLockManager$1;)V

    iget-object v4, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 634
    return-void
.end method

.method private removeLockApp()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mRemoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mRemoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method private shouldLockMemory()Z
    .locals 1

    .line 257
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->canLockMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/NubiaMLockManager;->sIsOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unlockApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "lockFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NubiaMLockManager$LockedFile;>;"
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    .line 392
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 393
    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NubiaMLockManager$LockedFile;

    .line 396
    .local v2, "f":Lcom/android/server/NubiaMLockManager$LockedFile;
    invoke-static {v2}, Lcom/android/server/NubiaMLockManager;->unlockFile(Lcom/android/server/NubiaMLockManager$LockedFile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    iget-wide v3, v2, Lcom/android/server/NubiaMLockManager$LockedFile;->mLength:J

    neg-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/android/server/NubiaMLockManager;->changeLockedSize(J)V

    .line 399
    .end local v2    # "f":Lcom/android/server/NubiaMLockManager$LockedFile;
    :cond_1
    goto :goto_0

    .line 400
    :cond_2
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    monitor-enter v2

    .line 401
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    monitor-exit v2

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 392
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private static unlockFile(Lcom/android/server/NubiaMLockManager$LockedFile;)Z
    .locals 5
    .param p0, "f"    # Lcom/android/server/NubiaMLockManager$LockedFile;

    .line 568
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/NubiaMLockManager$LockedFile;->mAddress:J

    iget-wide v2, p0, Lcom/android/server/NubiaMLockManager$LockedFile;->mLength:J

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->munlock(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    nop

    .line 573
    iget-wide v0, p0, Lcom/android/server/NubiaMLockManager$LockedFile;->mAddress:J

    iget-wide v2, p0, Lcom/android/server/NubiaMLockManager$LockedFile;->mLength:J

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/NubiaMLockManager;->madvise(JJI)V

    .line 574
    sget-boolean v0, Lcom/android/server/NubiaMLockManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "MLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlock file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NubiaMLockManager$LockedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v1, "MLManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unlock file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NubiaMLockManager$LockedFile;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v1, 0x0

    return v1
.end method

.method private unlockPreLockFiles()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mUnlockPreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mUnlockPreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method

.method private unlockPreLockFilesInner()V
    .locals 5

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NubiaMLockManager$LockedFile;>;"
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mPreLockFile:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NubiaMLockManager$LockedFile;

    .line 248
    .local v2, "f":Lcom/android/server/NubiaMLockManager$LockedFile;
    invoke-static {v2}, Lcom/android/server/NubiaMLockManager;->unlockFile(Lcom/android/server/NubiaMLockManager$LockedFile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    iget-wide v3, v2, Lcom/android/server/NubiaMLockManager$LockedFile;->mLength:J

    neg-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/android/server/NubiaMLockManager;->changeLockedSize(J)V

    .line 250
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v2    # "f":Lcom/android/server/NubiaMLockManager$LockedFile;
    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mPreLockFile:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 254
    return-void
.end method

.method private updateApk(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 581
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->isLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 582
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->lockApp(Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method private updateLockAppInner(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "unlockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager;->mLockApps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 274
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 275
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 278
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 280
    .local v2, "pkg":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/NubiaMLockManager;->unlockApp(Ljava/lang/String;)V

    .line 281
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_1

    .line 282
    :cond_2
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->canLockApp()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 283
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 284
    .restart local v2    # "pkg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/NubiaMLockManager;->getLockedSize()J

    move-result-wide v3

    const-wide/32 v5, 0x3200000

    add-long/2addr v3, v5

    sget-wide v5, Lcom/android/server/NubiaMLockManager;->MAX_TOTAL_SIZE:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    return-void

    .line 285
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/NubiaMLockManager;->isLocked(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 286
    invoke-direct {p0, v2}, Lcom/android/server/NubiaMLockManager;->lockApp(Ljava/lang/String;)V

    .line 288
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 289
    :cond_6
    return-void

    .line 278
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateLockAppWithPre(Z)V
    .locals 3
    .param p1, "isAddPre"    # Z

    .line 129
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mUpdatePkg:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager;->mUpdatePkg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v2, p0, Lcom/android/server/NubiaMLockManager;->mUpdatePkg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 133
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mTempRemoveApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0, v0}, Lcom/android/server/NubiaMLockManager;->addPreLockApp(Ljava/util/ArrayList;)V

    .line 138
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/NubiaMLockManager;->updateLockAppInner(Ljava/util/ArrayList;)V

    .line 139
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->notifyCallbackFinishLock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 133
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 140
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 141
    :goto_0
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "isMlock":Z
    const/4 v1, 0x1

    .line 309
    .local v1, "isDump":Z
    const/4 v2, 0x0

    .line 310
    .local v2, "isLog":Z
    const/4 v3, -0x1

    .line 311
    .local v3, "isOpen":I
    const/4 v4, 0x0

    if-eqz p2, :cond_5

    .line 312
    array-length v5, p2

    move v6, v3

    move v3, v2

    move v2, v0

    move v0, v4

    .line 312
    .end local v0    # "isMlock":Z
    .local v2, "isMlock":Z
    .local v3, "isLog":Z
    .local v6, "isOpen":I
    :goto_0
    if-ge v0, v5, :cond_4

    aget-object v7, p2, v0

    .line 313
    .local v7, "arg":Ljava/lang/String;
    const-string/jumbo v8, "mlock"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    .line 314
    :cond_0
    const-string/jumbo v8, "log"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 315
    :cond_1
    const-string/jumbo v8, "open"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    .line 316
    :cond_2
    const-string v8, "close"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x0

    .line 312
    .end local v7    # "arg":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_4
    move v0, v2

    move v2, v3

    move v3, v6

    .line 319
    .end local v6    # "isOpen":I
    .restart local v0    # "isMlock":Z
    .local v2, "isLog":Z
    .local v3, "isOpen":I
    :cond_5
    if-nez v0, :cond_6

    return-void

    .line 321
    :cond_6
    const/4 v5, 0x1

    if-eqz v2, :cond_9

    .line 322
    if-lez v3, :cond_7

    move v4, v5

    nop

    :cond_7
    sput-boolean v4, Lcom/android/server/NubiaMLockManager;->DEBUG:Z

    .line 323
    sget-boolean v4, Lcom/android/server/NubiaMLockManager;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "open log"

    goto :goto_2

    :cond_8
    const-string v4, "close log"

    :goto_2
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 324
    :cond_9
    if-nez v3, :cond_a

    .line 325
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->unlockPreLockFiles()V

    .line 326
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->removeLockApp()V

    .line 327
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->notifyCallbackFinishLock()V

    .line 328
    sput-boolean v4, Lcom/android/server/NubiaMLockManager;->sIsOpen:Z

    .line 329
    const-string v4, "close mlock"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 330
    :cond_a
    if-ne v3, v5, :cond_c

    .line 331
    sget-boolean v4, Lcom/android/server/NubiaMLockManager;->sIsOpen:Z

    if-nez v4, :cond_b

    .line 332
    sput-boolean v5, Lcom/android/server/NubiaMLockManager;->sIsOpen:Z

    .line 333
    invoke-virtual {p0}, Lcom/android/server/NubiaMLockManager;->perLockFiles()V

    .line 334
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->notifyCallbackFinishLock()V

    .line 336
    :cond_b
    const-string/jumbo v4, "open mlock"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 338
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->doDump(Ljava/io/PrintWriter;)V

    .line 340
    :goto_3
    return-void
.end method

.method public declared-synchronized getLockedSize()J
    .locals 2

    monitor-enter p0

    .line 179
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/NubiaMLockManager;->mLockedMemorySize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/NubiaMLockManager;
    throw v0
.end method

.method public perLockFiles()V
    .locals 2

    .line 151
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->shouldLockMemory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mPreLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mPreLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/NubiaMLockManager;->updateLockApp(Ljava/util/List;)V

    .line 156
    return-void
.end method

.method public declared-synchronized setCallback(Lcom/android/server/INubiaMLockCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/INubiaMLockCallback;

    monitor-enter p0

    .line 183
    :try_start_0
    iput-object p1, p0, Lcom/android/server/NubiaMLockManager;->mCallback:Lcom/android/server/INubiaMLockCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    .end local p1    # "callback":Lcom/android/server/INubiaMLockCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/NubiaMLockManager;
    throw p1
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 222
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "lock_work"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mBgThread:Landroid/os/HandlerThread;

    .line 223
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 224
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    .line 225
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->canLockMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/NubiaMLockManager;->mNeedLockApp:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->registerForPackageIntents()V

    .line 228
    :cond_0
    return-void
.end method

.method public updateLockApp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->shouldLockMemory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/NubiaMLockManager;->mNeedLockApp:Z

    if-nez v0, :cond_1

    return-void

    .line 161
    :cond_1
    if-nez p1, :cond_2

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mUpdatePkg:Ljava/util/ArrayList;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mUpdatePkg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 167
    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mUpdatePkg:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NubiaMLockManager;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void

    .line 168
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized updateMemFactor(I)V
    .locals 1
    .param p1, "memFactor"    # I

    monitor-enter p0

    .line 194
    :try_start_0
    iput p1, p0, Lcom/android/server/NubiaMLockManager;->mMemFactor:I

    .line 195
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->canLockApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->removeLockApp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    monitor-exit p0

    return-void

    .line 193
    .end local p1    # "memFactor":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/NubiaMLockManager;
    throw p1
.end method

.method public updateWhenAppChange(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcom/android/server/NubiaMLockManager;->shouldLockMemory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/NubiaMLockManager;->mNeedLockApp:Z

    if-nez v0, :cond_1

    return-void

    .line 189
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/NubiaMLockManager;->isLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/android/server/NubiaMLockManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/NubiaMLockManager$UpdateAppRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/NubiaMLockManager$UpdateAppRunnable;-><init>(Lcom/android/server/NubiaMLockManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-void
.end method
