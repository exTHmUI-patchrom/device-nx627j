.class public Lcom/android/internal/os/KernelUidCpuTimeReader;
.super Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.source "KernelUidCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<",
        "Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sProcFile:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final sRemoveUidProcFile:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private mLastSystemTimeUs:Landroid/util/SparseLongArray;

.field private mLastTimeReadUs:J

.field private mLastUserTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 129
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

    .line 43
    const-class v0, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 60
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    return-void
.end method

.method private removeUidsFromKernelModule(II)V
    .locals 5
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .line 201
    sget-object v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing uids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    .line 203
    .local v0, "oldMask":I
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v1, "writer":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 204
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :try_start_2
    invoke-static {v2, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 210
    .end local v1    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 206
    :catch_1
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v2, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to remove uids "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from uid_cputime module"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 210
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 211
    nop

    .line 212
    return-void

    .line 210
    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method


# virtual methods
.method public readAbsolute(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .locals 14
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;

    .line 142
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 143
    .local v0, "oldMask":I
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/uid_cputime/show_uid_stat"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 144
    :try_start_1
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 146
    .local v3, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "uidStr":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 150
    .local v9, "uid":I
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    .line 151
    .local v10, "userTimeUs":J
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    .line 152
    .local v12, "systemTimeUs":J
    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .end local v4    # "uidStr":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "userTimeUs":J
    .end local v12    # "systemTimeUs":J
    goto :goto_0

    .line 154
    .end local v3    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v5    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v2, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 143
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :goto_1
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 157
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 154
    :catch_1
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v2, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read uid_cputime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 157
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 158
    nop

    .line 159
    return-void

    .line 157
    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method protected readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .locals 35
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;

    move-object/from16 v1, p0

    .line 72
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    .line 73
    .local v2, "oldMask":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 74
    .local v3, "nowUs":J
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/uid_cputime/show_uid_stat"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v7, v0

    .line 75
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x20

    invoke-direct {v0, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 77
    .local v0, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "line":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 78
    invoke-virtual {v0, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "uidStr":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0xa

    invoke-static {v11, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 81
    .local v11, "uid":I
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15

    move-wide/from16 v21, v15

    .line 82
    .local v21, "userTimeUs":J
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    .line 84
    .local v14, "systemTimeUs":J
    const/16 v16, 0x0

    .line 85
    .local v16, "notifyCallback":Z
    move-wide/from16 v17, v21

    .line 86
    .local v17, "userTimeDeltaUs":J
    move-wide/from16 v19, v14

    .line 88
    .local v19, "systemTimeDeltaUs":J
    if-eqz p1, :cond_5

    iget-wide v12, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    const-wide/16 v25, 0x0

    cmp-long v12, v12, v25

    if-eqz v12, :cond_5

    .line 89
    iget-object v12, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v12

    .line 90
    .local v12, "index":I
    if-ltz v12, :cond_2

    .line 91
    iget-object v13, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v27

    sub-long v17, v17, v27

    .line 92
    iget-object v13, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v27

    sub-long v19, v19, v27

    .line 94
    move-object/from16 v29, v9

    iget-wide v8, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .end local v9    # "uidStr":Ljava/lang/String;
    .local v29, "uidStr":Ljava/lang/String;
    sub-long v8, v3, v8

    .line 95
    .local v8, "timeDiffUs":J
    cmp-long v13, v17, v25

    if-ltz v13, :cond_1

    cmp-long v13, v19, v25

    if-gez v13, :cond_0

    goto :goto_1

    .line 121
    .end local v8    # "timeDiffUs":J
    :cond_0
    move-wide/from16 v30, v3

    move-wide v8, v5

    move/from16 v34, v12

    move-wide/from16 v3, v21

    goto/16 :goto_2

    .line 96
    .restart local v8    # "timeDiffUs":J
    :cond_1
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v5, "Malformed cpu data for UID="

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v13

    .line 97
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v6, "Time between reads: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    move-wide/from16 v30, v3

    const-wide/16 v27, 0x3e8

    :try_start_2
    div-long v3, v8, v27

    .end local v3    # "nowUs":J
    .local v30, "nowUs":J
    invoke-static {v3, v4, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 100
    const-string v3, "\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v3, "Previous times: u="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v3, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    const-wide/16 v27, 0x3e8

    div-long v3, v3, v27

    invoke-static {v3, v4, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 103
    const-string v3, " s="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v3, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    const-wide/16 v27, 0x3e8

    div-long v3, v3, v27

    invoke-static {v3, v4, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 106
    const-string v3, "\nCurrent times: u="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-wide/from16 v32, v8

    move-wide/from16 v3, v21

    const-wide/16 v21, 0x3e8

    div-long v8, v3, v21

    .end local v8    # "timeDiffUs":J
    .end local v21    # "userTimeUs":J
    .local v3, "userTimeUs":J
    .local v32, "timeDiffUs":J
    invoke-static {v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 108
    const-string v6, " s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move/from16 v34, v12

    const-wide/16 v8, 0x3e8

    div-long v12, v14, v8

    .end local v12    # "index":I
    .local v34, "index":I
    invoke-static {v12, v13, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 110
    const-string v6, "\nDelta: u="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-wide/16 v8, 0x3e8

    div-long v12, v17, v8

    invoke-static {v12, v13, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 112
    const-string v6, " s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-wide/16 v8, 0x3e8

    div-long v12, v19, v8

    invoke-static {v12, v13, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 114
    sget-object v6, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-wide/16 v17, 0x0

    .line 117
    const-wide/16 v19, 0x0

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v32    # "timeDiffUs":J
    goto :goto_2

    .line 121
    .end local v29    # "uidStr":Ljava/lang/String;
    .end local v30    # "nowUs":J
    .end local v34    # "index":I
    .local v3, "nowUs":J
    .restart local v9    # "uidStr":Ljava/lang/String;
    .restart local v12    # "index":I
    .restart local v21    # "userTimeUs":J
    :cond_2
    move-wide/from16 v30, v3

    move-object/from16 v29, v9

    move/from16 v34, v12

    move-wide/from16 v3, v21

    move-wide v8, v5

    .end local v9    # "uidStr":Ljava/lang/String;
    .end local v12    # "index":I
    .end local v21    # "userTimeUs":J
    .local v3, "userTimeUs":J
    .restart local v29    # "uidStr":Ljava/lang/String;
    .restart local v30    # "nowUs":J
    .restart local v34    # "index":I
    :goto_2
    cmp-long v5, v17, v25

    if-nez v5, :cond_4

    cmp-long v5, v19, v25

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/16 v23, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/16 v23, 0x1

    :goto_4
    move/from16 v16, v23

    .end local v34    # "index":I
    goto :goto_5

    .line 123
    .end local v29    # "uidStr":Ljava/lang/String;
    .end local v30    # "nowUs":J
    .local v3, "nowUs":J
    .restart local v9    # "uidStr":Ljava/lang/String;
    .restart local v21    # "userTimeUs":J
    :cond_5
    move-wide/from16 v30, v3

    move-object/from16 v29, v9

    move-wide/from16 v3, v21

    move-wide v8, v5

    .end local v9    # "uidStr":Ljava/lang/String;
    .end local v16    # "notifyCallback":Z
    .end local v17    # "userTimeDeltaUs":J
    .end local v19    # "systemTimeDeltaUs":J
    .local v3, "userTimeUs":J
    .local v5, "notifyCallback":Z
    .local v12, "userTimeDeltaUs":J
    .local v21, "systemTimeDeltaUs":J
    .restart local v29    # "uidStr":Ljava/lang/String;
    .restart local v30    # "nowUs":J
    :goto_5
    move/from16 v5, v16

    move-wide/from16 v12, v17

    move-wide/from16 v21, v19

    iget-object v6, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v11, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 124
    iget-object v6, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v11, v14, v15}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 125
    if-eqz v5, :cond_6

    .line 126
    move-wide/from16 v23, v14

    move-object/from16 v15, p1

    .end local v14    # "systemTimeUs":J
    .local v23, "systemTimeUs":J
    move/from16 v16, v11

    move-wide/from16 v17, v12

    move-wide/from16 v19, v21

    invoke-interface/range {v15 .. v20}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v3    # "userTimeUs":J
    .end local v5    # "notifyCallback":Z
    .end local v11    # "uid":I
    .end local v12    # "userTimeDeltaUs":J
    .end local v21    # "systemTimeDeltaUs":J
    .end local v23    # "systemTimeUs":J
    .end local v29    # "uidStr":Ljava/lang/String;
    :cond_6
    nop

    .line 75
    move-wide v5, v8

    move-wide/from16 v3, v30

    goto/16 :goto_0

    .line 129
    .end local v0    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v10    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_7

    .line 74
    :catch_0
    move-exception v0

    move-object v8, v0

    goto :goto_6

    .line 129
    .end local v30    # "nowUs":J
    .local v3, "nowUs":J
    :cond_7
    move-wide/from16 v30, v3

    .end local v3    # "nowUs":J
    .restart local v30    # "nowUs":J
    const/4 v3, 0x0

    :try_start_3
    invoke-static {v3, v7}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_9

    .end local v30    # "nowUs":J
    .restart local v3    # "nowUs":J
    :catchall_1
    move-exception v0

    move-wide/from16 v30, v3

    const/4 v3, 0x0

    .end local v3    # "nowUs":J
    .restart local v30    # "nowUs":J
    goto :goto_7

    .line 74
    .end local v30    # "nowUs":J
    .restart local v3    # "nowUs":J
    :catch_1
    move-exception v0

    move-wide/from16 v30, v3

    move-object v8, v0

    .end local v3    # "nowUs":J
    .restart local v30    # "nowUs":J
    :goto_6
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    :catchall_2
    move-exception v0

    move-object v3, v8

    :goto_7
    :try_start_5
    invoke-static {v3, v7}, Lcom/android/internal/os/KernelUidCpuTimeReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 132
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v0

    move-wide/from16 v3, v30

    goto :goto_a

    .line 129
    :catch_2
    move-exception v0

    goto :goto_8

    .line 132
    .end local v30    # "nowUs":J
    .restart local v3    # "nowUs":J
    :catchall_4
    move-exception v0

    .end local v3    # "nowUs":J
    .restart local v30    # "nowUs":J
    goto :goto_a

    .line 129
    .end local v30    # "nowUs":J
    .restart local v3    # "nowUs":J
    :catch_3
    move-exception v0

    move-wide/from16 v30, v3

    .line 130
    .end local v3    # "nowUs":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v30    # "nowUs":J
    :goto_8
    :try_start_6
    sget-object v3, Lcom/android/internal/os/KernelUidCpuTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read uid_cputime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 133
    nop

    .line 134
    move-wide/from16 v3, v30

    iput-wide v3, v1, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .line 135
    .end local v30    # "nowUs":J
    .restart local v3    # "nowUs":J
    return-void

    .line 132
    .end local v3    # "nowUs":J
    .restart local v30    # "nowUs":J
    :catchall_5
    move-exception v0

    move-wide/from16 v3, v30

    .end local v30    # "nowUs":J
    .restart local v3    # "nowUs":J
    :goto_a
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v0
.end method

.method protected bridge synthetic readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V

    return-void
.end method

.method public removeUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 169
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 170
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 172
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 174
    :cond_0
    invoke-direct {p0, p1, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsFromKernelModule(II)V

    .line 175
    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 4
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .line 186
    if-ge p2, p1, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 194
    .local v0, "startIndex":I
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    .line 195
    .local v1, "endIndex":I
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseLongArray;->removeAtRange(II)V

    .line 196
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseLongArray;->removeAtRange(II)V

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsFromKernelModule(II)V

    .line 198
    return-void
.end method
