.class public abstract Landroid/content/AsyncTaskLoader;
.super Landroid/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/Loader<",
        "TD;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Landroid/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 146
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 137
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 147
    iput-object p2, p0, Landroid/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 148
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    .line 334
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    return-void
.end method

.method dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-ne v0, p1, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->rollbackContentChanged()V

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 254
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->deliverCancellation()V

    .line 255
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 257
    :cond_0
    return-void
.end method

.method dispatchOnLoadComplete(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncTaskLoader<",
            "TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .line 260
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eq v0, p1, :cond_0

    .line 262
    invoke-virtual {p0, p1, p2}, Landroid/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->isAbandoned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->commitContentChanged()V

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 272
    invoke-virtual {p0, p2}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 275
    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 366
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 369
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 373
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 375
    :cond_1
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 376
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    invoke-static {v0, v1, p3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 378
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 379
    invoke-static {v0, v1, v2, v3, p3}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 381
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 383
    :cond_2
    return-void
.end method

.method executePendingTask()V
    .locals 8

    .line 224
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 227
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    :cond_0
    iget-wide v0, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 231
    .local v0, "now":J
    iget-wide v2, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 236
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 237
    iget-object v2, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-wide v4, p0, Landroid/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v6, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 238
    return-void

    .line 242
    .end local v0    # "now":J
    :cond_1
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    :cond_2
    return-void
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 1

    .line 344
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .locals 4

    .line 176
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 177
    iget-boolean v0, p0, Landroid/content/AsyncTaskLoader;->mStarted:Z

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/AsyncTaskLoader;->mContentChanged:Z

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iput-boolean v1, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 187
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    :cond_1
    iput-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 190
    return v1

    .line 191
    :cond_2
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iput-boolean v1, v0, Landroid/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 196
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iput-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 198
    return v1

    .line 200
    :cond_3
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, v1}, Landroid/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z

    move-result v0

    .line 202
    .local v0, "cancelled":Z
    if-eqz v0, :cond_4

    .line 203
    iget-object v1, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    iput-object v1, p0, Landroid/content/AsyncTaskLoader;->mCancellingTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 204
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 206
    :cond_4
    iput-object v2, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 207
    return v0

    .line 210
    .end local v0    # "cancelled":Z
    :cond_5
    return v1
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .line 166
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0}, Landroid/content/Loader;->onForceLoad()V

    .line 167
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->cancelLoad()Z

    .line 168
    new-instance v0, Landroid/content/AsyncTaskLoader$LoadTask;

    invoke-direct {v0, p0}, Landroid/content/AsyncTaskLoader$LoadTask;-><init>(Landroid/content/AsyncTaskLoader;)V

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 170
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 171
    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 319
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 2
    .param p1, "delayMS"    # J

    .line 158
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iput-wide p1, p0, Landroid/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 159
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 162
    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1

    .line 358
    .local p0, "this":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/content/AsyncTaskLoader;->mTask:Landroid/content/AsyncTaskLoader$LoadTask;

    .line 359
    .local v0, "task":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader$LoadTask;->waitForLoader()V

    .line 362
    :cond_0
    return-void
.end method
