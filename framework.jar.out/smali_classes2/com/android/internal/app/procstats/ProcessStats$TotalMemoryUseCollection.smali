.class public Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TotalMemoryUseCollection"
.end annotation


# instance fields
.field public hasSwappedOutPss:Z

.field final memStates:[I

.field public processStatePss:[J

.field public processStateSamples:[I

.field public processStateTime:[J

.field public processStateWeight:[D

.field final screenStates:[I

.field public sysMemCachedWeight:D

.field public sysMemFreeWeight:D

.field public sysMemKernelWeight:D

.field public sysMemNativeWeight:D

.field public sysMemSamples:I

.field public sysMemUsage:[J

.field public sysMemZRamWeight:D

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I)V
    .locals 2
    .param p1, "_screenStates"    # [I
    .param p2, "_memStates"    # [I

    .line 1933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1939
    const/16 v0, 0xe

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    .line 1940
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    .line 1941
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    .line 1942
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    .line 1943
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    .line 1934
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    .line 1935
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    .line 1936
    return-void
.end method
