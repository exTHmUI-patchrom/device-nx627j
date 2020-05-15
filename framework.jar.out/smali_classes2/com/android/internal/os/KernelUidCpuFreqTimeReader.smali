.class public Lcom/android/internal/os/KernelUidCpuFreqTimeReader;
.super Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.source "KernelUidCpuFreqTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<",
        "Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOTAL_READ_ERROR_COUNT:I = 0x5

.field static final UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private mAllUidTimesAvailable:Z

.field private mCpuFreqs:[J

.field private mCpuFreqsCount:I

.field private mCurTimes:[J

.field private mDeltaTimes:[J

.field private mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private mPerClusterTimesAvailable:Z

.field private final mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

.field private mReadErrorCounter:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 121
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    .line 89
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcReader;->getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelCpuProcReader;)V
    .locals 1
    .param p1, "procReader"    # Lcom/android/internal/os/KernelCpuProcReader;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    .line 94
    iput-object p1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    .line 95
    return-void
.end method

.method private extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;
    .locals 7

    .line 300
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 301
    .local v0, "numClusterFreqs":Landroid/util/IntArray;
    const/4 v1, 0x0

    .line 302
    .local v1, "freqsFound":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v2, v3, :cond_2

    .line 303
    add-int/lit8 v1, v1, 0x1

    .line 304
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v4, v2, 0x1

    aget-wide v3, v3, v4

    iget-object v5, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    aget-wide v5, v5, v2

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 305
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 306
    const/4 v1, 0x0

    .line 302
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private getFreqTimeForUid(Ljava/nio/IntBuffer;[J)Z
    .locals 6
    .param p1, "buffer"    # Ljava/nio/IntBuffer;
    .param p2, "freqTime"    # [J

    .line 227
    const/4 v0, 0x1

    .line 228
    .local v0, "valid":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v1, v2, :cond_1

    .line 229
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    aput-wide v2, p2, v1

    .line 230
    aget-wide v2, p2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 231
    sget-object v2, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative time from freq time proc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p2, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    .line 228
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static synthetic lambda$readAbsolute$0(Lcom/android/internal/os/KernelUidCpuFreqTimeReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    .param p2, "buf"    # Ljava/nio/IntBuffer;

    .line 219
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    .line 220
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    invoke-direct {p0, p2, v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->getFreqTimeForUid(Ljava/nio/IntBuffer;[J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    invoke-interface {p1, v0, v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onUidCpuFreqTime(I[J)V

    .line 223
    :cond_0
    return-void
.end method

.method private readCpuFreqs(Ljava/lang/String;)V
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    if-nez v0, :cond_0

    .line 364
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "freqStr":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    .line 367
    iget v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    .line 368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v1, v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "freqStr":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private readDeltaImpl(Ljava/io/BufferedReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 5
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "callback"    # Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 352
    return-void

    .line 354
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readCpuFreqs(Ljava/lang/String;)V

    .line 355
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_1

    .line 356
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 357
    .local v1, "index":I
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 358
    .local v2, "uid":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readTimesForUid(ILjava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    .line 359
    .end local v1    # "index":I
    .end local v2    # "uid":I
    goto :goto_0

    .line 360
    :cond_1
    return-void
.end method

.method private readImpl(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/nio/IntBuffer;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "processUid":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/nio/IntBuffer;>;"
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    monitor-enter v0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuProcReader;->readBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 249
    .local v1, "bytes":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    goto/16 :goto_1

    .line 253
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1

    .line 254
    sget-object v2, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse freq time proc bytes to int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    monitor-exit v0

    return-void

    .line 257
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 258
    .local v2, "buf":Ljava/nio/IntBuffer;
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    .line 259
    .local v3, "freqs":I
    iget v4, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-eq v3, v4, :cond_2

    .line 260
    sget-object v4, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cpu freqs expect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    monitor-exit v0

    return-void

    .line 263
    :cond_2
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    rem-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 264
    sget-object v4, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freq time format error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    monitor-exit v0

    return-void

    .line 267
    :cond_3
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    div-int/2addr v4, v5

    .line 268
    .local v4, "numUids":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 269
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 268
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "bytes":Ljava/nio/ByteBuffer;
    .end local v2    # "buf":Ljava/nio/IntBuffer;
    .end local v3    # "freqs":I
    .end local v4    # "numUids":I
    .end local v5    # "i":I
    :cond_4
    monitor-exit v0

    .line 275
    return-void

    .line 251
    .restart local v1    # "bytes":Ljava/nio/ByteBuffer;
    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    .line 274
    .end local v1    # "bytes":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readTimesForUid(ILjava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 18
    .param p1, "uid"    # I
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 313
    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 314
    .local v3, "uidTimeMs":[J
    if-nez v3, :cond_0

    .line 315
    iget v4, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v3, v4, [J

    .line 316
    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    :cond_0
    const-string v4, " "

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "timesStr":[Ljava/lang/String;
    array-length v6, v4

    .line 320
    .local v6, "size":I
    array-length v7, v3

    if-eq v6, v7, :cond_1

    .line 321
    sget-object v7, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No. of readings don\'t match cpu freqs, readings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cpuFreqsCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 325
    :cond_1
    new-array v7, v6, [J

    .line 326
    .local v7, "deltaUidTimeMs":[J
    new-array v8, v6, [J

    .line 327
    .local v8, "curUidTimeMs":[J
    const/4 v9, 0x0

    .line 328
    .local v9, "notify":Z
    const/4 v10, 0x0

    move v11, v9

    move v9, v10

    .local v9, "i":I
    .local v11, "notify":Z
    :goto_0
    if-ge v9, v6, :cond_6

    .line 330
    aget-object v12, v4, v9

    const/16 v13, 0xa

    invoke-static {v12, v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    const-wide/16 v14, 0xa

    mul-long/2addr v12, v14

    .line 331
    .local v12, "totalTimeMs":J
    aget-wide v14, v3, v9

    sub-long v14, v12, v14

    aput-wide v14, v7, v9

    .line 334
    aget-wide v14, v7, v9

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_5

    cmp-long v14, v12, v16

    if-gez v14, :cond_2

    goto :goto_3

    .line 337
    :cond_2
    aput-wide v12, v8, v9

    .line 338
    if-nez v11, :cond_4

    aget-wide v14, v7, v9

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    goto :goto_1

    :cond_3
    move v14, v10

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v14, 0x1

    :goto_2
    move v11, v14

    .line 328
    .end local v12    # "totalTimeMs":J
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 335
    .restart local v12    # "totalTimeMs":J
    :cond_5
    :goto_3
    return-void

    .line 340
    .end local v9    # "i":I
    .end local v12    # "totalTimeMs":J
    :cond_6
    if-eqz v11, :cond_7

    .line 341
    invoke-static {v8, v10, v3, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    if-eqz v2, :cond_7

    .line 343
    invoke-interface {v2, v1, v7}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onUidCpuFreqTime(I[J)V

    .line 346
    :cond_7
    return-void
.end method


# virtual methods
.method public allUidTimesAvailable()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    return v0
.end method

.method public getAllUidCpuFreqTimeMs()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    return-object v0
.end method

.method public perClusterTimesAvailable()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    return v0
.end method

.method public readAbsolute(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;

    .line 218
    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuFreqTimeReader$iNWZus9risl5ljXATND8AcVp5D0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuFreqTimeReader$iNWZus9risl5ljXATND8AcVp5D0;-><init>(Lcom/android/internal/os/KernelUidCpuFreqTimeReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    .line 224
    return-void
.end method

.method public readDeltaImpl(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 170
    iget-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/uid_time_in_state"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 174
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readDeltaImpl(Ljava/io/BufferedReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    invoke-static {v1, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    .end local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 175
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    iget v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    .line 177
    sget-object v1, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read /proc/uid_time_in_state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public bridge synthetic readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    check-cast p1, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    return-void
.end method

.method public readFreqs(Lcom/android/internal/os/PowerProfile;)[J
    .locals 7
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 110
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    return-object v0

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 116
    return-object v1

    .line 118
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 119
    .local v0, "oldMask":I
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/uid_time_in_state"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 120
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readFreqs(Ljava/io/BufferedReader;Lcom/android/internal/os/PowerProfile;)[J

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    invoke-static {v1, v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 128
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 120
    return-object v3

    .line 121
    :catchall_0
    move-exception v3

    move-object v4, v1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    :catchall_1
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_0
    :try_start_4
    invoke-static {v4, v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 128
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v1

    goto :goto_1

    .line 121
    :catch_1
    move-exception v2

    .line 122
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 123
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    .line 125
    :cond_2
    sget-object v3, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read /proc/uid_time_in_state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 126
    nop

    .line 128
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 126
    return-object v1

    .line 128
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method public readFreqs(Ljava/io/BufferedReader;Lcom/android/internal/os/PowerProfile;)[J
    .locals 8
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "powerProfile"    # Lcom/android/internal/os/PowerProfile;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 137
    const/4 v1, 0x0

    return-object v1

    .line 139
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "freqStr":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    .line 142
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    .line 143
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    .line 144
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    .line 145
    const/4 v2, 0x0

    move v4, v2

    .line 145
    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v4, v5, :cond_1

    .line 146
    iget-object v5, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v6, v4, 0x1

    aget-object v6, v1, v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;

    move-result-object v4

    .line 151
    .local v4, "numClusterFreqs":Landroid/util/IntArray;
    invoke-virtual {p2}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v5

    .line 152
    .local v5, "numClusters":I
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 153
    iput-boolean v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    .line 154
    move v3, v2

    .line 154
    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 155
    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {p2, v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 156
    iput-boolean v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    .line 157
    goto :goto_2

    .line 154
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    .end local v3    # "i":I
    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    .line 163
    :cond_4
    :goto_2
    sget-object v2, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPerClusterTimesAvailable="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    return-object v2
.end method

.method public removeUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 278
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 279
    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 4
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .line 282
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 285
    .local v0, "firstIndex":I
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 286
    .local v1, "lastIndex":I
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    .line 287
    return-void
.end method
