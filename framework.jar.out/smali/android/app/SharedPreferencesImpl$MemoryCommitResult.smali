.class Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryCommitResult"
.end annotation


# instance fields
.field final keysModified:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mapToWriteToDisk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final memoryStateGeneration:J

.field wasWritten:Z

.field volatile writeToDiskResult:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWritingToDiskLock"
    .end annotation
.end field

.field final writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(JLjava/util/List;Ljava/util/Set;Ljava/util/Map;)V
    .locals 2
    .param p1, "memoryStateGeneration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 394
    .local p3, "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .local p5, "mapToWriteToDisk":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    .line 390
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->wasWritten:Z

    .line 395
    iput-wide p1, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    .line 396
    iput-object p3, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    .line 397
    iput-object p4, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    .line 398
    iput-object p5, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    .line 399
    return-void
.end method

.method synthetic constructor <init>(JLjava/util/List;Ljava/util/Set;Ljava/util/Map;Landroid/app/SharedPreferencesImpl$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/List;
    .param p4, "x2"    # Ljava/util/Set;
    .param p5, "x3"    # Ljava/util/Map;
    .param p6, "x4"    # Landroid/app/SharedPreferencesImpl$1;

    .line 381
    invoke-direct/range {p0 .. p5}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;-><init>(JLjava/util/List;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method setDiskWriteResult(ZZ)V
    .locals 1
    .param p1, "wasWritten"    # Z
    .param p2, "result"    # Z

    .line 402
    iput-boolean p1, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->wasWritten:Z

    .line 403
    iput-boolean p2, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    .line 404
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 405
    return-void
.end method
