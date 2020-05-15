.class Landroid/os/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
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
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/AsyncTask;

    .line 345
    .local p0, "this":Landroid/os/AsyncTask$3;, "Landroid/os/AsyncTask$3;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .line 349
    .local p0, "this":Landroid/os/AsyncTask$3;, "Landroid/os/AsyncTask$3;"
    :try_start_0
    iget-object v0, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    invoke-virtual {p0}, Landroid/os/AsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/AsyncTask;->access$500(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/AsyncTask;->access$500(Landroid/os/AsyncTask;Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_1

    .line 352
    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 354
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "An error occurred while executing doInBackground()"

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 350
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 358
    :goto_1
    return-void
.end method
