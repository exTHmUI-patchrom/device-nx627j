.class Landroid/os/TestLooperManager$LooperHolder;
.super Ljava/lang/Object;
.source "TestLooperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TestLooperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperHolder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/TestLooperManager;


# direct methods
.method private constructor <init>(Landroid/os/TestLooperManager;)V
    .locals 0

    .line 177
    iput-object p1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/TestLooperManager;Landroid/os/TestLooperManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/TestLooperManager;
    .param p2, "x1"    # Landroid/os/TestLooperManager$1;

    .line 177
    invoke-direct {p0, p1}, Landroid/os/TestLooperManager$LooperHolder;-><init>(Landroid/os/TestLooperManager;)V

    return-void
.end method

.method private processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    .locals 2
    .param p1, "mex"    # Landroid/os/TestLooperManager$MessageExecution;

    .line 199
    monitor-enter p1

    .line 201
    :try_start_0
    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->access$200(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->access$200(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 202
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/TestLooperManager$MessageExecution;->access$302(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {p1, v0}, Landroid/os/TestLooperManager$MessageExecution;->access$302(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 206
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 207
    monitor-exit p1

    .line 208
    return-void

    .line 207
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 180
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/TestLooperManager;->access$402(Landroid/os/TestLooperManager;Z)Z

    .line 182
    iget-object v1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :goto_0
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-static {v0}, Landroid/os/TestLooperManager;->access$500(Landroid/os/TestLooperManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    :try_start_1
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-static {v0}, Landroid/os/TestLooperManager;->access$600(Landroid/os/TestLooperManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TestLooperManager$MessageExecution;

    .line 187
    .local v0, "take":Landroid/os/TestLooperManager$MessageExecution;
    invoke-static {v0}, Landroid/os/TestLooperManager$MessageExecution;->access$200(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0, v0}, Landroid/os/TestLooperManager$LooperHolder;->processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "take":Landroid/os/TestLooperManager$MessageExecution;
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    :cond_0
    :goto_1
    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    monitor-enter v1

    .line 194
    :try_start_2
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/TestLooperManager;->access$402(Landroid/os/TestLooperManager;Z)Z

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 183
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
