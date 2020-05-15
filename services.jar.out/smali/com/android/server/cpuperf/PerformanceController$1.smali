.class Lcom/android/server/cpuperf/PerformanceController$1;
.super Landroid/content/BroadcastReceiver;
.source "PerformanceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cpuperf/PerformanceController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cpuperf/PerformanceController;


# direct methods
.method constructor <init>(Lcom/android/server/cpuperf/PerformanceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cpuperf/PerformanceController;

    .line 59
    iput-object p1, p0, Lcom/android/server/cpuperf/PerformanceController$1;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 61
    const-string v0, "PerformanceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " about to call reinit data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/server/cpuperf/PerformanceController$1;->this$0:Lcom/android/server/cpuperf/PerformanceController;

    invoke-static {v0}, Lcom/android/server/cpuperf/PerformanceController;->access$100(Lcom/android/server/cpuperf/PerformanceController;)Lcom/android/server/cpuperf/QComBoostController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cpuperf/QComBoostController;->reinitData()V

    .line 63
    return-void
.end method
