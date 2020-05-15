.class public Lcom/android/internal/os/FuseAppLoop;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/FuseAppLoop$Args;,
        Lcom/android/internal/os/FuseAppLoop$BytesMap;,
        Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;,
        Lcom/android/internal/os/FuseAppLoop$CallbackEntry;,
        Lcom/android/internal/os/FuseAppLoop$UnmountedException;
    }
.end annotation


# static fields
.field private static final ARGS_POOL_SIZE:I = 0x32

.field private static final DEBUG:Z

.field private static final FUSE_FSYNC:I = 0x14

.field private static final FUSE_GETATTR:I = 0x3

.field private static final FUSE_LOOKUP:I = 0x1

.field private static final FUSE_MAX_WRITE:I = 0x20000

.field private static final FUSE_OK:I = 0x0

.field private static final FUSE_OPEN:I = 0xe

.field private static final FUSE_READ:I = 0xf

.field private static final FUSE_RELEASE:I = 0x12

.field private static final FUSE_WRITE:I = 0x10

.field private static final MIN_INODE:I = 0x2

.field public static final ROOT_INODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FuseAppLoop"

.field private static final sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mArgsPool:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/os/FuseAppLoop$Args;",
            ">;"
        }
    .end annotation
.end field

.field private final mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCallbackMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/FuseAppLoop$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMountPointId:I

