.class public Landroid/os/SynchronousResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SynchronousResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SynchronousResultReceiver$Result;
    }
.end annotation


# instance fields
.field private final mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/os/SynchronousResultReceiver$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/os/Handler;

    invoke-direct {p0, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 45
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v1, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 50
    iput-object v0, p0, Landroid/os/SynchronousResultReceiver;->mName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 45
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 58
    iput-object p1, p0, Landroid/os/SynchronousResultReceiver;->mName:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;
    .locals 5
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 79
    .local v0, "deadline":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 81
    :try_start_0
    iget-object v2, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SynchronousResultReceiver$Result;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 85
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    sub-long/2addr p1, v3

    .line 89
    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 82
    :catch_1
    move-exception v2

    .line 84
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Error receiving response"

    invoke-direct {v3, v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 91
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_0
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/os/SynchronousResultReceiver;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Landroid/os/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Landroid/os/SynchronousResultReceiver$Result;

    invoke-direct {v1, p1, p2}, Landroid/os/SynchronousResultReceiver$Result;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
