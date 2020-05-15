.class Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;
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
    name = "BinderDeathRunnable"
.end annotation


# instance fields
.field mLock:Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

.field final synthetic this$0:Lcom/android/server/cpuperf/PerformanceController;


# direct methods
.method public constructor <init>(Lcom/android/server/cpuperf/PerformanceController;Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;)V
    .locals 0
    .param p2, "lock"    # Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 352
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;->mLock:Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 354
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 358
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 359
    .local v1, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;->mLock:Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    if-ne v1, v2, :cond_3

    .line 360
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "PerformanceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BinderDeathRunnable, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->access$500(Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    goto :goto_1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    const-string v2, "PerformanceController"

    const-string/jumbo v3, "unable to unlinkToDeath"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cpuperf/QComBoostController;->adjustPerformance(Ljava/util/ArrayList;)V

    .line 378
    :cond_2
    return-void

    .line 380
    .end local v1    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_3
    goto :goto_0

    .line 381
    :cond_4
    return-void
.end method
