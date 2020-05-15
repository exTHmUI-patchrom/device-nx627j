.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static DO_NOT_CRASH:Z = false

.field private static final TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private mBlocked:Z

.field private mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontSyncBarrier:I

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 589
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/MessageQueue;->DO_NOT_CRASH:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "quitAllowed"    # Z

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 466
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/MessageQueue;->mFrontSyncBarrier:I

    .line 71
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 72
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 73
    return-void
.end method

.method private dispatchEvents(II)I
    .locals 7
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 270
    .local v0, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v0, :cond_0

    .line 271
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 274
    :cond_0
    iget v1, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 275
    .local v1, "oldWatchedEvents":I
    and-int/2addr p2, v1

    .line 276
    if-nez p2, :cond_1

    .line 277
    monitor-exit p0

    return v1

    .line 280
    :cond_1
    iget-object v2, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 281
    .local v2, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v3, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 282
    .local v3, "seq":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 285
    iget-object v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v2, v4, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v4

    .line 287
    .local v4, "newWatchedEvents":I
    if-eqz v4, :cond_2

    .line 288
    or-int/lit8 v4, v4, 0x4

    .line 293
    :cond_2
    if-eq v4, v1, :cond_4

    .line 294
    monitor-enter p0

    .line 295
    :try_start_1
    iget-object v5, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 296
    .local v5, "index":I
    if-ltz v5, :cond_3

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    iget v6, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v3, :cond_3

    .line 298
    iput v4, v0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 299
    if-nez v4, :cond_3

    .line 300
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 303
    .end local v5    # "index":I
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 307
    :cond_4
    :goto_0
    return v4

    .line 282
    .end local v0    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .end local v1    # "oldWatchedEvents":I
    .end local v2    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .end local v3    # "seq":I
    .end local v4    # "newWatchedEvents":I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private dispose()V
    .locals 4

    .line 87
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 88
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 89
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 91
    :cond_0
    return-void
.end method

.method private isPollingLocked()Z
    .locals 2

    .line 161
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsPolling(J)Z
.end method

.method private native nativePollOnce(JI)V
.end method

.method private static native nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native nativeWake(J)V
.end method

.method private postSyncBarrier(J)I
    .locals 6
    .param p1, "when"    # J

    .line 513
    monitor-enter p0

    .line 514
    :try_start_0
    iget v0, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 515
    .local v0, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 516
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->markInUse()V

    .line 517
    iput-wide p1, v1, Landroid/os/Message;->when:J

    .line 518
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 520
    const/4 v2, 0x0

    .line 521
    .local v2, "prev":Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 522
    .local v3, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 523
    :goto_0
    if-eqz v3, :cond_0

    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 524
    move-object v2, v3

    .line 525
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_0

    .line 528
    :cond_0
    if-eqz v2, :cond_1

    .line 529
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 530
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 532
    :cond_1
    iput-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 533
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 535
    :goto_1
    monitor-exit p0

    return v0

    .line 536
    .end local v0    # "token":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 6

    .line 826
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 827
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 828
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_4

    .line 829
    iget-wide v3, v2, Landroid/os/Message;->when:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 830
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    goto :goto_1

    .line 834
    :cond_0
    :goto_0
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 835
    .local v3, "n":Landroid/os/Message;
    if-nez v3, :cond_1

    .line 836
    return-void

    .line 838
    :cond_1
    iget-wide v4, v3, Landroid/os/Message;->when:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_3

    .line 839
    nop

    .line 843
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 845
    :cond_2
    move-object v2, v3

    .line 846
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 847
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 848
    if-nez v3, :cond_2

    .end local v3    # "n":Landroid/os/Message;
    goto :goto_1

    .line 841
    .restart local v3    # "n":Landroid/os/Message;
    :cond_3
    move-object v2, v3

    goto :goto_0

    .line 851
    .end local v3    # "n":Landroid/os/Message;
    :cond_4
    :goto_1
    return-void
.end method

.method private removeAllMessagesLocked()V
    .locals 2

    .line 816
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 817
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 818
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 819
    .local v1, "n":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 820
    move-object v0, v1

    .line 821
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 822
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 823
    return-void
.end method