.field private mNextInode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "FuseAppLoop"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/FuseAppLoop;->DEBUG:Z

    .line 41
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$1;

    invoke-direct {v0}, Lcom/android/internal/os/FuseAppLoop$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "mountPointId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "factory"    # Ljava/util/concurrent/ThreadFactory;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>(Lcom/android/internal/os/FuseAppLoop$1;)V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 75
    iput p1, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    .line 76
    if-nez p3, :cond_0

    .line 77
    sget-object p3, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/FuseAppLoop;->native_new(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 80
    new-instance v0, Lcom/android/internal/os/-$$Lambda$FuseAppLoop$e9Yru2f_btesWlxIgerkPnHibpg;

    invoke-direct {v0, p0}, Lcom/android/internal/os/-$$Lambda$FuseAppLoop$e9Yru2f_btesWlxIgerkPnHibpg;-><init>(Lcom/android/internal/os/FuseAppLoop;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    .line 88
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method private static checkInode(J)I
    .locals 7
    .param p0, "inode"    # J

    .line 321
    const-string v6, "checkInode"

    const-wide/16 v2, 0x2

    const-wide/32 v4, 0x7fffffff

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 322
    long-to-int v0, p0

    return v0
.end method

.method private getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .locals 4
    .param p1, "inode"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 289
    .local v0, "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    if-eqz v0, :cond_0

    .line 292
    return-object v0

    .line 290
    :cond_0
    new-instance v1, Landroid/system/ErrnoException;

    sget v2, Landroid/system/OsConstants;->ENOENT:I

    const-string v3, "getCallbackEntryOrThrowLocked"

    invoke-direct {v1, v3, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static getError(Ljava/lang/Exception;)I
    .locals 2
    .param p0, "error"    # Ljava/lang/Exception;

    .line 277
    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_0

    .line 278
    move-object v0, p0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    .line 279
    .local v0, "errno":I
    sget v1, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v0, v1, :cond_0

    .line 280
    neg-int v1, v0

    return v1

    .line 283
    .end local v0    # "errno":I
    :cond_0
    sget v0, Landroid/system/OsConstants;->EBADF:I

    neg-int v0, v0

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/internal/os/FuseAppLoop;)V
    .locals 3

    .line 81
    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/FuseAppLoop;->native_start(J)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/FuseAppLoop;->native_delete(J)V

    .line 84
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 85
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->clear()V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCommand(IJJJI[B)V
    .locals 5
    .param p1, "command"    # I
    .param p2, "unique"    # J
    .param p4, "inode"    # J
    .param p6, "offset"    # J
    .param p8, "size"    # I
    .param p9, "data"    # [B

    .line 231
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 235
    new-instance v1, Lcom/android/internal/os/FuseAppLoop$Args;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>(Lcom/android/internal/os/FuseAppLoop$1;)V

    .line 235
    .local v1, "args":Lcom/android/internal/os/FuseAppLoop$Args;
    goto :goto_0

    .line 237
    .end local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 239
    .restart local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    :goto_0
    iput-wide p2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    .line 240
    iput-wide p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    .line 241
    iput-wide p6, v1, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    .line 242
    iput p8, v1, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    .line 243
    iput-object p9, v1, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    .line 244
    invoke-direct {p0, p4, p5}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 245
    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v2, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v3, v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    .line 246
    const/4 v4, 0x0

    invoke-static {v3, p1, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 245
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    .end local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    goto :goto_1

    .line 247
    .restart local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    :cond_1
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "onCommand"

    sget v4, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .end local v1    # "args":Lcom/android/internal/os/FuseAppLoop$Args;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "error":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 252
    .end local v1    # "error":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onOpen(JJ)[B
    .locals 10
    .param p1, "unique"    # J
    .param p3, "inode"    # J

    .line 258
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v1

    .line 261
    .local v1, "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    iget-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    if-nez v2, :cond_1

    .line 264
    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 265
    iget-wide v4, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyOpen(JJJ)V

    .line 266
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    .line 267
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->startUsing(J)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 271
    .end local v1    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    :cond_0
    goto :goto_0

    .line 262
    .restart local v1    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    :cond_1
    :try_start_2
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "onOpen"

    sget v4, Landroid/system/OsConstants;->EMFILE:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    .end local v1    # "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "error":Landroid/system/ErrnoException;
    :try_start_3
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 272
    .end local v1    # "error":Landroid/system/ErrnoException;
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 273
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .locals 2
    .param p1, "args"    # Lcom/android/internal/os/FuseAppLoop$Args;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_0
    return-void
.end method

.method private replySimpleLocked(JI)V
    .locals 7
    .param p1, "unique"    # J
    .param p3, "result"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 304
    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 305
    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method public getMountPointId()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v10, p0

    .line 145
    move-object/from16 v11, p1

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 146
    .local v12, "args":Lcom/android/internal/os/FuseAppLoop$Args;
    iget-object v13, v12, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 147
    .local v13, "entry":Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    iget-wide v14, v12, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    .line 148
    .local v14, "inode":J
    iget-wide v8, v12, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    .line 149
    .local v8, "unique":J
    iget v7, v12, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    .line 150
    .local v7, "size":I
    iget-wide v4, v12, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    .line 151
    .local v4, "offset":J
    iget-object v0, v12, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    move-object v2, v0

    .line 154
    .local v2, "data":[B
    const/4 v3, 0x1

    :try_start_0
    iget v0, v11, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    const-wide/16 v16, 0x0

    if-eq v0, v3, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 214
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown FUSE command: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v11, Landroid/os/Message;->what:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :catch_0
    move-exception v0

    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v23, v8

    move-wide/from16 v21, v14

    move-wide v14, v4

    goto/16 :goto_b

    .line 186
    :pswitch_0
    :try_start_2
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v4, v5, v7, v2}, Landroid/os/ProxyFileDescriptorCallback;->onWrite(JI[B)I

    move-result v6

    .line 187
    .local v6, "writeSize":I
    iget-object v1, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    move-wide/from16 v18, v4

    :try_start_3
    iget-wide v3, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .end local v4    # "offset":J
    .local v18, "offset":J
    cmp-long v0, v3, v16

    if-eqz v0, :cond_0

    .line 189
    iget-wide v3, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v1

    move-object v1, v10

    move-object v5, v2

    const/16 v20, 0x1

    move-wide v2, v3

    .end local v2    # "data":[B
    .local v5, "data":[B
    move-object v11, v5

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    move-wide v4, v8

    .end local v5    # "data":[B
    .end local v18    # "offset":J
    .local v11, "data":[B
    .local v14, "offset":J
    .local v21, "inode":J
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replyWrite(JJI)V

    goto :goto_0

    .line 191
    .end local v11    # "data":[B
    .end local v21    # "inode":J
    .restart local v2    # "data":[B
    .local v14, "inode":J
    .restart local v18    # "offset":J
    :cond_0
    move-object/from16 v16, v1

    move-object v11, v2

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    const/16 v20, 0x1

    .end local v2    # "data":[B
    .end local v18    # "offset":J
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v21    # "inode":J
    :goto_0
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 192
    monitor-exit v16

    .line 193
    nop

    .line 222
    move/from16 v18, v7

    goto :goto_3

    .line 192
    .end local v11    # "data":[B
    .end local v21    # "inode":J
    .restart local v2    # "data":[B
    .local v14, "inode":J
    .restart local v18    # "offset":J
    :catchall_0
    move-exception v0

    move-object/from16 v16, v1

    move-object v11, v2

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    const/16 v20, 0x1

    .end local v2    # "data":[B
    .end local v18    # "offset":J
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v21    # "inode":J
    :goto_1
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 216
    .end local v6    # "writeSize":I
    :catch_1
    move-exception v0

    move/from16 v18, v7

    goto/16 :goto_5

    .line 192
    .restart local v6    # "writeSize":I
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 216
    .end local v6    # "writeSize":I
    .end local v11    # "data":[B
    .end local v21    # "inode":J
    .restart local v2    # "data":[B
    .restart local v4    # "offset":J
    .local v14, "inode":J
    :catch_2
    move-exception v0

    move-object v11, v2

    move/from16 v20, v3

    move-wide/from16 v21, v14

    move-wide v14, v4

    move/from16 v18, v7

    move-wide/from16 v23, v8

    .end local v2    # "data":[B
    .end local v4    # "offset":J
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v21    # "inode":J
    goto/16 :goto_b

    .line 176
    .end local v11    # "data":[B
    .end local v21    # "inode":J
    .restart local v2    # "data":[B
    .restart local v4    # "offset":J
    .local v14, "inode":J
    :pswitch_1
    move-object v11, v2

    move/from16 v20, v3

    move-wide/from16 v21, v14

    move-wide v14, v4

    .end local v2    # "data":[B
    .end local v4    # "offset":J
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v21    # "inode":J
    :try_start_6
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v14, v15, v7, v11}, Landroid/os/ProxyFileDescriptorCallback;->onRead(JI[B)I

    move-result v6

    .line 178
    .local v6, "readSize":I
    iget-object v4, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 179
    :try_start_7
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_1

    .line 180
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v1, v10

    move-object/from16 v16, v4

    move-wide v4, v8

    move/from16 v18, v7

    move-object v7, v11

    .end local v7    # "size":I
    .local v18, "size":I
    :try_start_8
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/FuseAppLoop;->native_replyRead(JJI[B)V

    goto :goto_2

    .line 182
    .end local v18    # "size":I
    .restart local v7    # "size":I
    :cond_1
    move-object/from16 v16, v4

    move/from16 v18, v7

    .end local v7    # "size":I
    .restart local v18    # "size":I
    :goto_2
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 183
    monitor-exit v16

    .line 184
    nop

    .line 222
    .end local v6    # "readSize":I
    .end local v8    # "unique":J
    .local v23, "unique":J
    :goto_3
    move-wide/from16 v23, v8

    goto/16 :goto_9

    .line 183
    .end local v18    # "size":I
    .end local v23    # "unique":J
    .restart local v6    # "readSize":I
    .restart local v7    # "size":I
    .restart local v8    # "unique":J
    :catchall_2
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v7

    .end local v7    # "size":I
    .restart local v18    # "size":I
    :goto_4
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 216
    .end local v6    # "readSize":I
    .end local v18    # "size":I
    .restart local v7    # "size":I
    :catch_3
    move-exception v0

    move/from16 v18, v7

    move-wide/from16 v23, v8

    .end local v7    # "size":I
    .restart local v18    # "size":I
    goto/16 :goto_b

    .line 195
    .end local v11    # "data":[B
    .end local v18    # "size":I
    .end local v21    # "inode":J
    .restart local v2    # "data":[B
    .restart local v4    # "offset":J
    .restart local v7    # "size":I
    .local v14, "inode":J
    :cond_2
    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-wide v14, v4

    .end local v2    # "data":[B
    .end local v4    # "offset":J
    .end local v7    # "size":I
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v18    # "size":I
    .restart local v21    # "inode":J
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onFsync()V

    .line 196
    iget-object v7, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 197
    :try_start_a
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_3

    .line 198
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const/4 v6, 0x0

    move-object v1, v10

    move-wide v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    .line 200
    :cond_3
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 201
    monitor-exit v7

    .line 202
    goto :goto_3

    .line 201
    :catchall_4
    move-exception v0

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v0

    .line 204
    .end local v11    # "data":[B
    .end local v18    # "size":I
    .end local v21    # "inode":J
    .restart local v2    # "data":[B
    .restart local v4    # "offset":J
    .restart local v7    # "size":I
    .local v14, "inode":J
    :cond_4
    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-wide v14, v4

    .end local v2    # "data":[B
    .end local v4    # "offset":J
    .end local v7    # "size":I
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v18    # "size":I
    .restart local v21    # "inode":J
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onRelease()V

    .line 205
    iget-object v7, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 206
    :try_start_c
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_5

    .line 207
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const/4 v6, 0x0

    move-object v1, v10

    move-wide v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    .line 209
    :cond_5
    iget-object v0, v10, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v13}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->getThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->stopUsing(J)V

    .line 210
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 211
    monitor-exit v7

    .line 212
    goto :goto_3

    .line 211
    :catchall_5
    move-exception v0

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 216
    :catch_4
    move-exception v0

    .end local v8    # "unique":J
    .restart local v23    # "unique":J
    :goto_5
    move-wide/from16 v23, v8

    goto/16 :goto_b

    .line 166
    .end local v11    # "data":[B
    .end local v18    # "size":I
    .end local v21    # "inode":J
    .end local v23    # "unique":J
    .restart local v2    # "data":[B
    .restart local v4    # "offset":J
    .restart local v7    # "size":I
    .restart local v8    # "unique":J
    .local v14, "inode":J
    :cond_6
    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-wide v14, v4

    .end local v2    # "data":[B
    .end local v4    # "offset":J
    .end local v7    # "size":I
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v18    # "size":I
    .restart local v21    # "inode":J
    :try_start_e
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    move-wide v6, v8

    move-wide v8, v0

    .line 167
    .local v6, "unique":J
    .local v8, "fileSize":J
    :try_start_f
    iget-object v4, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 168
    :try_start_10
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_7

    .line 169
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move-object v1, v10

    move-object/from16 v16, v4

    move-wide v4, v6

    move-wide/from16 v23, v6

    move-wide/from16 v6, v21

    .end local v6    # "unique":J
    .restart local v23    # "unique":J
    :try_start_11
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyGetAttr(JJJJ)V

    goto :goto_6

    .line 171
    .end local v23    # "unique":J
    .restart local v6    # "unique":J
    :cond_7
    move-object/from16 v16, v4

    move-wide/from16 v23, v6

    .end local v6    # "unique":J
    .restart local v23    # "unique":J
    :goto_6
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 172
    monitor-exit v16

    .line 173
    goto :goto_9

    .line 172
    .end local v23    # "unique":J
    .restart local v6    # "unique":J
    :catchall_6
    move-exception v0

    move-object/from16 v16, v4

    move-wide/from16 v23, v6

    .end local v6    # "unique":J
    .restart local v23    # "unique":J
    :goto_7
    monitor-exit v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    throw v0

    :catchall_7
    move-exception v0

    goto :goto_7

    .line 216
    .end local v8    # "fileSize":J
    .end local v23    # "unique":J
    .restart local v6    # "unique":J
    :catch_5
    move-exception v0

    move-wide/from16 v23, v6

    .end local v6    # "unique":J
    .restart local v23    # "unique":J
    goto :goto_b

    .end local v23    # "unique":J
    .local v8, "unique":J
    :catch_6
    move-exception v0

    move-wide/from16 v23, v8

    .end local v8    # "unique":J
    .restart local v23    # "unique":J
    goto :goto_b

    .line 156
    .end local v11    # "data":[B
    .end local v18    # "size":I
    .end local v21    # "inode":J
    .end local v23    # "unique":J
    .restart local v2    # "data":[B
    .restart local v4    # "offset":J
    .restart local v7    # "size":I
    .restart local v8    # "unique":J
    .local v14, "inode":J
    :cond_8
    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v23, v8

    move-wide/from16 v21, v14

    move-wide v14, v4

    .end local v2    # "data":[B
    .end local v4    # "offset":J
    .end local v7    # "size":I
    .end local v8    # "unique":J
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v18    # "size":I
    .restart local v21    # "inode":J
    .restart local v23    # "unique":J
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v8

    .line 157
    .local v8, "fileSize":J
    iget-object v6, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 158
    :try_start_13
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_9

    .line 159
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move-object v1, v10

    move-wide/from16 v4, v23

    move-object/from16 v16, v6

    move-wide/from16 v6, v21

    :try_start_14
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyLookup(JJJJ)V

    goto :goto_8

    .line 161
    :cond_9
    move-object/from16 v16, v6

    :goto_8
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 162
    monitor-exit v16

    .line 163
    nop

    .line 222
    .end local v8    # "fileSize":J
    :goto_9
    nop

    .line 224
    move-wide/from16 v3, v23

    goto :goto_c

    .line 162
    .restart local v8    # "fileSize":J
    :catchall_8
    move-exception v0

    move-object/from16 v16, v6

    :goto_a
    monitor-exit v16
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    :catchall_9
    move-exception v0

    goto :goto_a

    .line 216
    .end local v8    # "fileSize":J
    :catch_7
    move-exception v0

    goto :goto_b

    .end local v11    # "data":[B
    .end local v18    # "size":I
    .end local v21    # "inode":J
    .end local v23    # "unique":J
    .restart local v2    # "data":[B
    .restart local v4    # "offset":J
    .restart local v7    # "size":I
    .local v8, "unique":J
    .local v14, "inode":J
    :catch_8
    move-exception v0

    move-object v11, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v23, v8

    move-wide/from16 v21, v14

    move-wide v14, v4

    .end local v2    # "data":[B
    .end local v4    # "offset":J
    .end local v7    # "size":I
    .end local v8    # "unique":J
    .restart local v11    # "data":[B
    .local v14, "offset":J
    .restart local v18    # "size":I
    .restart local v21    # "inode":J
    .restart local v23    # "unique":J
    :goto_b
    move-object v1, v0

    .line 217
    .local v1, "error":Ljava/lang/Exception;
    iget-object v2, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 218
    :try_start_16
    const-string v0, "FuseAppLoop"

    const-string v3, ""

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    move-wide/from16 v3, v23

    :try_start_17
    invoke-direct {v10, v3, v4, v0}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 220
    .end local v23    # "unique":J
    .local v3, "unique":J
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 221
    monitor-exit v2

    .line 224
    .end local v1    # "error":Ljava/lang/Exception;
    :goto_c
    return v20

    .line 221
    .end local v3    # "unique":J
    .restart local v1    # "error":Ljava/lang/Exception;
    .restart local v23    # "unique":J
    :catchall_a
    move-exception v0

    move-wide/from16 v3, v23

    .end local v23    # "unique":J
    .restart local v3    # "unique":J
    :goto_d
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method native native_delete(J)V
.end method

.method native native_new(I)J
.end method

.method native native_replyGetAttr(JJJJ)V
.end method

.method native native_replyLookup(JJJJ)V
.end method

.method native native_replyOpen(JJJ)V
.end method

.method native native_replyRead(JJI[B)V
.end method

.method native native_replySimple(JJI)V
.end method

.method native native_replyWrite(JJI)V
.end method

.method native native_start(J)V
.end method

.method public registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I
    .locals 7
    .param p1, "callback"    # Landroid/os/ProxyFileDescriptorCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 97
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const v2, 0x7ffffffd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v2, "Too many opened files."

    .line 96
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    move v3, v4

    nop

    :cond_1
    const-string v1, "Handler must be different from the current thread"

    .line 98
    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 101
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 106
    :cond_2
    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 107
    .local v1, "id":I
    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 108
    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    if-gez v2, :cond_3

    .line 109
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 112
    nop

    .line 115
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    new-instance v4, Landroid/os/Handler;

    .line 116
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v3, p1, v4}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;-><init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V

    .line 115
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    monitor-exit v0

    return v1

    .line 102
    .end local v1    # "id":I
    :cond_4
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v1

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterCallback(I)V
    .locals 2
    .param p1, "id"    # I

    .line 122
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
