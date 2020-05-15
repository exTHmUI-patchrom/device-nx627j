.class Lcom/android/server/cpuperf/PerformanceController$BinderDeathCallback;
.super Ljava/lang/Object;
.source "PerformanceController.java"

# interfaces
.implements Lcom/android/server/cpuperf/PerformanceController$PerformanceLock$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cpuperf/PerformanceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderDeathCallback"
.end annotation


# instance fields
.field mLock:Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

.field final synthetic this$0:Lcom/android/server/cpuperf/PerformanceController;


# direct methods
.method public constructor <init>(Lcom/android/server/cpuperf/PerformanceController;Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;)V
    .locals 0
    .param p2, "lock"    # Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 209
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathCallback;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathCallback;->mLock:Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    .line 211
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathCallback;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$200(Lcom/android/server/cpuperf/PerformanceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;

    iget-object v2, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathCallback;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    iget-object v3, p0, Lcom/android/server/cpuperf/PerformanceController$BinderDeathCallback;->mLock:Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;

    invoke-direct {v1, v2, v3}, Lcom/android/server/cpuperf/PerformanceController$BinderDeathRunnable;-><init>(Lcom/android/server/cpuperf/PerformanceController;Lcom/android/server/cpuperf/PerformanceController$PerformanceLock;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method
