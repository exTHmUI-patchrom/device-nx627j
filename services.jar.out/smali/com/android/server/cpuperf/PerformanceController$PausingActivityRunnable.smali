.class Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;
.super Ljava/lang/Object;
.source "PerformanceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cpuperf/PerformanceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PausingActivityRunnable"
.end annotation


# instance fields
.field mActivityName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/cpuperf/PerformanceController;


# direct methods
.method public constructor <init>(Lcom/android/server/cpuperf/PerformanceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .line 460
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p2, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->mPackageName:Ljava/lang/String;

    .line 462
    iput-object p3, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->mActivityName:Ljava/lang/String;

    .line 463
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 467
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "PerformanceController"

    const-string v1, "PausingActivityRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 472
    .local v2, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    iget v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    .line 474
    goto :goto_0

    .line 476
    :cond_1
    iget-object v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 484
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_2
    goto :goto_0

    .line 477
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 478
    const-string v1, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PausingActivityRunnable, remove lock for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_4
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->access$500(Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/cpuperf/PerformanceController;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 482
    nop

    .line 486
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_5
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$200(Lcom/android/server/cpuperf/PerformanceController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$PausingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$600(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    return-void
.end method
