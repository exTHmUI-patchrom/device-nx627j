.class Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;
.super Landroid/os/AsyncTask;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRunnerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/filterfw/core/SyncRunner;",
        "Ljava/lang/Void;",
        "Landroid/filterfw/core/AsyncRunner$RunnerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRunnerTask"


# instance fields
.field final synthetic this$0:Landroid/filterfw/core/AsyncRunner;


# direct methods
.method private constructor <init>(Landroid/filterfw/core/AsyncRunner;)V
    .locals 0

    .line 43
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/filterfw/core/AsyncRunner;
    .param p2, "x1"    # Landroid/filterfw/core/AsyncRunner$1;

    .line 43
    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;
    .locals 6
    .param p1, "runner"    # [Landroid/filterfw/core/SyncRunner;

    .line 49
    new-instance v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V

    .line 51
    .local v0, "result":Landroid/filterfw/core/AsyncRunner$RunnerResult;
    const/4 v1, 0x6

    :try_start_0
    array-length v2, p1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_6

    .line 55
    const/4 v2, 0x0

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    .line 58
    iget-object v4, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v4}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "AsyncRunnerTask"

    const-string v5, "Starting background graph processing."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iget-object v4, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/AsyncRunner;->activateGlContext()Z

    .line 61
    iget-object v4, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v4}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "AsyncRunnerTask"

    const-string v5, "Preparing filter graph for processing."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/filterfw/core/SyncRunner;->beginProcessing()V

    .line 64
    iget-object v4, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v4}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "AsyncRunnerTask"

    const-string v5, "Running graph."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_2
    iput v3, v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 68
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v4, v3, :cond_4

    .line 69
    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    move-result v4

    if-nez v4, :cond_3

    .line 70
    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    move-result v4

    iput v4, v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 71
    iget v4, v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 72
    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/filterfw/core/SyncRunner;->waitUntilWake()V

    .line 73
    iput v3, v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 80
    const/4 v2, 0x5

    iput v2, v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 85
    :cond_5
    goto :goto_1

    .line 52
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "More than one runner received!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "exception":Ljava/lang/Exception;
    iput-object v2, v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    .line 84
    iput v1, v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 89
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/AsyncRunner;->deactivateGlContext()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    goto :goto_2

    .line 90
    :catch_1
    move-exception v2

    .line 91
    .restart local v2    # "exception":Ljava/lang/Exception;
    iput-object v2, v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    .line 92
    iput v1, v0, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 95
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "AsyncRunnerTask"

    const-string v2, "Done with background graph processing."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_7
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, [Landroid/filterfw/core/SyncRunner;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .locals 0
    .param p1, "result"    # Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .line 101
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    .line 102
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method

.method protected onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .locals 4
    .param p1, "result"    # Landroid/filterfw/core/AsyncRunner$RunnerResult;

    .line 106
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AsyncRunnerTask"

    const-string v1, "Starting post-execute."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/filterfw/core/AsyncRunner;->access$200(Landroid/filterfw/core/AsyncRunner;Z)V

    .line 108
    const/4 v0, 0x5

    if-nez p1, :cond_1

    .line 110
    new-instance v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V

    move-object p1, v1

    .line 111
    iput v0, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 113
    :cond_1
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    iget-object v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    invoke-static {v1, v2}, Landroid/filterfw/core/AsyncRunner;->access$300(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    .line 114
    iget v1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    const/4 v2, 0x6

    if-eq v1, v0, :cond_2

    iget v0, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v0, v2, :cond_4

    .line 115
    :cond_2
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AsyncRunnerTask"

    const-string v1, "Closing filters."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$400(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/SyncRunner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/SyncRunner;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "exception":Ljava/lang/Exception;
    iput v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 120
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v1, v0}, Landroid/filterfw/core/AsyncRunner;->access$300(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    .line 123
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$500(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 124
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AsyncRunnerTask"

    const-string v1, "Calling graph done callback."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_5
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$500(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v0

    iget v1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    invoke-interface {v0, v1}, Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;->onRunnerDone(I)V

    .line 127
    :cond_6
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "AsyncRunnerTask"

    const-string v1, "Completed post-execute."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_7
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method
