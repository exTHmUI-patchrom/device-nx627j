.class Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/twilight/TwilightService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    .line 82
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastTwilightState()Lcom/android/server/twilight/TwilightState;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    monitor-exit v0

    return-object v1

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 86
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 88
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$100(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    .end local v1    # "wasEmpty":Z
    :cond_0
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterListener(Lcom/android/server/twilight/TwilightListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;

    .line 98
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 100
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$100(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    .end local v1    # "wasEmpty":Z
    :cond_0
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
