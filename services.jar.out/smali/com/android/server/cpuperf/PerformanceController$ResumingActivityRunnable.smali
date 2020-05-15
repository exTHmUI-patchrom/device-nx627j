.class Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;
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
    name = "ResumingActivityRunnable"
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

    .line 430
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p2, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    .line 432
    iput-object p3, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->mActivityName:Ljava/lang/String;

    .line 433
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 437
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const-string v0, "PerformanceController"

    const-string v1, "ResumingActivityRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    const/4 v0, 0x0

    .line 441
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/cpuperf/QComBoostController;->getAppLockParameterTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_1
    if-eqz v0, :cond_3

    .line 445
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 446
    .local v2, "token":Landroid/os/Binder;
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$400(Lcom/android/server/cpuperf/PerformanceController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    const-string v1, "PerformanceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResumingActivityRunnable, add lock for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/cpuperf/PerformanceController;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 452
    .end local v2    # "token":Landroid/os/Binder;
    :cond_3
    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$200(Lcom/android/server/cpuperf/PerformanceController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$ResumingActivityRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v2}, Lcom/android/server/cpuperf/PerformanceController;->access$600(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;

    move-result-object v2

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    return-void
.end method
