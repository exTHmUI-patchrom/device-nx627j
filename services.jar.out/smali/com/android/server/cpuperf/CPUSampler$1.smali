.class Lcom/android/server/cpuperf/CPUSampler$1;
.super Landroid/content/BroadcastReceiver;
.source "CPUSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cpuperf/CPUSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cpuperf/CPUSampler;


# direct methods
.method constructor <init>(Lcom/android/server/cpuperf/CPUSampler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cpuperf/CPUSampler;

    .line 75
    iput-object p1, p0, Lcom/android/server/cpuperf/CPUSampler$1;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cpuperf/CPUSampler$1;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v1}, Lcom/android/server/cpuperf/CPUSampler;->access$700(Lcom/android/server/cpuperf/CPUSampler;)Z

    move-result v1

    .line 80
    .local v1, "state":Z
    const-string/jumbo v2, "nblog.state_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/server/cpuperf/CPUSampler$1;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v2}, Lcom/android/server/cpuperf/CPUSampler;->access$600(Lcom/android/server/cpuperf/CPUSampler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cpuperf/CPUSampler$1;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v3}, Lcom/android/server/cpuperf/CPUSampler;->access$400(Lcom/android/server/cpuperf/CPUSampler;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/server/cpuperf/CPUSampler$1;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v2}, Lcom/android/server/cpuperf/CPUSampler;->access$600(Lcom/android/server/cpuperf/CPUSampler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cpuperf/CPUSampler$1;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v3}, Lcom/android/server/cpuperf/CPUSampler;->access$400(Lcom/android/server/cpuperf/CPUSampler;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    :cond_1
    :goto_0
    return-void
.end method
