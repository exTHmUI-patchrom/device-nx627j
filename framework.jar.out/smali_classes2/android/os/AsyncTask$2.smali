.class Landroid/os/AsyncTask$2;
.super Landroid/os/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/AsyncTask;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;)V
    .locals 1
    .param p1, "this$0"    # Landroid/os/AsyncTask;

    .line 326
    .local p0, "this":Landroid/os/AsyncTask$2;, "Landroid/os/AsyncTask$2;"
    iput-object p1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/AsyncTask$WorkerRunnable;-><init>(Landroid/os/AsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 328
    .local p0, "this":Landroid/os/AsyncTask$2;, "Landroid/os/AsyncTask$2;"
    iget-object v0, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    invoke-static {v0}, Landroid/os/AsyncTask;->access$200(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 333
    iget-object v2, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    iget-object v3, p0, Landroid/os/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 334
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    invoke-static {v1, v0}, Landroid/os/AsyncTask;->access$400(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    nop

    .line 341
    return-object v0

    .line 339
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 335
    :catch_0
    move-exception v2

    .line 336
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    invoke-static {v3}, Landroid/os/AsyncTask;->access$300(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 337
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    invoke-static {v2, v0}, Landroid/os/AsyncTask;->access$400(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method
