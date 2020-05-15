.class public abstract Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.super Ljava/lang/Object;
.source "KernelUidCpuTimeReaderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final DEFAULT_THROTTLE_INTERVAL:J = 0x2710L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLastTimeReadMs:J

.field private mThrottleInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    .local p0, "this":Lcom/android/internal/os/KernelUidCpuTimeReaderBase;, "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->TAG:Ljava/lang/String;

    .line 35
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mLastTimeReadMs:J

    .line 36
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mThrottleInterval:J

    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/android/internal/os/KernelUidCpuTimeReaderBase;, "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<TT;>;"
    .local p1, "cb":Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;, "TT;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mLastTimeReadMs:J

    iget-wide v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mThrottleInterval:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mLastTimeReadMs:J

    .line 51
    return-void
.end method

.method protected abstract readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setThrottleInterval(J)V
    .locals 2
    .param p1, "throttleInterval"    # J

    .line 56
    .local p0, "this":Lcom/android/internal/os/KernelUidCpuTimeReaderBase;, "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 57
    iput-wide p1, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mThrottleInterval:J

    .line 59
    :cond_0
    return-void
.end method
