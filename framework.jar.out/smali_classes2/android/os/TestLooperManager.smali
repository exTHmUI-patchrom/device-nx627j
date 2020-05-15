.class public Landroid/os/TestLooperManager;
.super Ljava/lang/Object;
.source "TestLooperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TestLooperManager$MessageExecution;,
        Landroid/os/TestLooperManager$LooperHolder;
    }
.end annotation


# static fields
.field private static final sHeldLoopers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/TestLooperManager$MessageExecution;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private mLooperBlocked:Z

.field private final mQueue:Landroid/os/MessageQueue;

.field private mReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 46
    sget-object v0, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    sget-object v1, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iput-object p1, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    .line 53
    iget-object v0, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/os/TestLooperManager$LooperHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/os/TestLooperManager$LooperHolder;-><init>(Landroid/os/TestLooperManager;Landroid/os/TestLooperManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void

    .line 48
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TestLooperManager already held for this looper"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$402(Landroid/os/TestLooperManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/os/TestLooperManager;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Landroid/os/TestLooperManager;->mLooperBlocked:Z

    return p1
.end method

.method static synthetic access$500(Landroid/os/TestLooperManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/TestLooperManager;

    .line 31
    iget-boolean v0, p0, Landroid/os/TestLooperManager;->mReleased:Z

    return v0
.end method

.method static synthetic access$600(Landroid/os/TestLooperManager;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Landroid/os/TestLooperManager;

    .line 31
    iget-object v0, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private checkReleased()V
    .locals 2

    .line 172
    iget-boolean v0, p0, Landroid/os/TestLooperManager;->mReleased:Z

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "release() has already be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 117
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 118
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 122
    :cond_0
    new-instance v0, Landroid/os/TestLooperManager$MessageExecution;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/TestLooperManager$MessageExecution;-><init>(Landroid/os/TestLooperManager$1;)V

    .line 123
    .local v0, "execution":Landroid/os/TestLooperManager$MessageExecution;
    invoke-static {v0, p1}, Landroid/os/TestLooperManager$MessageExecution;->access$202(Landroid/os/TestLooperManager$MessageExecution;Landroid/os/Message;)Landroid/os/Message;

    .line 124
    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 131
    :goto_0
    :try_start_2
    invoke-static {v0}, Landroid/os/TestLooperManager$MessageExecution;->access$300(Landroid/os/TestLooperManager$MessageExecution;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 134
    monitor-exit v0

    .line 136
    .end local v0    # "execution":Landroid/os/TestLooperManager$MessageExecution;
    :goto_1
    return-void

    .line 132
    .restart local v0    # "execution":Landroid/os/TestLooperManager$MessageExecution;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Landroid/os/TestLooperManager$MessageExecution;->access$300(Landroid/os/TestLooperManager$MessageExecution;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getMessageQueue()Landroid/os/MessageQueue;
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 63
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-virtual {p0}, Landroid/os/TestLooperManager;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    return-object v0
.end method

.method public hasMessages(Landroid/os/Handler;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "what"    # I

    .line 155
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 156
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1, p3, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasMessages(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "r"    # Ljava/lang/Runnable;

    .line 167
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 168
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1, p3, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()Landroid/os/Message;
    .locals 1

    .line 82
    :goto_0
    iget-boolean v0, p0, Landroid/os/TestLooperManager;->mLooperBlocked:Z

    if-nez v0, :cond_0

    .line 83
    monitor-enter p0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    .line 88
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 90
    :cond_0
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 91
    iget-object v0, p0, Landroid/os/TestLooperManager;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 143
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 144
    invoke-virtual {p1}, Landroid/os/Message;->recycleUnchecked()V

    .line 145
    return-void
.end method

.method public release()V
    .locals 3

    .line 100
    sget-object v0, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Landroid/os/TestLooperManager;->sHeldLoopers:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/os/TestLooperManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-direct {p0}, Landroid/os/TestLooperManager;->checkReleased()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/TestLooperManager;->mReleased:Z

    .line 105
    iget-object v0, p0, Landroid/os/TestLooperManager;->mExecuteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Landroid/os/TestLooperManager$MessageExecution;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/TestLooperManager$MessageExecution;-><init>(Landroid/os/TestLooperManager$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 106
    return-void

    .line 102
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
