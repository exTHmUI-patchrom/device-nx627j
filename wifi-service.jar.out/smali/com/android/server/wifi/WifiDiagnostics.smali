.class Lcom/android/server/wifi/WifiDiagnostics;
.super Lcom/android/server/wifi/BaseWifiDiagnostics;
.source "WifiDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;,
        Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    }
.end annotation


# static fields
.field private static final DATA_STALL_OFFSET_REASON_CODE:I = 0x100

.field private static final DBG:Z = false

.field public static final DRIVER_DUMP_SECTION_HEADER:Ljava/lang/String; = "Driver state dump"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FIRMWARE_DUMP_SECTION_HEADER:Ljava/lang/String; = "FW Memory dump"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MAX_ALERT_REPORTS:I = 0x1

.field public static final MAX_BUG_REPORTS:I = 0x4

.field private static final MinBufferSizes:[I

.field private static final MinWakeupIntervals:[I

.field public static final REPORT_REASON_ASSOC_FAILURE:I = 0x1

.field public static final REPORT_REASON_AUTH_FAILURE:I = 0x2

.field public static final REPORT_REASON_AUTOROAM_FAILURE:I = 0x3

.field public static final REPORT_REASON_DHCP_FAILURE:I = 0x4

.field public static final REPORT_REASON_NONE:I = 0x0

.field public static final REPORT_REASON_NUD_FAILURE:I = 0x9

.field public static final REPORT_REASON_SCAN_FAILURE:I = 0x6

.field public static final REPORT_REASON_UNEXPECTED_DISCONNECT:I = 0x5

.field public static final REPORT_REASON_USER_ACTION:I = 0x7

.field public static final REPORT_REASON_WIFINATIVE_FAILURE:I = 0x8

.field public static final RING_BUFFER_FLAG_HAS_ASCII_ENTRIES:I = 0x2

.field public static final RING_BUFFER_FLAG_HAS_BINARY_ENTRIES:I = 0x1

.field public static final RING_BUFFER_FLAG_HAS_PER_PACKET_ENTRIES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiDiags"

.field public static final VERBOSE_DETAILED_LOG_WITH_WAKEUP:I = 0x3

.field public static final VERBOSE_LOG_WITH_WAKEUP:I = 0x2

.field public static final VERBOSE_NORMAL_LOG:I = 0x1

.field public static final VERBOSE_NO_LOG:I


# instance fields
.field private final RING_BUFFER_BYTE_LIMIT_LARGE:I

.field private final RING_BUFFER_BYTE_LIMIT_SMALL:I

.field private final mBuildProperties:Lcom/android/server/wifi/BuildProperties;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private mIsLoggingEventHandlerRegistered:Z

.field private final mJavaRuntime:Ljava/lang/Runtime;

.field private final mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

.field private final mLog:Lcom/android/server/wifi/WifiLog;

.field private mLogLevel:I

.field private mMaxRingBufferSizeBytes:I

.field private mPacketFatesForLastFailure:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;"
        }
    .end annotation
.end field

.field private mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private final mRingBufferData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/util/ByteArrayRingBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

.field private mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/wifi/WifiDiagnostics;->MinWakeupIntervals:[I

    .line 100
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wifi/WifiDiagnostics;->MinBufferSizes:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xe10
        0x3c
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4000
        0x4000
        0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/BuildProperties;Lcom/android/server/wifi/LastMileLogger;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p3, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p4, "buildProperties"    # Lcom/android/server/wifi/BuildProperties;
    .param p5, "lastMileLogger"    # Lcom/android/server/wifi/LastMileLogger;

    .line 125
    invoke-direct {p0, p3}, Lcom/android/server/wifi/BaseWifiDiagnostics;-><init>(Lcom/android/server/wifi/WifiNative;)V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    .line 397
    new-instance v1, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiDiagnostics;I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    .line 399
    new-instance v1, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiDiagnostics;I)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    .line 401
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    .line 403
    new-instance v1, Lcom/android/server/wifi/WifiDiagnostics$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiDiagnostics$1;-><init>(Lcom/android/server/wifi/WifiDiagnostics;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_SMALL:I

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    .line 131
    iput-object p4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    .line 132
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    .line 133
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_SMALL:I

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    .line 134
    const-string v0, "WifiDiags"

    invoke-virtual {p2, v0}, Lcom/android/server/wifi/WifiInjector;->makeLog(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    .line 135
    iput-object p5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

    .line 136
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiInjector;->getJavaRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mJavaRuntime:Ljava/lang/Runtime;

    .line 137
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 138
    iput-object p2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mContext:Landroid/content/Context;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiDiagnostics;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiDiagnostics;
    .param p1, "x1"    # [B

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiDiagnostics;->compressToBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private captureBugreport(IZ)Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "captureFWDump"    # Z

    .line 538
    new-instance v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiDiagnostics$BugReport;-><init>(Lcom/android/server/wifi/WifiDiagnostics;)V

    .line 539
    .local v0, "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "CaptureBugReport %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->warn(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(J)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 540
    iput p1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->errorCode:I

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->systemTimeMs:J

    .line 542
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelTimeNanos:J

    .line 544
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 547
    .local v5, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v7, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->getRingBufferData(Ljava/lang/String;)Z

    .line 548
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    .line 549
    .local v6, "data":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    invoke-virtual {v6}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getNumBuffers()I

    move-result v7

    new-array v7, v7, [[B

    .line 550
    .local v7, "buffers":[[B
    move v8, v3

    .local v8, "i":I
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getNumBuffers()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 551
    invoke-virtual {v6, v8}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->getBuffer(I)[B

    move-result-object v9

    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    aput-object v9, v7, v8

    .line 550
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 553
    .end local v8    # "i":I
    :cond_0
    iget-object v8, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->ringBuffers:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .end local v5    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local v6    # "data":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    .end local v7    # "buffers":[[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 557
    :cond_1
    const/16 v1, 0x7f

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->getLogcat(I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->logcatLines:Ljava/util/ArrayList;

    .line 558
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiDiagnostics;->getKernelLog(I)Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->kernelLogLines:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    .line 560
    if-eqz p2, :cond_2

    .line 561
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDump()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->fwMemoryDump:[B

    .line 562
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getDriverStateDump()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->mDriverStateDump:[B

    .line 564
    :cond_2
    return-object v0
.end method

.method private clearVerboseLogs()V
    .locals 3

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPacketFatesForLastFailure:Ljava/util/ArrayList;

    .line 444
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->clearVerboseLogs()V

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    .end local v1    # "i":I
    :cond_0
    nop

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->clearVerboseLogs()V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 451
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private compressToBase64([B)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # [B

    .line 580
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 581
    .local v0, "compressor":Ljava/util/zip/Deflater;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 582
    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 583
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 584
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 585
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 587
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 588
    invoke-virtual {v0, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    .line 589
    .local v3, "count":I
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 590
    .end local v3    # "count":I
    goto :goto_0

    .line 593
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 594
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    nop

    .line 601
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 608
    .local v3, "compressed":[B
    array-length v5, v3

    array-length v6, p1

    if-ge v5, v6, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, p1

    .line 607
    :goto_1
    invoke-static {v5, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, "result":Ljava/lang/String;
    return-object v4

    .line 595
    .end local v3    # "compressed":[B
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 596
    .local v3, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v6, "ByteArrayOutputStream close error"

    invoke-interface {v5, v6}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    .line 597
    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 598
    .restart local v4    # "result":Ljava/lang/String;
    return-object v4
.end method

.method private dumpPacketFates(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 683
    const-string v0, "Last failed connection fates"

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPacketFatesForLastFailure:Ljava/util/ArrayList;

    .line 684
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v2

    .line 683
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiDiagnostics;->dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 685
    const-string v0, "Latest fates"

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->fetchPacketFates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/wifi/WifiDiagnostics;->dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 686
    return-void
.end method

.method private static dumpPacketFatesInternal(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "description"    # Ljava/lang/String;
    .param p3, "verbose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;Z)V"
        }
    .end annotation

    .line 690
    .local p2, "fates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$FateReport;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 691
    const-string v2, "No fates fetched for \"%s\"\n"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 692
    return-void

    .line 695
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 696
    const-string v2, "HAL provided zero fates for \"%s\"\n"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 697
    return-void

    .line 700
    :cond_1
    const-string v2, "--------------------- %s ----------------------\n"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .local v0, "verboseOutput":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/wifi/WifiNative$FateReport;->getTableHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiNative$FateReport;

    .line 705
    .local v3, "fate":Lcom/android/server/wifi/WifiNative$FateReport;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative$FateReport;->toTableRowString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    if-eqz p3, :cond_2

    .line 709
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative$FateReport;->toVerboseStringWithPiiAllowed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .end local v3    # "fate":Lcom/android/server/wifi/WifiNative$FateReport;
    :cond_2
    goto :goto_0

    .line 714
    :cond_3
    if-eqz p3, :cond_4

    .line 715
    const-string v2, "\n>>> VERBOSE PACKET FATE DUMP <<<\n\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 716
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    :cond_4
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method private enableVerboseLoggingForDogfood()Z
    .locals 1

    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method private fetchPacketFates()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/WifiNative$FateReport;",
            ">;"
        }
    .end annotation

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v0, "mergedFates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$FateReport;>;"
    const/16 v1, 0x20

    new-array v2, v1, [Lcom/android/server/wifi/WifiNative$TxFateReport;

    .line 658
    .local v2, "txFates":[Lcom/android/server/wifi/WifiNative$TxFateReport;
    iget-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wifi/WifiNative;->getTxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$TxFateReport;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 659
    move v3, v4

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    aget-object v5, v2, v3

    if-eqz v5, :cond_0

    .line 660
    aget-object v5, v2, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 664
    .end local v3    # "i":I
    :cond_0
    new-array v1, v1, [Lcom/android/server/wifi/WifiNative$RxFateReport;

    .line 666
    .local v1, "rxFates":[Lcom/android/server/wifi/WifiNative$RxFateReport;
    iget-object v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Lcom/android/server/wifi/WifiNative;->getRxPktFates(Ljava/lang/String;[Lcom/android/server/wifi/WifiNative$RxFateReport;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    nop

    .local v4, "i":I
    :goto_1
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 668
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 672
    .end local v4    # "i":I
    :cond_1
    new-instance v3, Lcom/android/server/wifi/WifiDiagnostics$2;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiDiagnostics$2;-><init>(Lcom/android/server/wifi/WifiDiagnostics;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 679
    return-object v0
.end method

.method private fetchRingBuffers()Z
    .locals 10

    .line 454
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 457
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 460
    .local v5, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 461
    iget-object v6, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    new-instance v8, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    iget v9, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    invoke-direct {v8, v9}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_1
    iget v6, v5, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 465
    iput-object v5, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 458
    .end local v5    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "no ring buffers found"

    invoke-interface {v0, v3}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    .line 472
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1
.end method

.method private getKernelLog(I)Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .locals 5
    .param p1, "maxLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 641
    new-instance v0, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;-><init>(Lcom/android/server/wifi/WifiDiagnostics;I)V

    .line 642
    .local v0, "lines":Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;, "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->readKernelLog()Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "log":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, "logLines":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 645
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->addLast(Ljava/lang/Object;)V

    .line 644
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 648
    .end local v3    # "i":I
    :cond_0
    return-object v0
.end method

.method private getLogcat(I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "maxLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 620
    .local v0, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mJavaRuntime:Ljava/lang/Runtime;

    const-string v2, "logcat -t %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 621
    .local v1, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 622
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 624
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 625
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 628
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 629
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_1

    .line 630
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 632
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    goto :goto_2

    .line 633
    :catch_0
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v3, "Exception while capturing logcat: %"

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog;->dump(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 636
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private isVerboseLoggingEnabled()Z
    .locals 2

    .line 438
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private resizeRingBuffers()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    .line 477
    .local v1, "byteArrayRingBuffer":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    iget v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->resize(I)V

    .line 478
    .end local v1    # "byteArrayRingBuffer":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

.method private startLoggingAllExceptPerPacketBuffers()Z
    .locals 5

    .line 483
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 485
    return v1

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 490
    .local v3, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    iget v4, v3, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->flag:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 493
    goto :goto_1

    .line 496
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiDiagnostics;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    .line 488
    .end local v3    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 8
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 504
    sget-object v0, Lcom/android/server/wifi/WifiDiagnostics;->MinWakeupIntervals:[I

    iget v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    aget v0, v0, v1

    .line 505
    .local v0, "minInterval":I
    sget-object v1, Lcom/android/server/wifi/WifiDiagnostics;->MinBufferSizes:[I

    iget v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    aget v1, v1, v2

    .line 507
    .local v1, "minDataSize":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v3, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    iget-object v7, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    const/4 v2, 0x0

    return v2

    .line 513
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private stopLoggingAllBuffers()Z
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 526
    .local v3, "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z

    .line 525
    .end local v3    # "buffer":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    .locals 6
    .param p1, "buffer"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 517
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v5, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBuffer(IIIILjava/lang/String;)Z

    .line 520
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized captureAlertData(I[B)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "alertData"    # [B

    monitor-enter p0

    .line 231
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiDiagnostics;->captureBugreport(IZ)Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    move-result-object v0

    .line 232
    .local v0, "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    iput-object p2, v0, Lcom/android/server/wifi/WifiDiagnostics$BugReport;->alertData:[B

    .line 233
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 230
    .end local v0    # "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    .end local p1    # "errorCode":I
    .end local p2    # "alertData":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method public declared-synchronized captureBugReportData(I)V
    .locals 2
    .param p1, "reason"    # I

    monitor-enter p0

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->isVerboseLoggingEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiDiagnostics;->captureBugreport(IZ)Lcom/android/server/wifi/WifiDiagnostics$BugReport;

    move-result-object v0

    .line 226
    .local v0, "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 224
    .end local v0    # "report":Lcom/android/server/wifi/WifiDiagnostics$BugReport;
    .end local p1    # "reason":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 238
    :try_start_0
    invoke-super {p0, p2}, Lcom/android/server/wifi/BaseWifiDiagnostics;->dump(Ljava/io/PrintWriter;)V

    .line 240
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 241
    const-string v2, "--------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert dump "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 244
    const-string v2, "--------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_0
    nop

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 248
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bug dump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 251
    const-string v1, "--------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiDiagnostics;->dumpPacketFates(Ljava/io/PrintWriter;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/wifi/LastMileLogger;->dump(Ljava/io/PrintWriter;)V

    .line 257
    const-string v0, "--------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 237
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method getAlertReports()Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastAlerts:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    return-object v0
.end method

.method getBugReports()Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray<",
            "Lcom/android/server/wifi/WifiDiagnostics$BugReport;",
            ">;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastBugReports:Lcom/android/server/wifi/WifiDiagnostics$LimitedCircularArray;

    return-object v0
.end method

.method declared-synchronized onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 2
    .param p1, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p2, "buffer"    # [B

    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBufferData:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$RingBufferStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/util/ByteArrayRingBuffer;

    .line 418
    .local v0, "ring":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/util/ByteArrayRingBuffer;->appendBuffer([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_0
    monitor-exit p0

    return-void

    .line 416
    .end local v0    # "ring":Lcom/android/server/wifi/util/ByteArrayRingBuffer;
    .end local p1    # "status":Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .end local p2    # "buffer":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method declared-synchronized onWifiAlert(I[B)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "buffer"    # [B

    monitor-enter p0

    .line 424
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 425
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiDiagnostics;->captureAlertData(I[B)V

    .line 426
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics;->incrementAlertReasonCount(I)V

    goto :goto_0

    .line 423
    .end local p1    # "errorCode":I
    .end local p2    # "buffer":[B
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 428
    .restart local p1    # "errorCode":I
    .restart local p2    # "buffer":[B
    :cond_0
    add-int/lit16 p1, p1, -0x100

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiDiagnostics;->captureAlertData(I[B)V

    .line 430
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics;->incrementAlertReasonCount(I)V

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.qti.net.wifi.WIFI_DATA_STALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "data_stall_reasoncode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    return-void

    .line 423
    .end local p1    # "errorCode":I
    .end local p2    # "buffer":[B
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method declared-synchronized reportConnectionEvent(JB)V
    .locals 1
    .param p1, "connectionId"    # J
    .param p3, "event"    # B

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLastMileLogger:Lcom/android/server/wifi/LastMileLogger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/LastMileLogger;->reportConnectionEvent(JB)V

    .line 218
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->fetchPacketFates()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPacketFatesForLastFailure:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_0
    monitor-exit p0

    return-void

    .line 216
    .end local p1    # "connectionId":J
    .end local p3    # "event":B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method public declared-synchronized startLogging(Z)V
    .locals 2
    .param p1, "verboseEnabled"    # Z

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mFirmwareVersion:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getDriverVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mDriverVersion:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSet()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mSupportedFeatureSet:I

    .line 148
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    .line 153
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    .line 154
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    goto :goto_1

    .line 156
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    .line 157
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->enableVerboseLoggingForDogfood()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_LARGE:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->RING_BUFFER_BYTE_LIMIT_SMALL:I

    :goto_0
    iput v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mMaxRingBufferSizeBytes:I

    .line 159
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->clearVerboseLogs()V

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-nez v0, :cond_3

    .line 163
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->fetchRingBuffers()Z

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_4

    .line 168
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingAllBuffers()Z

    .line 169
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->resizeRingBuffers()V

    .line 170
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->startLoggingAllExceptPerPacketBuffers()Z

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getClientInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->startPktFateMonitoring(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v1, "Failed to start packet fate monitoring"

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_5
    monitor-exit p0

    return-void

    .line 143
    .end local p1    # "verboseEnabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw p1
.end method

.method public declared-synchronized startPacketLog()V
    .locals 1

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiDiagnostics;->startLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw v0
.end method

.method public declared-synchronized stopLogging()V
    .locals 3

    monitor-enter p0

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->resetLogHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "Fail to reset log handler"

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiLog;->wC(Ljava/lang/String;)V

    .line 206
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mIsLoggingEventHandlerRegistered:Z

    .line 208
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I

    if-eqz v0, :cond_2

    .line 209
    invoke-direct {p0}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingAllBuffers()Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mRingBuffers:[Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    .line 211
    iput v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLogLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_2
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw v0
.end method

.method public declared-synchronized stopPacketLog()V
    .locals 1

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mPerPacketRingBuffer:Lcom/android/server/wifi/WifiNative$RingBufferStatus;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiDiagnostics;->stopLoggingRingBuffer(Lcom/android/server/wifi/WifiNative$RingBufferStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/wifi/WifiDiagnostics;
    throw v0
.end method

.method public takeBugReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "bugTitle"    # Ljava/lang/String;
    .param p2, "bugDetail"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mBuildProperties:Lcom/android/server/wifi/BuildProperties;

    invoke-interface {v0}, Lcom/android/server/wifi/BuildProperties;->isUserBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    return-void

    .line 270
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiDiagnostics;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/wifi/WifiDiagnostics;->mLog:Lcom/android/server/wifi/WifiLog;

    const-string v2, "error taking bugreport: %"

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog;->err(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wifi/WifiLog$LogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wifi/WifiLog$LogMessage;->flush()V

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
