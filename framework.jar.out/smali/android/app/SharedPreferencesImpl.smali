.class final Landroid/app/SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedPreferencesImpl$EditorImpl;,
        Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    }
.end annotation


# static fields
.field private static final CONTENT:Ljava/lang/Object;

.field private static final DEBUG:Z = false

.field private static final MAX_FSYNC_DURATION_MILLIS:J = 0x100L

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesImpl"


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private mCurrentMemoryStateGeneration:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mDiskStateGeneration:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWritingToDiskLock"
    .end annotation
.end field

.field private mDiskWritesInFlight:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMode:I

.field private mNumSync:I

.field private mStatSize:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mStatTimestamp:Landroid/system/StructTimespec;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWritingToDiskLock"
    .end annotation
.end field

.field private mThrowable:Ljava/lang/Throwable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    .line 81
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 90
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 103
    new-instance v1, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 105
    iput v0, p0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    .line 108
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 109
    invoke-static {p1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 110
    iput p2, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    .line 111
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 113
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    .line 114
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Landroid/app/SharedPreferencesImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .line 55
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->loadFromDisk()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "x1"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .line 55
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/SharedPreferencesImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .line 55
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$308(Landroid/app/SharedPreferencesImpl;)I
    .locals 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .line 55
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$310(Landroid/app/SharedPreferencesImpl;)I
    .locals 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .line 55
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .line 55
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "x1"    # Ljava/util/Map;

    .line 55
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .line 55
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/SharedPreferencesImpl;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .line 55
    iget-wide v0, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-wide v0
.end method

.method static synthetic access$608(Landroid/app/SharedPreferencesImpl;)J
    .locals 4
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .line 55
    iget-wide v0, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .line 55
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "x1"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "x2"    # Z

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V

    return-void
.end method

.method private awaitLoadedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 277
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_0

    .line 281
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 283
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_1

    .line 285
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    :goto_1
    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 292
    return-void

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 695
    const/4 v0, 0x0

    move-object v1, v0

    .line 697
    .local v1, "str":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 713
    goto :goto_0

    .line 698
    :catch_0
    move-exception v2

    .line 699
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 700
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 701
    const-string v4, "SharedPreferencesImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-object v0

    .line 704
    :cond_0
    nop

    .line 705
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1f9

    .line 704
    const/4 v5, -0x1

    invoke-static {v0, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 709
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .line 712
    goto :goto_0

    .line 710
    :catch_1
    move-exception v0

    .line 711
    .local v0, "e2":Ljava/io/FileNotFoundException;
    const-string v4, "SharedPreferencesImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    .end local v0    # "e2":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "parent":Ljava/io/File;
    :goto_0
    return-object v1
.end method

.method private enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "postWriteRunnable"    # Ljava/lang/Runnable;

    .line 661
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 663
    .local v2, "isFromSyncCommit":Z
    :goto_0
    new-instance v3, Landroid/app/SharedPreferencesImpl$2;

    invoke-direct {v3, p0, p1, v2, p2}, Landroid/app/SharedPreferencesImpl$2;-><init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;ZLjava/lang/Runnable;)V

    .line 680
    .local v3, "writeToDiskRunnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_2

    .line 681
    const/4 v4, 0x0

    .line 682
    .local v4, "wasEmpty":Z
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 683
    :try_start_0
    iget v6, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-ne v6, v1, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    move v4, v6

    .line 684
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    if-eqz v4, :cond_2

    .line 686
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 687
    return-void

    .line 684
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 691
    .end local v4    # "wasEmpty":Z
    :cond_2
    if-nez v2, :cond_3

    move v0, v1

    nop

    :cond_3
    invoke-static {v3, v0}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    .line 692
    return-void
.end method

.method private hasFileChangedUnexpectedly()Z
    .locals 8

    .line 236
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 240
    monitor-exit v0

    return v2

    .line 242
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 251
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    .local v1, "stat":Landroid/system/StructStat;
    nop

    .line 253
    nop

    .line 256
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 257
    :try_start_2
    iget-object v4, v1, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    invoke-virtual {v4, v5}, Landroid/system/StructTimespec;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    iget-wide v6, v1, Landroid/system/StructStat;->st_size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    nop

    :cond_2
    :goto_0
    monitor-exit v3

    return v0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 252
    .end local v1    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Landroid/system/ErrnoException;
    return v0

    .line 242
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private loadFromDisk()V
    .locals 9

    .line 129
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-eqz v1, :cond_0

    .line 131
    monitor-exit v0

    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 135
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 137
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 140
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    const-string v0, "SharedPreferencesImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to read preferences file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    const/4 v0, 0x0

    .line 145
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 146
    .local v1, "stat":Landroid/system/StructStat;
    const/4 v2, 0x0

    move-object v3, v2

    .line 148
    .local v3, "thrown":Ljava/lang/Throwable;
    :try_start_1
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v4

    move-object v1, v4

    .line 149
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_3

    .line 150
    nop

    .line 152
    .local v2, "str":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x4000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v2, v4

    .line 154
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    .line 158
    :try_start_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 159
    :goto_0
    goto :goto_2

    .line 158
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 155
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    .end local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 164
    .end local v2    # "str":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v2

    .line 165
    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v2

    .line 165
    .end local v2    # "t":Ljava/lang/Throwable;
    goto :goto_3

    .line 161
    :catch_2
    move-exception v2

    .line 166
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, "stat":Landroid/system/StructStat;
    :cond_3
    :goto_2
    nop

    .line 168
    :goto_3
    move-object v2, v1

    move-object v1, v0

    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 169
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 170
    iput-object v3, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 176
    if-nez v3, :cond_5

    .line 177
    if-eqz v1, :cond_4

    .line 178
    :try_start_7
    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 179
    iget-object v0, v2, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    .line 180
    iget-wide v5, v2, Landroid/system/StructStat;->st_size:J

    iput-wide v5, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    goto/16 :goto_6

    .line 214
    :catchall_1
    move-exception v0

    goto/16 :goto_5

    .line 211
    :catch_3
    move-exception v0

    goto/16 :goto_4

    .line 182
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 183
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.ludashi.benchmark2.v2.playerprefs.xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string/jumbo v6, "unity.player_session_elapsed_time"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "Curvy_HideManager"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "Curvy_DefaultGizmoSelectionColor"

    const-string v8, "%232659ADFF"

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string/jumbo v6, "unity.Curvy_DefaultInterpolation"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "UnityGraphicsQuality"

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "Screenmanager%20Resolution%20Height"

    const/16 v8, 0x438

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "Curvy_MaxCachePPU"

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string/jumbo v6, "unity.player_sessionid"

    const-string v8, ""

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "__UNITY_PLAYERPREFS_VERSION__"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "Curvy_DefaultGizmoColor"

    const-string v8, "%23B5B5B5FF"

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "Curvy_SplineLayer"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "Screenmanager%20Resolution%20Width"

    const/16 v7, 0x924

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string/jumbo v6, "unity.cloud_userid"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "Curvy_SceneViewResolution"

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "Curvy_OrientationLength"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string/jumbo v6, "unity.player_session_background_time"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v6, "Screenmanager%20Is%20Fullscreen%20mode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v5, "Curvy_OrientationColor"

    const-string v6, "%23BFBF66FF"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v5, "Curvy_ControlPointSize"

    const v6, 0x3e19999a    # 0.15f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    const-string v5, "Curvy_Gizmos"

    const/16 v6, 0x12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    .line 211
    :goto_4
    nop

    .line 212
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_8
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mThrowable:Ljava/lang/Throwable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 214
    .end local v0    # "t":Ljava/lang/Throwable;
    :try_start_9
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    goto :goto_7

    :goto_5
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    throw v0

    :cond_5
    :goto_6
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 215
    nop

    .line 216
    monitor-exit v4

    .line 217
    return-void

    .line 216
    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 137
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "stat":Landroid/system/StructStat;
    .end local v3    # "thrown":Ljava/lang/Throwable;
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1
.end method

.method static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "prefsFile"    # Ljava/io/File;

    .line 220
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private startLoadFromDisk()V
    .locals 2

    .line 118
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    new-instance v0, Landroid/app/SharedPreferencesImpl$1;

    const-string v1, "SharedPreferencesImpl-load"

    invoke-direct {v0, p0, v1}, Landroid/app/SharedPreferencesImpl$1;-><init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Landroid/app/SharedPreferencesImpl$1;->start()V

    .line 126
    return-void

    .line 120
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .locals 30
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "isFromSyncCommit"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWritingToDiskLock"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 719
    const-wide/16 v3, 0x0

    .line 720
    .local v3, "startTime":J
    const-wide/16 v5, 0x0

    .line 721
    .local v5, "existsTime":J
    const-wide/16 v7, 0x0

    .line 722
    .local v7, "backupExistsTime":J
    const-wide/16 v9, 0x0

    .line 723
    .local v9, "outputStreamCreateTime":J
    const-wide/16 v11, 0x0

    .line 724
    .local v11, "writeTime":J
    const-wide/16 v13, 0x0

    .line 725
    .local v13, "fsyncTime":J
    const-wide/16 v15, 0x0

    .line 726
    .local v15, "setPermTime":J
    const-wide/16 v17, 0x0

    .line 727
    .local v17, "fstatTime":J
    const-wide/16 v19, 0x0

    .line 733
    .local v19, "deleteTime":J
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v21

    .line 743
    .local v21, "fileExists":Z
    move-wide/from16 v22, v3

    .line 743
    .end local v3    # "startTime":J
    .local v22, "startTime":J
    if-eqz v21, :cond_5

    .line 744
    const/16 v24, 0x0

    .line 747
    .local v24, "needsWrite":Z
    iget-wide v3, v1, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    move-wide/from16 v25, v5

    iget-wide v5, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    .line 747
    .end local v5    # "existsTime":J
    .local v25, "existsTime":J
    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 748
    if-eqz p2, :cond_0

    .line 749
    const/16 v24, 0x1

    .line 761
    move-wide/from16 v27, v7

    goto :goto_1

    .line 751
    :cond_0
    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 754
    :try_start_0
    iget-wide v5, v1, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v27, v7

    :try_start_1
    iget-wide v7, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    .line 754
    .end local v7    # "backupExistsTime":J
    .local v27, "backupExistsTime":J
    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    .line 755
    const/4 v0, 0x1

    .line 757
    .end local v24    # "needsWrite":Z
    .local v0, "needsWrite":Z
    move/from16 v24, v0

    .line 757
    .end local v0    # "needsWrite":Z
    .restart local v24    # "needsWrite":Z
    :cond_1
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 757
    .end local v27    # "backupExistsTime":J
    .restart local v7    # "backupExistsTime":J
    :catchall_1
    move-exception v0

    move-wide/from16 v27, v7

    .line 757
    .end local v7    # "backupExistsTime":J
    .restart local v27    # "backupExistsTime":J
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 761
    .end local v27    # "backupExistsTime":J
    .restart local v7    # "backupExistsTime":J
    :cond_2
    move-wide/from16 v27, v7

    .line 761
    .end local v7    # "backupExistsTime":J
    .restart local v27    # "backupExistsTime":J
    :goto_1
    if-nez v24, :cond_3

    .line 762
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 763
    return-void

    .line 766
    :cond_3
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 772
    .local v0, "backupFileExists":Z
    if-nez v0, :cond_4

    .line 773
    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v5, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 774
    const-string v4, "SharedPreferencesImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t rename file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to backup file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 777
    return-void

    .line 780
    :cond_4
    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 780
    .end local v0    # "backupFileExists":Z
    .end local v24    # "needsWrite":Z
    goto :goto_2

    .line 788
    .end local v25    # "existsTime":J
    .end local v27    # "backupExistsTime":J
    .restart local v5    # "existsTime":J
    .restart local v7    # "backupExistsTime":J
    :cond_5
    move-wide/from16 v25, v5

    move-wide/from16 v27, v7

    .line 788
    .end local v5    # "existsTime":J
    .end local v7    # "backupExistsTime":J
    .restart local v25    # "existsTime":J
    .restart local v27    # "backupExistsTime":J
    :cond_6
    :goto_2
    :try_start_2
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v4, v0

    .line 794
    .local v4, "str":Ljava/io/FileOutputStream;
    if-nez v4, :cond_7

    .line 795
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 796
    return-void

    .line 798
    :cond_7
    iget-object v0, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v11, v5

    .line 802
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v13, v5

    .line 806
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 807
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget v5, v1, Landroid/app/SharedPreferencesImpl;->mMode:I

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 814
    :try_start_3
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    move-object v5, v0

    .line 815
    .local v5, "stat":Landroid/system/StructStat;
    iget-object v6, v1, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 816
    :try_start_4
    iget-object v0, v5, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v0, v1, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    .line 817
    iget-wide v7, v5, Landroid/system/StructStat;->st_size:J

    iput-wide v7, v1, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    .line 818
    monitor-exit v6

    .line 821
    .end local v5    # "stat":Landroid/system/StructStat;
    goto :goto_3

    .line 818
    .restart local v5    # "stat":Landroid/system/StructStat;
    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 819
    .end local v5    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v0

    .line 828
    :goto_3
    :try_start_6
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 834
    iget-wide v5, v2, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    iput-wide v5, v1, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    .line 836
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v5}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 849
    sub-long v5, v13, v11

    .line 850
    .local v5, "fsyncDuration":J
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    long-to-int v7, v5

    invoke-virtual {v0, v7}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 851
    iget v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    iput v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    .line 853
    iget v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    rem-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const-wide/16 v7, 0x100

    cmp-long v0, v5, v7

    if-lez v0, :cond_9

    .line 854
    :cond_8
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const-string v7, "SharedPreferencesImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time required to fsync "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 857
    :cond_9
    return-void

    .line 860
    .end local v4    # "str":Ljava/io/FileOutputStream;
    .end local v5    # "fsyncDuration":J
    :catch_1
    move-exception v0

    .line 861
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 858
    :catch_2
    move-exception v0

    .line 859
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 862
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 865
    :goto_4
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 866
    iget-object v0, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_a

    .line 867
    const-string v0, "SharedPreferencesImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t clean up partially-written file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 871
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 358
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 360
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 373
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 375
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/SharedPreferencesImpl;)V

    return-object v0

    .line 375
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 299
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 349
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 351
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 352
    .local v1, "v":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    monitor-exit v0

    return v2

    .line 353
    .end local v1    # "v":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 341
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 343
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 344
    .local v1, "v":Ljava/lang/Float;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    monitor-exit v0

    return v2

    .line 345
    .end local v1    # "v":Ljava/lang/Float;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 325
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 327
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 328
    .local v1, "v":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    monitor-exit v0

    return v2

    .line 329
    .end local v1    # "v":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 333
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 335
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 336
    .local v1, "v":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p2

    :goto_0
    monitor-exit v0

    return-wide v2

    .line 337
    .end local v1    # "v":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 308
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    monitor-exit v0

    return-object v2

    .line 310
    .end local v1    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 318
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 319
    .local v1, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    monitor-exit v0

    return-object v2

    .line 320
    .end local v1    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 263
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v2, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startReloadIfChangedUnexpectedly()V
    .locals 2

    .line 224
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    monitor-exit v0

    return-void

    .line 229
    :cond_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 230
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 270
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
