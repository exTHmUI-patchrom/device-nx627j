.class Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;
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
    name = "ResumedAppDieRunnable"
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

    .line 388
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p2, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->mPackageName:Ljava/lang/String;

    .line 390
    iput-object p3, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->mActivityName:Ljava/lang/String;

    .line 391
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "fullActivityName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 398
    .local v2, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    iget v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 399
    goto :goto_0

    .line 401
    :cond_0
    iget-object v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 422
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_1
    goto :goto_0

    .line 402
    .restart local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 405
    const-string v1, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResumedAppDieRunnable, tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_3
    :try_start_0
    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->access$500(Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_2

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v3}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    const-string v3, "PerformanceController"

    const-string/jumbo v4, "unable to unlinkToDeath"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 418
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceController$ResumedAppDieRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v3}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/cpuperf/QComBoostController;->adjustPerformance(Ljava/util/ArrayList;)V

    .line 420
    :cond_5
    return-void

    .line 423
    .end local v2    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_6
    return-void
.end method
