.class public Lcom/android/internal/os/KernelCpuProcReader;
.super Ljava/lang/Object;
.source "KernelCpuProcReader.java"


# static fields
.field private static final DEFAULT_THROTTLE_INTERVAL:J = 0xbb8L

.field private static final ERROR_THRESHOLD:I = 0x5

.field private static final MAX_BUFFER_SIZE:I = 0x100000

.field private static final PROC_UID_ACTIVE_TIME:Ljava/lang/String; = "/proc/uid_cpupower/concurrent_active_time"

.field private static final PROC_UID_CLUSTER_TIME:Ljava/lang/String; = "/proc/uid_cpupower/concurrent_policy_time"

.field private static final PROC_UID_FREQ_TIME:Ljava/lang/String; = "/proc/uid_cpupower/time_in_state"

.field private static final TAG:Ljava/lang/String; = "KernelCpuProcReader"

.field private static final mActiveTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

.field private static final mClusterTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

.field private static final mFreqTimeReader:Lcom/android/internal/os/KernelCpuProcReader;


# instance fields
.field private mBuffer:[B

.field private mContentSize:I

.field private mErrors:I

.field private mLastReadTime:J

.field private final mProc:Ljava/nio/file/Path;

.field private mThrottleInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/android/internal/os/KernelCpuProcReader;

    const-string v1, "/proc/uid_cpupower/time_in_state"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mFreqTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    .line 66
    new-instance v0, Lcom/android/internal/os/KernelCpuProcReader;

    const-string v1, "/proc/uid_cpupower/concurrent_active_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mActiveTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    .line 68
    new-instance v0, Lcom/android/internal/os/KernelCpuProcReader;

    const-string v1, "/proc/uid_cpupower/concurrent_policy_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mClusterTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "procFile"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mThrottleInterval:J

    .line 85
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mLastReadTime:J

    .line 87
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:[B

    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mProc:Ljava/nio/file/Path;

    .line 93
    return-void
.end method

.method public static getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mActiveTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-object v0
.end method

.method public static getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;
    .locals 1

    .line 80
    sget-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mClusterTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-object v0
.end method

.method public static getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mFreqTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-object v0
.end method


# virtual methods
.method public readBytes()Ljava/nio/ByteBuffer;
    .locals 10

    .line 106
    iget v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 107
    return-object v1

    .line 109
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/KernelCpuProcReader;->mLastReadTime:J

    iget-wide v6, p0, Lcom/android/internal/os/KernelCpuProcReader;->mThrottleInterval:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-gez v0, :cond_2

    .line 110
    iget v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mContentSize:I

    if-lez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/os/KernelCpuProcReader;->mContentSize:I

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    return-object v0

    .line 114
    :cond_1
    return-object v1

    .line 116
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/KernelCpuProcReader;->mLastReadTime:J

    .line 117
    iput v2, p0, Lcom/android/internal/os/KernelCpuProcReader;->mContentSize:I

    .line 118
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 119
    .local v0, "oldMask":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcReader;->mProc:Ljava/nio/file/Path;

    new-array v4, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 120
    .local v3, "in":Ljava/io/InputStream;
    move v4, v2

    .line 122
    .local v4, "numBytes":I
    :cond_3
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:[B

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:[B

    array-length v6, v6

    sub-int/2addr v6, v4

    invoke-virtual {v3, v5, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v6, v5

    .local v6, "curr":I
    if-ltz v5, :cond_6

    .line 123
    add-int/2addr v4, v6

    .line 124
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:[B

    array-length v5, v5

    if-ne v4, v5, :cond_3

    .line 126
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:[B

    array-length v5, v5

    const/high16 v7, 0x100000

    if-ne v5, v7, :cond_5

    .line 127
    iget v2, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    .line 128
    const-string v2, "KernelCpuProcReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proc file is too large: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/os/KernelCpuProcReader;->mProc:Ljava/nio/file/Path;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    nop

    .line 138
    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 146
    :cond_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 129
    return-object v1

    .line 131
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:[B

    iget-object v8, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:[B

    array-length v8, v8

    shl-int/lit8 v8, v8, 0x1

    .line 132
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 131
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:[B

    goto :goto_0

    .line 135
    :cond_6
    iput v4, p0, Lcom/android/internal/os/KernelCpuProcReader;->mContentSize:I

    .line 136
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:[B

    iget v7, p0, Lcom/android/internal/os/KernelCpuProcReader;->mContentSize:I

    invoke-static {v5, v2, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 137
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    if-eqz v3, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 146
    :cond_7
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 136
    return-object v2

    .line 138
    .end local v4    # "numBytes":I
    .end local v6    # "curr":I
    :catchall_0
    move-exception v2

    move-object v4, v1

    goto :goto_1

    .line 119
    :catch_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 138
    :catchall_1
    move-exception v4

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    :goto_1
    if-eqz v3, :cond_9

    if-eqz v4, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_7
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9
    :goto_2
    throw v2
    :try_end_7
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 146
    .end local v3    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v1

    goto :goto_4

    .line 142
    :catch_2
    move-exception v2

    .line 143
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    iget v3, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    .line 144
    const-string v3, "KernelCpuProcReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mProc:Ljava/nio/file/Path;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 140
    .restart local v2    # "e":Ljava/io/IOException;
    iget v3, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    .line 141
    const-string v3, "KernelCpuProcReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mProc:Ljava/nio/file/Path;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 146
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 147
    nop

    .line 148
    return-object v1

    .line 146
    :goto_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method public setThrottleInterval(J)V
    .locals 2
    .param p1, "throttleInterval"    # J

    .line 158
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 159
    iput-wide p1, p0, Lcom/android/internal/os/KernelCpuProcReader;->mThrottleInterval:J

    .line 161
    :cond_0
    return-void
.end method
