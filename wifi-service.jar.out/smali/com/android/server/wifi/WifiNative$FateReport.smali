.class abstract Lcom/android/server/wifi/WifiNative$FateReport;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FateReport"
.end annotation


# static fields
.field static final MAX_DRIVER_TIMESTAMP_MSEC:I = 0x418937

.field static final USEC_PER_MSEC:I = 0x3e8

.field static final dateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field final mDriverTimestampUSec:J

.field final mEstimatedWallclockMSec:J

.field final mFate:B

.field final mFrameBytes:[B

.field final mFrameType:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2675
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiNative$FateReport;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(BJB[B)V
    .locals 2
    .param p1, "fate"    # B
    .param p2, "driverTimestampUSec"    # J
    .param p4, "frameType"    # B
    .param p5, "frameBytes"    # [B

    .line 2683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2684
    iput-byte p1, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFate:B

    .line 2685
    iput-wide p2, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    .line 2686
    iget-wide v0, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    .line 2687
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNative$FateReport;->convertDriverTimestampUSecToWallclockMSec(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mEstimatedWallclockMSec:J

    .line 2688
    iput-byte p4, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    .line 2689
    iput-object p5, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    .line 2690
    return-void
.end method

.method private static convertDriverTimestampUSecToWallclockMSec(J)J
    .locals 12
    .param p0, "driverTimestampUSec"    # J

    .line 2756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2757
    .local v0, "wallclockMillisNow":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2758
    .local v2, "boottimeMillisNow":J
    const-wide/16 v4, 0x3e8

    div-long v4, p0, v4

    .line 2760
    .local v4, "driverTimestampMillis":J
    const-wide/32 v6, 0x418937

    rem-long v8, v2, v6

    .line 2761
    .local v8, "boottimeTimestampMillis":J
    cmp-long v10, v8, v4

    if-gez v10, :cond_0

    .line 2771
    add-long/2addr v8, v6

    .line 2774
    :cond_0
    sub-long v6, v8, v4

    .line 2775
    .local v6, "millisSincePacketTimestamp":J
    sub-long v10, v0, v6

    return-wide v10
.end method

.method private static frameTypeToString(B)Ljava/lang/String;
    .locals 1
    .param p0, "frameType"    # B

    .line 2738
    packed-switch p0, :pswitch_data_0

    .line 2746
    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2744
    :pswitch_0
    const-string v0, "802.11 management"

    return-object v0

    .line 2742
    :pswitch_1
    const-string v0, "data"

    return-object v0

    .line 2740
    :pswitch_2
    const-string v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTableHeader()Ljava/lang/String;
    .locals 13

    .line 2724
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2725
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2726
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "\n%-15s  %-12s  %-9s  %-32s  %-12s  %-23s  %s\n"

    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Time usec"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Walltime"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "Direction"

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "Fate"

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-string v5, "Protocol"

    const/4 v10, 0x4

    aput-object v5, v4, v10

    const-string v5, "Type"

    const/4 v11, 0x5

    aput-object v5, v4, v11

    const-string v5, "Result"

    const/4 v12, 0x6

    aput-object v5, v4, v12

    invoke-virtual {v1, v2, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2728
    const-string v2, "%-15s  %-12s  %-9s  %-32s  %-12s  %-23s  %s\n"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "---------"

    aput-object v4, v3, v6

    const-string v4, "--------"

    aput-object v4, v3, v7

    const-string v4, "---------"

    aput-object v4, v3, v8

    const-string v4, "----"

    aput-object v4, v3, v9

    const-string v4, "--------"

    aput-object v4, v3, v10

    const-string v4, "----"

    aput-object v4, v3, v11

    const-string v4, "------"

    aput-object v4, v3, v12

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2730
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected abstract directionToString()Ljava/lang/String;
.end method

.method protected abstract fateToString()Ljava/lang/String;
.end method

.method public toTableRowString()Ljava/lang/String;
    .locals 9

    .line 2693
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2694
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2695
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Lcom/android/server/wifi/util/FrameParser;

    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/util/FrameParser;-><init>(B[B)V

    .line 2696
    .local v2, "parser":Lcom/android/server/wifi/util/FrameParser;
    sget-object v3, Lcom/android/server/wifi/WifiNative$FateReport;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2697
    const-string v3, "%-15s  %12s  %-9s  %-32s  %-12s  %-23s  %s\n"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    .line 2698
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/server/wifi/WifiNative$FateReport;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mEstimatedWallclockMSec:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 2699
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 2700
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->directionToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->fateToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    iget-object v5, v2, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v5, v4, v6

    iget-object v5, v2, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    const/4 v6, 0x5

    aput-object v5, v4, v6

    iget-object v5, v2, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    const/4 v6, 0x6

    aput-object v5, v4, v6

    .line 2697
    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2702
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toVerboseStringWithPiiAllowed()Ljava/lang/String;
    .locals 10

    .line 2706
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2707
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2708
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Lcom/android/server/wifi/util/FrameParser;

    iget-byte v3, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/util/FrameParser;-><init>(B[B)V

    .line 2709
    .local v2, "parser":Lcom/android/server/wifi/util/FrameParser;
    const-string v3, "Frame direction: %s\n"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->directionToString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2710
    const-string v3, "Frame timestamp: %d\n"

    new-array v5, v4, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2711
    const-string v3, "Frame fate: %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->fateToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2712
    const-string v3, "Frame type: %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    iget-byte v6, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameType:B

    invoke-static {v6}, Lcom/android/server/wifi/WifiNative$FateReport;->frameTypeToString(B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2713
    const-string v3, "Frame protocol: %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2714
    const-string v3, "Frame protocol type: %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2715
    const-string v3, "Frame length: %d\n"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2716
    const-string v3, "Frame bytes"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2717
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$FateReport;->mFrameBytes:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2718
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2719
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
