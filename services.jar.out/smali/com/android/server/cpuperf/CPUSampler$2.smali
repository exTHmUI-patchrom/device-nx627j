.class Lcom/android/server/cpuperf/CPUSampler$2;
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

    .line 90
    iput-object p1, p0, Lcom/android/server/cpuperf/CPUSampler$2;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "sampler_open"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 95
    .local v1, "state":Z
    const-string/jumbo v2, "sampler_delay"

    const/16 v3, 0x3c

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    .line 96
    .local v2, "sample_delay":I
    const-string v3, "debug.nubia.cpu_sample_delay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "cpusampler_debug"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/server/cpuperf/CPUSampler$2;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    const-string v4, "debug.nubia.cpu_sample_delay"

    const v5, 0xea60

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/cpuperf/CPUSampler;->access$502(Lcom/android/server/cpuperf/CPUSampler;I)I

    .line 101
    iget-object v3, p0, Lcom/android/server/cpuperf/CPUSampler$2;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v3}, Lcom/android/server/cpuperf/CPUSampler;->access$600(Lcom/android/server/cpuperf/CPUSampler;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cpuperf/CPUSampler$2;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v4}, Lcom/android/server/cpuperf/CPUSampler;->access$400(Lcom/android/server/cpuperf/CPUSampler;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/android/server/cpuperf/CPUSampler$2;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v3}, Lcom/android/server/cpuperf/CPUSampler;->access$600(Lcom/android/server/cpuperf/CPUSampler;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cpuperf/CPUSampler$2;->this$0:Lcom/android/server/cpuperf/CPUSampler;

    invoke-static {v4}, Lcom/android/server/cpuperf/CPUSampler;->access$400(Lcom/android/server/cpuperf/CPUSampler;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    :cond_1
    :goto_0
    return-void
.end method