.method private updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 226
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 228
    .local v0, "fdNum":I
    const/4 v1, -0x1

    .line 229
    .local v1, "index":I
    const/4 v2, 0x0

    .line 230
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 232
    if-ltz v1, :cond_0

    .line 233
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 234
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_0

    .line 235
    return-void

    .line 240
    :cond_0
    if-eqz p2, :cond_3

    .line 241
    or-int/lit8 p2, p2, 0x4

    .line 242
    if-nez v2, :cond_2

    .line 243
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 244
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 246
    :cond_1
    new-instance v3, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v3, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    move-object v2, v3

    .line 247
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 249
    :cond_2
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 250
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 251
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 253
    :goto_0
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    goto :goto_1

    .line 254
    :cond_3
    if-eqz v2, :cond_4

    .line 255
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 256
    iget-object v4, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 257
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, v3}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    .line 259
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 118
    if-eqz p1, :cond_0

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    monitor-exit p0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 190
    if-eqz p1, :cond_1

    .line 193
    if-eqz p3, :cond_0

    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 199
    monitor-exit p0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkAndRemoveBarrier()V
    .locals 4

    .line 592
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 593
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 594
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 596
    :cond_0
    if-eqz v0, :cond_1

    .line 597
    const-string v1, "MessageQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exceptional Barriers "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 600
    :cond_1
    return-void
.end method

