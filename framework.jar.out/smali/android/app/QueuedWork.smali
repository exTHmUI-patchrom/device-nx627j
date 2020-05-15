.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QueuedWork$QueuedWorkHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELAY:J = 0x64L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_WAIT_TIME_MILLIS:J = 0x200L

.field private static mNumWaits:I

.field private static final mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sCanDelay:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sFinishers:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sProcessingWork:Ljava/lang/Object;

.field private static final sWork:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-class v0, Landroid/app/QueuedWork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    .line 77
    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 90
    new-instance v0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    sput-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 92
    const/4 v0, 0x0

    sput v0, Landroid/app/QueuedWork;->mNumWaits:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 49
    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V

    return-void
.end method

.method public static addFinisher(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .line 125
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 4

    .line 100
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "queued-work-looper"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 104
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v2, Landroid/app/QueuedWork$QueuedWorkHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/QueuedWork$QueuedWorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 108
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static hasPendingWork()Z
    .locals 2

    .line 233
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static processPendingWork()V
    .locals 7

    .line 239
    const-wide/16 v0, 0x0

    .line 245
    .local v0, "startTime":J
    sget-object v2, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    monitor-enter v2

    .line 248
    :try_start_0
    sget-object v3, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    :try_start_1
    sget-object v4, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 250
    .local v4, "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    sget-object v5, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 253
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 257
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 258
    .local v5, "w":Ljava/lang/Runnable;
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 259
    .end local v5    # "w":Ljava/lang/Runnable;
    goto :goto_0

    .line 266
    .end local v4    # "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 267
    return-void

    .line 254
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 266
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public static queue(Ljava/lang/Runnable;Z)V
    .locals 5
    .param p0, "work"    # Ljava/lang/Runnable;
    .param p1, "shouldDelay"    # Z

    .line 216
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 218
    .local v0, "handler":Landroid/os/Handler;
    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    sget-object v2, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    sget-boolean v3, Landroid/app/QueuedWork;->sCanDelay:Z

    if-eqz v3, :cond_0

    .line 222
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    :goto_0
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static removeFinisher(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .line 136
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static waitToFinish()V
    .locals 11

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 151
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 153
    .local v2, "hadMessages":Z
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 155
    .local v3, "handler":Landroid/os/Handler;
    sget-object v4, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 156
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    :cond_0
    const/4 v6, 0x0

    sput-boolean v6, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 168
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 170
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 172
    .local v4, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 174
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 175
    nop

    .line 181
    :goto_0
    :try_start_2
    sget-object v6, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 182
    :try_start_3
    sget-object v7, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    .line 183
    .local v7, "finisher":Ljava/lang/Runnable;
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    if-nez v7, :cond_4

    .line 186
    nop

    .line 192
    .end local v7    # "finisher":Ljava/lang/Runnable;
    sput-boolean v5, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 193
    nop

    .line 195
    sget-object v6, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 196
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 198
    .local v7, "waitTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_1

    if-eqz v2, :cond_3

    .line 199
    :cond_1
    sget-object v9, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 200
    sget v9, Landroid/app/QueuedWork;->mNumWaits:I

    add-int/2addr v9, v5

    sput v9, Landroid/app/QueuedWork;->mNumWaits:I

    .line 202
    sget v5, Landroid/app/QueuedWork;->mNumWaits:I

    rem-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2

    const-wide/16 v9, 0x200

    cmp-long v5, v7, v9

    if-lez v5, :cond_3

    .line 203
    :cond_2
    sget-object v5, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    sget-object v9, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "waited: "

    invoke-virtual {v5, v9, v10}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 206
    .end local v7    # "waitTime":J
    :cond_3
    monitor-exit v6

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 189
    .local v7, "finisher":Ljava/lang/Runnable;
    :cond_4
    :try_start_5
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 190
    .end local v7    # "finisher":Ljava/lang/Runnable;
    goto :goto_0

    .line 183
    :catchall_1
    move-exception v7

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 192
    :catchall_2
    move-exception v6

    sput-boolean v5, Landroid/app/QueuedWork;->sCanDelay:Z

    throw v6

    .line 174
    :catchall_3
    move-exception v5

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 168
    .end local v4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_4
    move-exception v5

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v5
.end method
