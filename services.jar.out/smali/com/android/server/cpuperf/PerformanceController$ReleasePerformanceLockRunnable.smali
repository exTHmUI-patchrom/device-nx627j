.class Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;
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
    name = "ReleasePerformanceLockRunnable"
.end annotation


# instance fields
.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/cpuperf/PerformanceController;


# direct methods
.method public constructor <init>(Lcom/android/server/cpuperf/PerformanceController;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;

    .line 317
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p2, p0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    .line 319
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 323
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

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

    .line 324
    .local v1, "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->access$500(Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;->mToken:Landroid/os/IBinder;

    if-ne v2, v3, :cond_3

    .line 325
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "PerformanceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReleasePerformanceLockRunnable, tag="

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

    .line 333
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;->access$500(Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    const-string v2, "PerformanceController"

    const-string/jumbo v3, "unable to unlinkToDeath"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$ReleasePerformanceLockRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/cpuperf/QComBoostController;->adjustPerformance(Ljava/util/ArrayList;)V

    .line 343
    :cond_2
    return-void

    .line 345
    .end local v1    # "pl":Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;
    :cond_3
    goto/16 :goto_0

    .line 346
    :cond_4
    return-void
.end method
