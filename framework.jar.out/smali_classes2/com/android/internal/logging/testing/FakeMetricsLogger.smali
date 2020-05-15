.class public Lcom/android/internal/logging/testing/FakeMetricsLogger;
.super Lcom/android/internal/logging/MetricsLogger;
.source "FakeMetricsLogger.java"


# instance fields
.field private logs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public getLogs()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 29
    return-void
.end method

.method protected saveLog([Ljava/lang/Object;)V
    .locals 2
    .param p1, "rep"    # [Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, p1}, Landroid/metrics/LogMaker;-><init>([Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method
