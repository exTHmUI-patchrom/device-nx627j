.class Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;
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
    name = "AdjustPerformanceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cpuperf/PerformanceController;


# direct methods
.method private constructor <init>(Lcom/android/server/cpuperf/PerformanceController;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cpuperf/PerformanceController;Lcom/android/server/cpuperf/PerformanceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/cpuperf/PerformanceController;
    .param p2, "x1"    # Lcom/android/server/cpuperf/PerformanceController$1;

    .line 306
    invoke-direct {p0, p1}, Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;-><init>(Lcom/android/server/cpuperf/PerformanceController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cpuperf/PerformanceController$AdjustPerformanceRunnable;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v1}, Lcom/android/server/cpuperf/PerformanceController;->access$300(Lcom/android/server/cpuperf/PerformanceController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cpuperf/QComBoostController;->adjustPerformance(Ljava/util/ArrayList;)V

    .line 311
    :cond_0
    return-void
.end method
