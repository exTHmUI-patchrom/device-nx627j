.class final Landroid/os/Handler$BlockingRunnable;
.super Ljava/lang/Object;
.source "Handler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingRunnable"
.end annotation


# instance fields
.field private mDone:Z

.field private final mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object p1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    .line 888
    return-void
.end method


# virtual methods
.method public postAndWait(Landroid/os/Handler;J)Z
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "timeout"    # J

    .line 903
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 904
    return v1

    .line 907
    :cond_0
    monitor-enter p0

    .line 908
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_3

    .line 909
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    .line 910
    .local v4, "expirationTime":J
    :goto_0
    iget-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    if-nez v0, :cond_2

    .line 911
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 912
    .local v6, "delay":J
    cmp-long v0, v6, v2

    if-gtz v0, :cond_1

    .line 913
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 916
    :cond_1
    :try_start_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    goto :goto_1

    .line 917
    :catch_0
    move-exception v0

    .line 919
    .end local v6    # "delay":J
    :goto_1
    goto :goto_0

    .line 920
    .end local v4    # "expirationTime":J
    :cond_2
    goto :goto_4

    .line 928
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 921
    :cond_3
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    .line 923
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 925
    :goto_3
    goto :goto_2

    .line 924
    :catch_1
    move-exception v0

    goto :goto_3

    .line 928
    :cond_4
    :goto_4
    :try_start_4
    monitor-exit p0

    .line 929
    const/4 v0, 0x1

    return v0

    .line 928
    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 893
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 895
    monitor-enter p0

    .line 896
    :try_start_1
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    .line 897
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 898
    monitor-exit p0

    .line 899
    nop

    .line 900
    return-void

    .line 898
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 895
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 896
    :try_start_2
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    .line 897
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 898
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
