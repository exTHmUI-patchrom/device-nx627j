.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 60
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    return-void
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 22
    .param p1, "wlBuffer"    # [B
    .param p2, "len"    # I
    .param p3, "wakeup_sources"    # Z
    .param p4, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    .line 133
    move-object/from16 v11, p4

    const/4 v12, 0x0

    move v0, v12

    .local v0, "i":I
    :goto_0
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    const/16 v14, 0xa

    if-ge v13, v10, :cond_0

    aget-byte v0, v9, v13

    if-eq v0, v14, :cond_0

    aget-byte v0, v9, v13

    if-eqz v0, :cond_0

    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 134
    .end local v0    # "i":I
    .restart local v13    # "i":I
    :cond_0
    add-int/lit8 v0, v13, 0x1

    move v2, v0

    .local v2, "endIndex":I
    move v3, v0

    .line 136
    .local v3, "startIndex":I
    monitor-enter p0

    .line 137
    :try_start_0
    sget v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    const/4 v15, 0x1

    add-int/2addr v0, v15

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 138
    move v8, v3

    .end local v3    # "startIndex":I
    .local v8, "startIndex":I
    :goto_1
    if-ge v2, v10, :cond_b

    .line 139
    move v0, v8

    .line 140
    .end local v2    # "endIndex":I
    .local v0, "endIndex":I
    move v7, v0

    .end local v0    # "endIndex":I
    .local v7, "endIndex":I
    :goto_2
    if-ge v7, v10, :cond_1

    :try_start_1
    aget-byte v0, v9, v7

    if-eq v0, v14, :cond_1

    aget-byte v0, v9, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 208
    :catchall_0
    move-exception v0

    move v2, v7

    move v3, v8

    goto/16 :goto_a

    .line 144
    :cond_1
    add-int/lit8 v0, v10, -0x1

    if-le v7, v0, :cond_2

    .line 145
    nop

    .line 199
    move v2, v7

    move v14, v8

    goto/16 :goto_8

    .line 148
    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 149
    .local v16, "nameStringArray":[Ljava/lang/String;
    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v0

    .line 153
    .local v17, "wlData":[J
    move v0, v8

    .local v0, "j":I
    :goto_3
    if-ge v0, v7, :cond_4

    .line 154
    :try_start_3
    aget-byte v2, v9, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/16 v2, 0x3f

    aput-byte v2, v9, v0

    .line 153
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 156
    .end local v0    # "j":I
    :cond_4
    nop

    .line 157
    if-eqz p3, :cond_5

    sget-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 158
    :cond_5
    :try_start_4
    sget-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_4
    move-object v5, v0

    const/4 v0, 0x0

    .line 156
    move-object v2, v9

    move v3, v8

    move v4, v7

    move-object/from16 v6, v16

    move/from16 v18, v7

    move-object/from16 v7, v17

    .end local v7    # "endIndex":I
    .local v18, "endIndex":I
    move v14, v8

    move-object v8, v0

    .end local v8    # "startIndex":I
    .local v14, "startIndex":I
    :try_start_5
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    move v2, v0

    .line 161
    .local v2, "parsed":Z
    aget-object v0, v16, v12

    move-object v3, v0

    .line 162
    .local v3, "name":Ljava/lang/String;
    aget-wide v4, v17, v15

    long-to-int v4, v4

    .line 164
    .local v4, "count":I
    const-wide/16 v5, 0x3e8

    const/4 v0, 0x2

    if-eqz p3, :cond_6

    .line 166
    aget-wide v7, v17, v0

    mul-long/2addr v7, v5

    .local v7, "totalTime":J
    goto :goto_5

    .line 169
    .end local v7    # "totalTime":J
    :cond_6
    aget-wide v7, v17, v0

    const-wide/16 v19, 0x1f4

    add-long v7, v7, v19

    div-long/2addr v7, v5

    .restart local v7    # "totalTime":J
    :goto_5
    move-wide v5, v7

    .line 172
    .end local v7    # "totalTime":J
    .local v5, "totalTime":J
    if-eqz v2, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 173
    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 174
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    sget v7, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {v11, v3, v0}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 177
    :cond_7
    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 178
    .local v0, "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v8, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v7, v8, :cond_8

    .line 179
    iget v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v7, v4

    iput v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 180
    iget-wide v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_6

    .line 182
    :cond_8
    iput v4, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 183
    iput-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 184
    sget v7, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 186
    .end local v0    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    :goto_6
    goto :goto_7

    .line 187
    :cond_9
    if-nez v2, :cond_a

    .line 189
    :try_start_6
    const-string v0, "KernelWakelockReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse proc line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    sub-int v12, v18, v14

    invoke-direct {v8, v9, v14, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 193
    goto :goto_7

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v7, "KernelWakelockReader"

    const-string v8, "Failed to parse proc line!"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_7
    add-int/lit8 v8, v18, 0x1

    .line 196
    .end local v2    # "parsed":Z
    .end local v14    # "startIndex":I
    .end local v16    # "nameStringArray":[Ljava/lang/String;
    .end local v17    # "wlData":[J
    .restart local v8    # "startIndex":I
    nop

    .line 138
    move/from16 v2, v18

    const/4 v12, 0x0

    const/16 v14, 0xa

    goto/16 :goto_1

    .line 208
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v5    # "totalTime":J
    .end local v8    # "startIndex":I
    .restart local v14    # "startIndex":I
    :catchall_1
    move-exception v0

    move v3, v14

    move/from16 v2, v18

    goto :goto_a

    .end local v14    # "startIndex":I
    .end local v18    # "endIndex":I
    .local v7, "endIndex":I
    .restart local v8    # "startIndex":I
    :catchall_2
    move-exception v0

    move/from16 v18, v7

    move v14, v8

    move v3, v14

    move/from16 v2, v18

    .end local v7    # "endIndex":I
    .end local v8    # "startIndex":I
    .restart local v14    # "startIndex":I
    .restart local v18    # "endIndex":I
    goto :goto_a

    .line 199
    .end local v14    # "startIndex":I
    .end local v18    # "endIndex":I
    .local v2, "endIndex":I
    .restart local v8    # "startIndex":I
    :cond_b
    move v14, v8

    .end local v8    # "startIndex":I
    .restart local v14    # "startIndex":I
    :goto_8
    :try_start_8
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 200
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_c
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v3, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v4, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v3, v4, :cond_c

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 206
    :cond_d
    sget v3, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v3, v11, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    .line 207
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return-object v11

    .line 208
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :catchall_3
    move-exception v0

    move v3, v14

    goto :goto_a

    .end local v14    # "startIndex":I
    .local v3, "startIndex":I
    :catchall_4
    move-exception v0

    :goto_a
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 11
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .line 68
    const v0, 0x8000

    new-array v0, v0, [B

    .line 71
    .local v0, "buffer":[B
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 73
    .local v1, "startTime":J
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v3

    .line 77
    .local v3, "oldMask":I
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/wakelocks"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .local v5, "is":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 88
    .local v6, "wakeup_sources":Z
    goto :goto_0

    .line 96
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "wakeup_sources":Z
    :catchall_0
    move-exception v4

    goto/16 :goto_4

    .line 92
    :catch_0
    move-exception v5

    goto/16 :goto_3

    .line 79
    :catch_1
    move-exception v5

    .line 81
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/d/wakeup_sources"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .local v6, "is":Ljava/io/FileInputStream;
    const/4 v7, 0x1

    .line 87
    .local v7, "wakeup_sources":Z
    nop

    .line 86
    move-object v5, v6

    move v6, v7

    .line 90
    .end local v7    # "wakeup_sources":Z
    .local v5, "is":Ljava/io/FileInputStream;
    .local v6, "wakeup_sources":Z
    :goto_0
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .line 91
    .local v7, "len":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .end local v5    # "is":Ljava/io/FileInputStream;
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 97
    nop

    .line 96
    nop

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 100
    .local v4, "readTime":J
    const-wide/16 v8, 0x64

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 101
    const-string v8, "KernelWakelockReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reading wakelock stats took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    if-lez v7, :cond_3

    .line 105
    array-length v8, v0

    if-lt v7, v8, :cond_1

    .line 106
    const-string v8, "KernelWakelockReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Kernel wake locks exceeded buffer size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    const/4 v8, 0x0

    .line 109
    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_3

    .line 110
    aget-byte v9, v0, v8

    if-nez v9, :cond_2

    .line 111
    move v7, v8

    .line 112
    goto :goto_2

    .line 109
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 116
    .end local v8    # "i":I
    :cond_3
    :goto_2
    invoke-virtual {p0, v0, v7, v6, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v8

    return-object v8

    .line 83
    .end local v4    # "readTime":J
    .end local v6    # "wakeup_sources":Z
    .end local v7    # "len":I
    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 84
    .local v6, "e2":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v7, "KernelWakelockReader"

    const-string/jumbo v8, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    nop

    .line 96
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 86
    return-object v4

    .line 92
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "e2":Ljava/io/FileNotFoundException;
    :goto_3
    nop

    .line 93
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "KernelWakelockReader"

    const-string v7, "failed to read kernel wakelocks"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    nop

    .line 96
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 94
    return-object v4

    .line 96
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v4
.end method