.method public checkHasSyncBarrier(I)Z
    .locals 2
    .param p1, "token"    # I

    .line 500
    monitor-enter p0

    .line 501
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 502
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eq v1, p1, :cond_1

    .line 503
    :cond_0
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v1

    goto :goto_0

    .line 505
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 506
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "h"    # Landroid/os/Handler;

    .line 854
    monitor-enter p0

    .line 855
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 856
    .local v0, "now":J
    const/4 v2, 0x0

    .line 857
    .local v2, "n":I
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v3, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v3, :cond_2

    .line 858
    if-eqz p3, :cond_0

    iget-object v4, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, v4, :cond_1

    .line 859
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 861
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 857
    iget-object v4, v3, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v3, v4

    goto :goto_0

    .line 863
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(Total messages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", polling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", quitting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 865
    .end local v0    # "now":J
    .end local v2    # "n":I
    monitor-exit p0

    .line 866
    return-void

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 604
    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 607
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-nez v0, :cond_7

    .line 611
    monitor-enter p0

    .line 612
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 613
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " sending message to a Handler on a dead thread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 615
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 617
    monitor-exit p0

    return v1

    .line 620
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 621
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 622
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 624
    .local v0, "p":Landroid/os/Message;
    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-eqz v3, :cond_5

    iget-wide v3, v0, Landroid/os/Message;->when:J

    cmp-long v3, p2, v3

    if-gez v3, :cond_1

    goto :goto_2

    .line 633
    :cond_1
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 636
    .local v1, "needWake":Z
    :cond_2
    :goto_0
    move-object v3, v0

    .line 637
    .local v3, "prev":Landroid/os/Message;
    iget-object v4, v0, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v0, v4

    .line 638
    if-eqz v0, :cond_4

    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-gez v4, :cond_3

    .line 639
    goto :goto_1

    .line 641
    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 642
    const/4 v1, 0x0

    goto :goto_0

    .line 645
    :cond_4
    :goto_1
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 646
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .end local v3    # "prev":Landroid/os/Message;
    goto :goto_3

    .line 626
    .end local v1    # "needWake":Z
    :cond_5
    :goto_2
    iput-object v0, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 627
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 628
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 650
    .restart local v1    # "needWake":Z
    :goto_3
    if-eqz v1, :cond_6

    .line 651
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 653
    .end local v0    # "p":Landroid/os/Message;
    .end local v1    # "needWake":Z
    :cond_6
    monitor-exit p0

    .line 654
    return v2

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 608
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " This message is already in use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must have a target."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 81
    nop

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 692
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 693
    return v0

    .line 696
    :cond_0
    monitor-enter p0

    .line 697
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 698
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_2

    .line 699
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_1

    .line 700
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 702
    :cond_1
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    .line 704
    :cond_2
    monitor-exit p0

    return v0

    .line 705
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 658
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 659
    return v0

    .line 662
    :cond_0
    monitor-enter p0

    .line 663
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 664
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_3

    .line 665
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 666
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 668
    :cond_2
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    .line 670
    :cond_3
    monitor-exit p0

    return v0

    .line 671
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 675
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 676
    return v0

    .line 679
    :cond_0
    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 681
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_3

    .line 682
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 683
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 685
    :cond_2
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    .line 687
    :cond_3
    monitor-exit p0

    return v0

    .line 688
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isIdle()Z
    .locals 4

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 103
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    monitor-exit p0

    return v2

    .line 104
    .end local v0    # "now":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPolling()Z
    .locals 1

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method next()Landroid/os/Message;
    .locals 14

    .line 314
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 315
    .local v0, "ptr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 316
    return-object v3

    .line 319
    :cond_0
    const/4 v2, -0x1

    .line 320
    .local v2, "pendingIdleHandlerCount":I
    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    .line 322
    .local v2, "nextPollTimeoutMillis":I
    .local v5, "pendingIdleHandlerCount":I
    :goto_0
    if-eqz v2, :cond_1

    .line 323
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 326
    :cond_1
    invoke-direct {p0, v0, v1, v2}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 328
    monitor-enter p0

    .line 330
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 331
    .local v6, "now":J
    const/4 v8, 0x0

    .line 332
    .local v8, "prevMsg":Landroid/os/Message;
    iget-object v9, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 333
    .local v9, "msg":Landroid/os/Message;
    if-eqz v9, :cond_3

    iget-object v10, v9, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v10, :cond_3

    .line 336
    :cond_2
    move-object v8, v9

    .line 337
    iget-object v10, v9, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v9, v10

    .line 338
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/os/Message;->isAsynchronous()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 340
    :cond_3
    if-eqz v9, :cond_6

    .line 341
    iget-wide v10, v9, Landroid/os/Message;->when:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_4

    .line 343
    iget-wide v10, v9, Landroid/os/Message;->when:J

    sub-long/2addr v10, v6

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v2, v10

    goto :goto_2

    .line 346
    :cond_4
    iput-boolean v4, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 347
    if-eqz v8, :cond_5

    .line 348
    iget-object v4, v9, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v4, v8, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 350
    :cond_5
    iget-object v4, v9, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v4, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 352
    :goto_1
    iput-object v3, v9, Landroid/os/Message;->next:Landroid/os/Message;

    .line 354
    invoke-virtual {v9}, Landroid/os/Message;->markInUse()V

    .line 355
    monitor-exit p0

    return-object v9

    .line 359
    :cond_6
    const/4 v2, -0x1

    .line 363
    :goto_2
    iget-boolean v10, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v10, :cond_7

    .line 364
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V

    .line 365
    monitor-exit p0

    return-object v3

    .line 371
    :cond_7
    if-gez v5, :cond_9

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_8

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v10, v10, Landroid/os/Message;->when:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_9

    .line 373
    :cond_8
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v5, v10

    .line 375
    :cond_9
    if-gtz v5, :cond_a

    .line 377
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 378
    monitor-exit p0

    goto :goto_0

    .line 381
    :cond_a
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v10, :cond_b

    .line 382
    const/4 v10, 0x4

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 384
    :cond_b
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 385
    .end local v6    # "now":J
    .end local v8    # "prevMsg":Landroid/os/Message;
    .end local v9    # "msg":Landroid/os/Message;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    move v6, v4

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_d

    .line 390
    iget-object v7, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v7, v7, v6

    .line 391
    .local v7, "idler":Landroid/os/MessageQueue$IdleHandler;
    iget-object v8, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aput-object v3, v8, v6

    .line 393
    move v8, v4

    .line 395
    .local v8, "keep":Z
    :try_start_1
    invoke-interface {v7}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v9

    .line 398
    goto :goto_4

    .line 396
    :catch_0
    move-exception v9

    .line 397
    .local v9, "t":Ljava/lang/Throwable;
    const-string v10, "MessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v9    # "t":Ljava/lang/Throwable;
    :goto_4
    if-nez v8, :cond_c

    .line 401
    monitor-enter p0

    .line 402
    :try_start_2
    iget-object v9, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 403
    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 389
    .end local v7    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v8    # "keep":Z
    :cond_c
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 408
    .end local v6    # "i":I
    :cond_d
    const/4 v5, 0x0

    .line 412
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 385
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public postSyncBarrier()I
    .locals 2

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method public postSyncBarrierAtFrontByNubia()I
    .locals 5

    .line 473
    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 475
    .local v0, "p":Landroid/os/Message;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget v1, v0, Landroid/os/Message;->arg1:I

    iget v2, p0, Landroid/os/MessageQueue;->mFrontSyncBarrier:I

    if-ne v1, v2, :cond_0

    .line 477
    iget v1, p0, Landroid/os/MessageQueue;->mFrontSyncBarrier:I

    monitor-exit p0

    return v1

    .line 479
    :cond_0
    iget v1, p0, Landroid/os/MessageQueue;->mFrontSyncBarrier:I

    invoke-virtual {p0, v1}, Landroid/os/MessageQueue;->checkHasSyncBarrier(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    iget v1, p0, Landroid/os/MessageQueue;->mFrontSyncBarrier:I

    invoke-virtual {p0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 483
    :cond_1
    iget v1, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 484
    .local v1, "token":I
    iput v1, p0, Landroid/os/MessageQueue;->mFrontSyncBarrier:I

    .line 485
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 486
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->markInUse()V

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/Message;->when:J

    .line 488
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 489
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 490
    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 491
    monitor-exit p0

    return v1

    .line 492
    .end local v0    # "p":Landroid/os/Message;
    .end local v1    # "token":I
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method quit(Z)V
    .locals 2
    .param p1, "safe"    # Z

    .line 417
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-eqz v0, :cond_2

    .line 421
    monitor-enter p0

    .line 422
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_0

    .line 423
    monitor-exit p0

    return-void

    .line 425
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 427
    if-eqz p1, :cond_1

    .line 428
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    goto :goto_0

    .line 430
    :cond_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 434
    :goto_0
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 435
    monitor-exit p0

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 418
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .line 783
    if-nez p1, :cond_0

    .line 784
    return-void

    .line 787
    :cond_0
    monitor-enter p0

    .line 788
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 791
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p2, :cond_2

    .line 793
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 794
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 795
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 796
    move-object v0, v1

    .line 797
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 800
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 801
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 802
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_4

    .line 803
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p2, :cond_4

    .line 804
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 805
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 806
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 807
    goto :goto_1

    .line 810
    .end local v2    # "nn":Landroid/os/Message;
    :cond_4
    move-object v0, v1

    .line 811
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 812
    .end local v0    # "p":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    .line 813
    return-void

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 709
    if-nez p1, :cond_0

    .line 710
    return-void

    .line 713
    :cond_0
    if-nez p3, :cond_1

    if-nez p2, :cond_1

    const-string v0, "com.android.systemui"

    .line 714
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    const-string v0, "MessageQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error message id caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_1
    monitor-enter p0

    .line 720
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 723
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_3

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_3

    .line 725
    :cond_2
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 726
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 727
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 728
    move-object v0, v1

    .line 729
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 732
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 733
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 734
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_5

    .line 735
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_5

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_5

    .line 737
    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 738
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 739
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 740
    goto :goto_1

    .line 743
    .end local v2    # "nn":Landroid/os/Message;
    :cond_5
    move-object v0, v1

    .line 744
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 745
    .end local v0    # "p":Landroid/os/Message;
    :cond_6
    monitor-exit p0

    .line 746
    return-void

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .line 749
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 753
    :cond_0
    monitor-enter p0

    .line 754
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 757
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, p3, :cond_2

    .line 759
    :cond_1
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 760
    .local v1, "n":Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 761
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 762
    move-object v0, v1

    .line 763
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_0

    .line 766
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 767
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 768
    .restart local v1    # "n":Landroid/os/Message;
    if-eqz v1, :cond_4

    .line 769
    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_4

    .line 771
    :cond_3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 772
    .local v2, "nn":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 773
    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 774
    goto :goto_1

    .line 777
    .end local v2    # "nn":Landroid/os/Message;
    :cond_4
    move-object v0, v1

    .line 778
    .end local v1    # "n":Landroid/os/Message;
    goto :goto_1

    .line 779
    .end local v0    # "p":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    .line 780
    return-void

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 750
    :cond_6
    :goto_2
    return-void
.end method

.method public removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 215
    if-eqz p1, :cond_0

    .line 219
    monitor-enter p0

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 221
    monitor-exit p0

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSyncBarrier(I)V
    .locals 5
    .param p1, "token"    # I

    .line 552
    monitor-enter p0

    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, "prev":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 555
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v2, :cond_0

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eq v2, p1, :cond_1

    .line 556
    :cond_0
    move-object v0, v1

    .line 557
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v1, v2

    goto :goto_0

    .line 559
    :cond_1
    if-nez v1, :cond_3

    .line 561
    sget-boolean v2, Landroid/os/MessageQueue;->DO_NOT_CRASH:Z

    if-eqz v2, :cond_2

    .line 562
    const-string v2, "MessageQueue"

    const-string/jumbo v3, "return crash -- barrier token has not been posted or has already been removed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    monitor-exit p0

    return-void

    .line 566
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 570
    :cond_3
    if-eqz v0, :cond_4

    .line 571
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 572
    const/4 v2, 0x0

    .line 572
    .local v2, "needWake":Z
    goto :goto_2

    .line 574
    .end local v2    # "needWake":Z
    :cond_4
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 575
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x1

    .line 577
    .restart local v2    # "needWake":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 581
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_7

    .line 582
    iget-wide v3, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v3, v4}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 584
    .end local v0    # "prev":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "needWake":Z
    :cond_7
    monitor-exit p0

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 869
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 870
    .local v0, "messageQueueToken":J
    monitor-enter p0

    .line 871
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v2, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_0

    .line 872
    const-wide v3, 0x20b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Message;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 871
    iget-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    move-object v2, v3

    goto :goto_0

    .line 874
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    const-wide v2, 0x10800000002L

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 875
    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 876
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 878
    return-void

    .line 876
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
