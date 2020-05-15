.class public Lcom/android/internal/telephony/metrics/TelephonyMetrics;
.super Ljava/lang/Object;
.source "TelephonyMetrics.java"


# static fields
.field private static final DBG:Z = true

.field private static final MAX_COMPLETED_CALL_SESSIONS:I = 0x32

.field private static final MAX_COMPLETED_SMS_SESSIONS:I = 0x1f4

.field private static final MAX_TELEPHONY_EVENTS:I = 0x3e8

.field private static final SESSION_START_PRECISION_MINUTES:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false

.field private static sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;


# instance fields
.field private final mCompletedCallSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletedSmsSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressCallSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/metrics/InProgressCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressSmsSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/metrics/InProgressSmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsCapabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsConnectionState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastServiceState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastSettings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;",
            ">;"
        }
    .end annotation
.end field

.field private mStartElapsedTimeMs:J

.field private mStartSystemTimeMs:J

.field private final mTelephonyEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyEventsDropped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    const-class v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    .line 140
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    .line 146
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 161
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    .line 179
    return-void
.end method

.method private declared-synchronized addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    monitor-enter p0

    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    monitor-exit p0

    return-void

    .line 850
    .end local p1    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private declared-synchronized annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I
    .param p4, "eventBuilder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    monitor-enter p0

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 705
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    :cond_0
    monitor-exit p0

    return-void

    .line 703
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .end local p1    # "timestamp":J
    .end local p3    # "phoneId":I
    .end local p4    # "eventBuilder":Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private declared-synchronized annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I
    .param p4, "eventBuilder"    # Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    monitor-enter p0

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 720
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    :cond_0
    monitor-exit p0

    return-void

    .line 718
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "timestamp":J
    .end local p3    # "phoneId":I
    .end local p4    # "eventBuilder":Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private declared-synchronized buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 6

    monitor-enter p0

    .line 520
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;-><init>()V

    .line 522
    .local v0, "log":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 523
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 524
    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    .line 527
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 528
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 531
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 532
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 535
    invoke-static {}, Lcom/android/internal/telephony/RIL;->getTelephonyRILTimingHistograms()Ljava/util/List;

    move-result-object v1

    .line 536
    .local v1, "rilHistograms":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    .line 537
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 538
    iget-object v3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    new-instance v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v4}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v4, v3, v2

    .line 539
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyHistogram;

    .line 540
    .local v3, "rilHistogram":Landroid/telephony/TelephonyHistogram;
    iget-object v4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    aget-object v4, v4, v2

    .line 542
    .local v4, "histogramProto":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    .line 543
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    .line 544
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    .line 545
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    .line 546
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    .line 547
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    .line 548
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    .line 549
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    .line 550
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    .line 537
    .end local v3    # "rilHistogram":Landroid/telephony/TelephonyHistogram;
    .end local v4    # "histogramProto":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;

    invoke-direct {v2}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    .line 557
    const-string v2, "ro.boot.revision"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    .line 560
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 561
    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    .line 562
    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    .line 564
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 565
    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    .line 566
    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    monitor-exit p0

    return-object v0

    .line 519
    .end local v0    # "log":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .end local v1    # "rilHistograms":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw v0
.end method

.method private static callSessionEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .line 261
    packed-switch p0, :pswitch_data_0

    .line 309
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 307
    :pswitch_0
    const-string v0, "AUDIO_CODEC"

    return-object v0

    .line 305
    :pswitch_1
    const-string v0, "NITZ_TIME"

    return-object v0

    .line 303
    :pswitch_2
    const-string v0, "PHONE_STATE_CHANGED"

    return-object v0

    .line 301
    :pswitch_3
    const-string v0, "IMS_CALL_HANDOVER_FAILED"

    return-object v0

    .line 299
    :pswitch_4
    const-string v0, "IMS_CALL_HANDOVER"

    return-object v0

    .line 297
    :pswitch_5
    const-string v0, "IMS_CALL_TERMINATED"

    return-object v0

    .line 295
    :pswitch_6
    const-string v0, "IMS_CALL_STATE_CHANGED"

    return-object v0

    .line 293
    :pswitch_7
    const-string v0, "IMS_CALL_RECEIVE"

    return-object v0

    .line 291
    :pswitch_8
    const-string v0, "IMS_COMMAND_COMPLETE"

    return-object v0

    .line 289
    :pswitch_9
    const-string v0, "IMS_COMMAND_FAILED"

    return-object v0

    .line 287
    :pswitch_a
    const-string v0, "IMS_COMMAND_RECEIVED"

    return-object v0

    .line 285
    :pswitch_b
    const-string v0, "IMS_COMMAND"

    return-object v0

    .line 283
    :pswitch_c
    const-string v0, "RIL_CALL_LIST_CHANGED"

    return-object v0

    .line 281
    :pswitch_d
    const-string v0, "RIL_CALL_SRVCC"

    return-object v0

    .line 279
    :pswitch_e
    const-string v0, "RIL_CALL_RING"

    return-object v0

    .line 277
    :pswitch_f
    const-string v0, "RIL_RESPONSE"

    return-object v0

    .line 275
    :pswitch_10
    const-string v0, "RIL_REQUEST"

    return-object v0

    .line 273
    :pswitch_11
    const-string v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 271
    :pswitch_12
    const-string v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 269
    :pswitch_13
    const-string v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 267
    :pswitch_14
    const-string v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 265
    :pswitch_15
    const-string v0, "SETTINGS_CHANGED"

    return-object v0

    .line 263
    :pswitch_16
    const-string v0, "EVENT_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p2, "call"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1217
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 1218
    iput v2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    goto :goto_0

    .line 1220
    :cond_0
    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    .line 1222
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 1251
    const/4 v0, 0x0

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    .line 1248
    :pswitch_0
    const/16 v0, 0x9

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1249
    goto :goto_1

    .line 1245
    :pswitch_1
    const/16 v0, 0x8

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1246
    goto :goto_1

    .line 1242
    :pswitch_2
    const/4 v0, 0x7

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1243
    goto :goto_1

    .line 1239
    :pswitch_3
    const/4 v0, 0x6

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1240
    goto :goto_1

    .line 1236
    :pswitch_4
    const/4 v0, 0x5

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1237
    goto :goto_1

    .line 1233
    :pswitch_5
    const/4 v0, 0x4

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1234
    goto :goto_1

    .line 1230
    :pswitch_6
    const/4 v0, 0x3

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1231
    goto :goto_1

    .line 1227
    :pswitch_7
    iput v2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1228
    goto :goto_1

    .line 1224
    :pswitch_8
    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1225
    nop

    .line 1254
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getDisconnectCause()I

    move-result v0

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    .line 1255
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isMultiparty()Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    .line 1256
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertConnectionsToRilCalls(Ljava/util/ArrayList;)[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;)[",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;"
        }
    .end annotation

    .line 1207
    .local p1, "mConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1208
    .local v0, "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1209
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v2, v0, v1

    .line 1210
    aget-object v2, v0, v1

    iput v1, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1211
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1213
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private convertGsmCdmaCodec(I)I
    .locals 1
    .param p1, "c"    # I

    .line 2064
    packed-switch p1, :pswitch_data_0

    .line 2084
    const/4 v0, 0x0

    return v0

    .line 2082
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 2080
    :pswitch_1
    const/4 v0, 0x6

    return v0

    .line 2078
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 2076
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 2074
    :pswitch_4
    const/16 v0, 0xa

    return v0

    .line 2072
    :pswitch_5
    const/16 v0, 0x9

    return v0

    .line 2070
    :pswitch_6
    const/16 v0, 0x8

    return v0

    .line 2068
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 2066
    :pswitch_8
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertImsCodec(I)I
    .locals 1
    .param p1, "c"    # I

    .line 2011
    packed-switch p1, :pswitch_data_0

    .line 2053
    const/4 v0, 0x0

    return v0

    .line 2051
    :pswitch_0
    const/16 v0, 0x14

    return v0

    .line 2049
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 2047
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 2045
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 2043
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 2041
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 2039
    :pswitch_6
    const/16 v0, 0xe

    return v0

    .line 2037
    :pswitch_7
    const/16 v0, 0xd

    return v0

    .line 2035
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 2033
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 2031
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 2029
    :pswitch_b
    const/16 v0, 0x9

    return v0

    .line 2027
    :pswitch_c
    const/16 v0, 0x8

    return v0

    .line 2025
    :pswitch_d
    const/4 v0, 0x7

    return v0

    .line 2023
    :pswitch_e
    const/4 v0, 0x6

    return v0

    .line 2021
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 2019
    :pswitch_10
    const/4 v0, 0x4

    return v0

    .line 2017
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 2015
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 2013
    :pswitch_13
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertProtoToBase64String(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;)Ljava/lang/String;
    .locals 2
    .param p0, "proto"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    .line 469
    nop

    .line 470
    invoke-static {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 469
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private disconnectReasonsKnown([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Z
    .locals 5
    .param p1, "calls"    # [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1200
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1201
    .local v3, "call":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    iget v4, v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    if-nez v4, :cond_0

    return v1

    .line 1200
    .end local v3    # "call":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1203
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V
    .locals 3
    .param p1, "inProgressCallSession"    # Lcom/android/internal/telephony/metrics/InProgressCallSession;

    monitor-enter p0

    .line 809
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    .line 810
    .local v0, "callSession":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 811
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 812
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    .line 813
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    .line 814
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isEventsDropped()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    .line 815
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    .line 816
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    monitor-exit p0

    return-void

    .line 808
    .end local v0    # "callSession":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    .end local p1    # "inProgressCallSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private declared-synchronized finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    .locals 3
    .param p1, "inProgressSmsSession"    # Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    monitor-enter p0

    .line 829
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->getNumExpectedResponses()I

    move-result v0

    if-nez v0, :cond_1

    .line 830
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    .line 831
    .local v0, "smsSession":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 832
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 833
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startSystemTimeMin:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    .line 834
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    .line 835
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->isEventsDropped()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    .line 836
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    .line 837
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 839
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    .end local v0    # "smsSession":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    :cond_1
    monitor-exit p0

    return-void

    .line 828
    .end local p1    # "inProgressSmsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private getCallId(Landroid/telephony/ims/ImsCallSession;)I
    .locals 2
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1602
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1603
    return v0

    .line 1607
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1608
    :catch_0
    move-exception v1

    .line 1609
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 2

    const-class v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    monitor-enter v0

    .line 187
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 191
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized printAllMetrics(Ljava/io/PrintWriter;)V
    .locals 17
    .param p1, "rawWriter"    # Ljava/io/PrintWriter;

    move-object/from16 v1, p0

    monitor-enter p0

    .line 349
    :try_start_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 351
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v2, "Telephony metrics proto:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 352
    const-string v2, "------------------------------------------"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 353
    const-string v2, "Telephony events:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 355
    iget-object v2, v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 356
    .local v4, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 357
    const-string v6, " ["

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 359
    const-string v6, "] "

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 361
    const-string v6, "T="

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    if-ne v6, v5, :cond_0

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    invoke-static {v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v6, v6, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_0
    iget v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    invoke-static {v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 369
    :goto_1
    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 370
    .end local v4    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 373
    const-string v2, "Call sessions:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 376
    iget-object v2, v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 377
    .local v4, "callSession":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start time in minutes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Events dropped: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 380
    const-string v7, "Events: "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 382
    iget-object v7, v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v8, v7

    move v9, v6

    :goto_3
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    .line 383
    .local v10, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 384
    const-string v11, " T="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 385
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    if-ne v11, v5, :cond_2

    .line 386
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v12}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v12, v12, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 388
    :cond_2
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    const/16 v12, 0xa

    if-ne v11, v12, :cond_4

    .line 389
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v11}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 391
    iget-object v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v12, v11

    move v13, v6

    :goto_4
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 392
    .local v14, "call":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v14, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Type = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " State = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " End Reason "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isMultiparty = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v14, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 391
    .end local v14    # "call":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x2

    goto :goto_4

    .line 396
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_5

    .line 397
    :cond_4
    iget v5, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    const/16 v11, 0x16

    if-ne v5, v11, :cond_5

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v11}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 401
    :cond_5
    iget v5, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 382
    .end local v10    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x2

    goto/16 :goto_3

    .line 404
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 405
    .end local v4    # "callSession":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
    nop

    .line 376
    const/4 v5, 0x2

    goto/16 :goto_2

    .line 407
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 408
    const-string v2, "Sms sessions:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 411
    const/4 v2, 0x0

    .line 412
    .local v2, "count":I
    iget-object v4, v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 413
    .local v5, "smsSession":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    add-int/lit8 v2, v2, 0x1

    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] Start time in minutes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 417
    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    if-eqz v7, :cond_8

    .line 418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", events dropped: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 420
    :cond_8
    const-string v7, "Events: "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 422
    iget-object v7, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    array-length v8, v7

    move v9, v6

    :goto_7
    if-ge v9, v8, :cond_b

    aget-object v10, v7, v9

    .line 423
    .local v10, "event":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 424
    const-string v11, " T="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 425
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    invoke-static {v11}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->smsSessionEventToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 427
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    const/4 v12, 0x6

    if-eq v11, v12, :cond_9

    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_9

    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    const/4 v12, 0x7

    if-ne v11, v12, :cond_a

    .line 430
    :cond_9
    const-string v11, " ReqId="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 431
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 432
    const-string v11, " E="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 434
    const-string v11, " RilE="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 436
    const-string v11, " ImsE="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 437
    iget v11, v10, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 422
    .end local v10    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 440
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 441
    .end local v5    # "smsSession":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    goto/16 :goto_6

    .line 443
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 444
    const-string v4, "Modem power stats:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 446
    new-instance v4, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;

    invoke-direct {v4}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object v4

    .line 447
    .local v4, "s":Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Power log duration (battery time) (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Energy consumed by modem (mAh): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of packets sent (tx): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time kernel is active because of cellular data (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time spent in very poor rx signal level (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time modem is in sleep (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time modem is in idle (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time modem is in rx (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Amount of time modem is in tx (ms): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hardware Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ro.boot.revision"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 348
    .end local v0    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2    # "count":I
    .end local v4    # "s":Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .end local p1    # "rawWriter":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw v0
.end method

.method private declared-synchronized reset()V
    .locals 6

    monitor-enter p0

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    .line 484
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    .line 488
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 489
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 491
    .local v2, "key":I
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 492
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v3

    .line 493
    .local v3, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 488
    .end local v2    # "key":I
    .end local v3    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    .end local v1    # "i":I
    :cond_0
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 499
    .restart local v2    # "key":I
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 500
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v3

    .line 501
    .restart local v3    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 496
    .end local v2    # "key":I
    .end local v3    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 504
    .end local v1    # "i":I
    :cond_1
    nop

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 507
    .local v1, "key":I
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 508
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 509
    .local v2, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    .end local v1    # "key":I
    .end local v2    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 511
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw v0
.end method

.method static roundSessionStart(J)I
    .locals 4
    .param p0, "timestamp"    # J

    .line 577
    const-wide/32 v0, 0x493e0

    div-long v0, p0, v0

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static smsSessionEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .line 319
    packed-switch p0, :pswitch_data_0

    .line 339
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :pswitch_0
    const-string v0, "SMS_RECEIVED"

    return-object v0

    .line 335
    :pswitch_1
    const-string v0, "SMS_SEND_RESULT"

    return-object v0

    .line 333
    :pswitch_2
    const-string v0, "SMS_SEND"

    return-object v0

    .line 331
    :pswitch_3
    const-string v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 329
    :pswitch_4
    const-string v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 327
    :pswitch_5
    const-string v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 325
    :pswitch_6
    const-string v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 323
    :pswitch_7
    const-string v0, "SETTINGS_CHANGED"

    return-object v0

    .line 321
    :pswitch_8
    const-string v0, "EVENT_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .locals 8
    .param p1, "phoneId"    # I

    monitor-enter p0

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 733
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_2

    .line 735
    new-instance v1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;-><init>(I)V

    move-object v0, v1

    .line 736
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 741
    .local v1, "serviceState":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    if-eqz v1, :cond_0

    .line 742
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 744
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v4

    .line 742
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 747
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 748
    .local v2, "imsCapabilities":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    if-eqz v2, :cond_1

    .line 749
    iget-wide v3, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v5, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 751
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v5

    .line 749
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 754
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 755
    .local v3, "imsConnectionState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    if-eqz v3, :cond_2

    .line 756
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 758
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v6

    .line 756
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    .end local v1    # "serviceState":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .end local v2    # "imsCapabilities":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .end local v3    # "imsConnectionState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    :cond_2
    monitor-exit p0

    return-object v0

    .line 731
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .end local p1    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private declared-synchronized startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .locals 8
    .param p1, "phoneId"    # I

    monitor-enter p0

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 772
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v0, :cond_2

    .line 774
    new-instance v1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;-><init>(I)V

    move-object v0, v1

    .line 775
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 779
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 780
    .local v1, "serviceState":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    if-eqz v1, :cond_0

    .line 781
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 783
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    .line 781
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 786
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 787
    .local v2, "imsCapabilities":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    if-eqz v2, :cond_1

    .line 788
    iget-wide v3, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v5, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 790
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v5

    .line 788
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 793
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 794
    .local v3, "imsConnectionState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    if-eqz v3, :cond_2

    .line 795
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 797
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v6

    .line 795
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    .end local v1    # "serviceState":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .end local v2    # "imsCapabilities":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .end local v3    # "imsConnectionState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    :cond_2
    monitor-exit p0

    return-object v0

    .line 770
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "phoneId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method private static telephonyEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .line 222
    packed-switch p0, :pswitch_data_0

    .line 250
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :pswitch_1
    const-string v0, "CARRIER_ID_MATCHING"

    return-object v0

    .line 246
    :pswitch_2
    const-string v0, "MODEM_RESTART"

    return-object v0

    .line 244
    :pswitch_3
    const-string v0, "DATA_STALL_ACTION"

    return-object v0

    .line 242
    :pswitch_4
    const-string v0, "DATA_CALL_DEACTIVATE_RESPONSE"

    return-object v0

    .line 240
    :pswitch_5
    const-string v0, "DATA_CALL_DEACTIVATE"

    return-object v0

    .line 238
    :pswitch_6
    const-string v0, "DATA_CALL_LIST_CHANGED"

    return-object v0

    .line 236
    :pswitch_7
    const-string v0, "DATA_CALL_SETUP_RESPONSE"

    return-object v0

    .line 234
    :pswitch_8
    const-string v0, "DATA_CALL_SETUP"

    return-object v0

    .line 232
    :pswitch_9
    const-string v0, "IMS_CAPABILITIES_CHANGED"

    return-object v0

    .line 230
    :pswitch_a
    const-string v0, "IMS_CONNECTION_STATE_CHANGED"

    return-object v0

    .line 228
    :pswitch_b
    const-string v0, "RIL_SERVICE_STATE_CHANGED"

    return-object v0

    .line 226
    :pswitch_c
    const-string v0, "SETTINGS_CHANGED"

    return-object v0

    .line 224
    :pswitch_d
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private toCallSessionRilRequest(I)I
    .locals 3
    .param p1, "r"    # I

    .line 1364
    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0x24

    if-eq p1, v0, :cond_2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1388
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RIL request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/4 v0, 0x0

    return v0

    .line 1386
    :pswitch_0
    const/4 v0, 0x7

    return v0

    .line 1380
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 1374
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1383
    :cond_0
    const/4 v0, 0x6

    return v0

    .line 1369
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 1377
    :cond_2
    const/4 v0, 0x4

    return v0

    .line 1366
    :cond_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .locals 2
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1713
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    .line 1714
    .local v0, "ri":Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    if-eqz p1, :cond_0

    .line 1715
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 1716
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 1717
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, "extraMessage":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1719
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    .line 1722
    .end local v1    # "extraMessage":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private toPdpType(Ljava/lang/String;)I
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .line 1078
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7edefc9b

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x927

    if-eq v0, v1, :cond_2

    const v1, 0x13650

    if-eq v0, v1, :cond_1

    const v1, 0x226607

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "IPV6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_1
    const-string v0, "PPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "IP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v0, "IPV4V6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1088
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return v3

    .line 1086
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1084
    :pswitch_1
    return v4

    .line 1082
    :pswitch_2
    return v2

    .line 1080
    :pswitch_3
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static toPrivacyFuzzedTimeInterval(JJ)I
    .locals 4
    .param p0, "previousTimestamp"    # J
    .param p2, "currentTimestamp"    # J

    .line 606
    sub-long v0, p2, p0

    .line 607
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 608
    const/4 v2, 0x0

    return v2

    .line 609
    :cond_0
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 610
    const/4 v2, 0x1

    return v2

    .line 611
    :cond_1
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 612
    const/4 v2, 0x2

    return v2

    .line 613
    :cond_2
    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 614
    const/4 v2, 0x3

    return v2

    .line 615
    :cond_3
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 616
    const/4 v2, 0x4

    return v2

    .line 617
    :cond_4
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 618
    const/4 v2, 0x5

    return v2

    .line 619
    :cond_5
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    .line 620
    const/4 v2, 0x6

    return v2

    .line 621
    :cond_6
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    .line 622
    const/4 v2, 0x7

    return v2

    .line 623
    :cond_7
    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_8

    .line 624
    const/16 v2, 0x8

    return v2

    .line 625
    :cond_8
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 626
    const/16 v2, 0x9

    return v2

    .line 627
    :cond_9
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gtz v2, :cond_a

    .line 628
    const/16 v2, 0xa

    return v2

    .line 629
    :cond_a
    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 630
    const/16 v2, 0xb

    return v2

    .line 631
    :cond_b
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gtz v2, :cond_c

    .line 632
    const/16 v2, 0xc

    return v2

    .line 633
    :cond_c
    const-wide/32 v2, 0x2bf20

    cmp-long v2, v0, v2

    if-gtz v2, :cond_d

    .line 634
    const/16 v2, 0xd

    return v2

    .line 635
    :cond_d
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_e

    .line 636
    const/16 v2, 0xe

    return v2

    .line 637
    :cond_e
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    .line 638
    const/16 v2, 0xf

    return v2

    .line 639
    :cond_f
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gtz v2, :cond_10

    .line 640
    const/16 v2, 0x10

    return v2

    .line 641
    :cond_10
    const-wide/32 v2, 0x6ddd00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_11

    .line 642
    const/16 v2, 0x11

    return v2

    .line 643
    :cond_11
    const-wide/32 v2, 0xdbba00

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    .line 644
    const/16 v2, 0x12

    return v2

    .line 646
    :cond_12
    const/16 v2, 0x13

    return v2
.end method

.method private toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 657
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    .line 659
    .local v0, "ssProto":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    .line 660
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    .line 662
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 664
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    .line 668
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 669
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    .line 672
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 673
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    .line 676
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 678
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 679
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    .line 682
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 683
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    .line 686
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 687
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    .line 690
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    .line 691
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    .line 692
    return-object v0
.end method

.method private writeOnCallSolicitedResponse(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I

    .line 1437
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1438
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1439
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeOnCallSolicitedResponse: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1441
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1443
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toCallSessionRilRequest(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1444
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    .line 1445
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1441
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1447
    :goto_0
    return-void
.end method

.method private writeOnDeactivateDataCallResponse(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilError"    # I

    .line 1514
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    add-int/lit8 v1, p2, 0x1

    .line 1515
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 1514
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1516
    return-void
.end method

.method private writeOnSetupDataCallResponse(IIIILandroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I
    .param p5, "result"    # Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1404
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    .line 1405
    .local v0, "setupDataCallResponse":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    .line 1407
    .local v1, "dataCall":Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    if-eqz p5, :cond_2

    .line 1408
    nop

    .line 1409
    iget v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->status:I

    :goto_0
    iput v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status:I

    .line 1410
    iget v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->suggestedRetryTime:I

    iput v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis:I

    .line 1412
    iget v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->cid:I

    iput v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    .line 1413
    iget-object v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1414
    iget-object v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    .line 1417
    :cond_1
    iget-object v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1418
    iget-object v2, p5, Landroid/hardware/radio/V1_0/SetupDataCallResult;->ifname:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    .line 1421
    :cond_2
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 1423
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1424
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCallResponse(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 1423
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1425
    return-void
.end method

.method private declared-synchronized writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "response"    # Lcom/android/internal/telephony/SmsResponse;

    monitor-enter p0

    .line 1460
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 1461
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v0, :cond_0

    .line 1462
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "SMS session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1465
    :cond_0
    const/4 v1, 0x0

    .line 1466
    .local v1, "errorCode":I
    if-eqz p4, :cond_1

    .line 1467
    iget v2, p4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    move v1, v2

    .line 1470
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1472
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    .line 1473
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 1474
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 1470
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1477
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->decreaseExpectedResponse()V

    .line 1478
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1480
    .end local v1    # "errorCode":I
    :goto_0
    monitor-exit p0

    return-void

    .line 1459
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "phoneId":I
    .end local p2    # "rilSerial":I
    .end local p3    # "rilError":I
    .end local p4    # "response":Lcom/android/internal/telephony/SmsResponse;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 202
    if-eqz p3, :cond_3

    array-length v0, p3

    if-lez v0, :cond_3

    .line 203
    const/4 v0, 0x0

    aget-object v1, p3, v0

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x746ad8dd

    if-eq v3, v4, :cond_1

    const v0, 0x38a4a0a5

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "--metricsproto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "--metrics"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 208
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertProtoToBase64String(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    goto :goto_2

    .line 205
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->printAllMetrics(Ljava/io/PrintWriter;)V

    .line 206
    nop

    .line 213
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeAudioCodecGsmCdma(II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "audioQuality"    # I

    .line 2120
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 2121
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 2122
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    return-void

    .line 2126
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertGsmCdmaCodec(I)I

    move-result v1

    .line 2127
    .local v1, "codec":I
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2129
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setAudioCodec(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 2127
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 2132
    return-void
.end method

.method public writeAudioCodecIms(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2095
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 2096
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 2097
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    return-void

    .line 2101
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 2102
    .local v1, "localCallProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v1, :cond_1

    .line 2103
    iget-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v2, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertImsCodec(I)I

    move-result v2

    .line 2104
    .local v2, "codec":I
    new-instance v3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2106
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v3

    .line 2107
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setAudioCodec(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v3

    .line 2104
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 2111
    .end local v2    # "codec":I
    :cond_1
    return-void
.end method

.method public writeCarrierIdMatchingEvent(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "version"    # I
    .param p3, "cid"    # I
    .param p4, "mccmnc"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;

    .line 1978
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;-><init>()V

    .line 1979
    .local v0, "carrierIdMatching":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;-><init>()V

    .line 1981
    .local v1, "carrierIdMatchingResult":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 1983
    iput p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    .line 1985
    if-eqz p5, :cond_1

    .line 1986
    iput-object p4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 1987
    iput-object p5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    goto :goto_0

    .line 1991
    :cond_0
    if-eqz p4, :cond_1

    .line 1992
    iput-object p4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 1996
    :cond_1
    :goto_0
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->cidTableVersion:I

    .line 1997
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    .line 1999
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setCarrierIdMatching(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    .line 2000
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 2001
    .local v2, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 2002
    return-void
.end method

.method public writeCarrierKeyEvent(IIZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "keyType"    # I
    .param p3, "isDownloadSuccessful"    # Z

    .line 589
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    .line 590
    .local v0, "carrierKeyChange":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    .line 591
    iput-boolean p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    .line 592
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setCarrierKeyChange(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    .line 593
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 594
    .local v1, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 595
    return-void
.end method

.method public writeDataStallEvent(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "recoveryAction"    # I

    .line 896
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 897
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 896
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 898
    return-void
.end method

.method public writeImsCallState(ILandroid/telephony/ims/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "callState"    # Lcom/android/internal/telephony/Call$State;

    .line 1623
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1643
    const/4 v0, 0x0

    goto :goto_0

    .line 1641
    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    .line 1639
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1637
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_0

    .line 1635
    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 1633
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1631
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 1629
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 1627
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_0

    .line 1625
    :pswitch_8
    const/4 v0, 0x1

    .line 1643
    .local v0, "state":I
    :goto_0
    nop

    .line 1646
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1647
    .local v1, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v1, :cond_0

    .line 1648
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v3, "Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1650
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1652
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1653
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1650
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1655
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized writeImsServiceNewSms(ILjava/lang/String;I)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "result"    # I

    monitor-enter p0

    .line 1852
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1853
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    const/4 v1, 0x0

    .line 1854
    .local v1, "formatCode":I
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x18bf94

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x2ff331e

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "3gpp2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_1
    const-string v3, "3gpp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1860
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_1

    .line 1856
    :pswitch_1
    const/4 v1, 0x1

    .line 1857
    nop

    .line 1864
    :goto_1
    const/4 v2, 0x1

    .line 1865
    .local v2, "smsError":I
    packed-switch p3, :pswitch_data_1

    goto :goto_2

    .line 1875
    :pswitch_2
    const/16 v2, 0x18

    .line 1876
    goto :goto_2

    .line 1871
    :pswitch_3
    const/16 v2, 0xd

    .line 1872
    goto :goto_2

    .line 1879
    :pswitch_4
    const/4 v2, 0x1

    goto :goto_2

    .line 1867
    :pswitch_5
    const/4 v2, 0x0

    .line 1868
    nop

    .line 1883
    :goto_2
    new-instance v3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    const/4 v4, 0x3

    .line 1885
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v3

    .line 1886
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v3

    .line 1887
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v3

    .line 1888
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsServiceErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v3

    .line 1883
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1891
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1892
    monitor-exit p0

    return-void

    .line 1851
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local v1    # "formatCode":I
    .end local v2    # "smsError":I
    .end local p1    # "phoneId":I
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "result":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized writeImsServiceSendSms(ILjava/lang/String;I)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "resultCode"    # I

    monitor-enter p0

    .line 1803
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1804
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    const/4 v1, 0x0

    .line 1805
    .local v1, "formatCode":I
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x18bf94

    if-eq v3, v4, :cond_1

    const v4, 0x2ff331e

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "3gpp2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "3gpp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1811
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_1

    .line 1807
    :pswitch_1
    const/4 v1, 0x1

    .line 1808
    nop

    .line 1815
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    const/4 v3, 0x3

    .line 1816
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 1817
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsServiceErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 1818
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 1815
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1821
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->increaseExpectedResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    monitor-exit p0

    return-void

    .line 1802
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local v1    # "formatCode":I
    .end local p1    # "phoneId":I
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "resultCode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeImsSetFeatureValue(IIII)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I

    .line 909
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    .line 910
    .local v0, "s":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_2

    .line 911
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 916
    :pswitch_0
    if-eqz p4, :cond_0

    move v1, v2

    nop

    :cond_0
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    goto :goto_0

    .line 913
    :pswitch_1
    if-eqz p4, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    .line 914
    nop

    .line 917
    :goto_0
    goto :goto_1

    .line 919
    :cond_2
    if-ne p3, v2, :cond_5

    .line 920
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 925
    :pswitch_2
    if-eqz p4, :cond_3

    move v1, v2

    nop

    :cond_3
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    goto :goto_1

    .line 922
    :pswitch_3
    if-eqz p4, :cond_4

    move v1, v2

    nop

    :cond_4
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    .line 923
    nop

    .line 932
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 933
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 934
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v3

    .line 933
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 935
    return-void

    .line 938
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 940
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 941
    .local v1, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 943
    iget-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v5, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v5, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 945
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v5

    .line 943
    invoke-direct {p0, v3, v4, p1, v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 946
    iget-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v5, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v5, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 948
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 946
    invoke-direct {p0, v3, v4, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 949
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public writeModemRestartEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1958
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    .line 1959
    .local v0, "modemRestart":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    .line 1960
    .local v1, "basebandVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion:Ljava/lang/String;

    .line 1961
    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;->reason:Ljava/lang/String;

    .line 1962
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setModemRestart(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    .line 1963
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 1964
    .local v2, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1965
    return-void
.end method

.method public writeNITZEvent(IJ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "timestamp"    # J

    .line 1942
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 1943
    .local v0, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1945
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1948
    invoke-virtual {v3, p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v3

    .line 1945
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1949
    return-void
.end method

.method public declared-synchronized writeNewCBSms(IIIZZIIJ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "format"    # I
    .param p3, "priority"    # I
    .param p4, "isCMAS"    # Z
    .param p5, "isETWS"    # Z
    .param p6, "serviceCategory"    # I
    .param p7, "serialNumber"    # I
    .param p8, "deliveredTimestamp"    # J

    monitor-enter p0

    .line 1909
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1912
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-eqz p4, :cond_0

    .line 1913
    const/4 v1, 0x2

    .local v1, "type":I
    :goto_0
    goto :goto_1

    .line 1914
    .end local v1    # "type":I
    :cond_0
    if-eqz p5, :cond_1

    .line 1915
    const/4 v1, 0x1

    goto :goto_0

    .line 1917
    :cond_1
    const/4 v1, 0x3

    .line 1920
    .restart local v1    # "type":I
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;-><init>()V

    .line 1921
    .local v2, "cbm":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;
    iput p2, v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgFormat:I

    .line 1922
    add-int/lit8 v3, p3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgPriority:I

    .line 1923
    iput v1, v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgType:I

    .line 1924
    iput p6, v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serviceCategory:I

    .line 1925
    iput p7, v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serialNumber:I

    .line 1926
    iput-wide p8, v2, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->deliveredTimestampMillis:J

    .line 1928
    new-instance v3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1929
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setCellBroadcastMessage(Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v3

    .line 1928
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1932
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1933
    monitor-exit p0

    return-void

    .line 1908
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local v1    # "type":I
    .end local v2    # "cbm":Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;
    .end local p1    # "phoneId":I
    .end local p2    # "format":I
    .end local p3    # "priority":I
    .end local p4    # "isCMAS":Z
    .end local p5    # "isETWS":Z
    .end local p6    # "serviceCategory":I
    .end local p7    # "serialNumber":I
    .end local p8    # "deliveredTimestamp":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public writeOnImsCallHandoverEvent(IILandroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "eventType"    # I
    .param p3, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p4, "srcAccessTech"    # I
    .param p5, "targetAccessTech"    # I
    .param p6, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1758
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1759
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1760
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1762
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1764
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1765
    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1766
    invoke-virtual {v1, p5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1767
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1762
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1769
    :goto_0
    return-void
.end method

.method public writeOnImsCallHeld(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2139
    return-void
.end method

.method public writeOnImsCallHoldFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2142
    return-void
.end method

.method public writeOnImsCallHoldReceived(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2140
    return-void
.end method

.method public writeOnImsCallProgressing(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2135
    return-void
.end method

.method public writeOnImsCallReceive(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1679
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1681
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1683
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1681
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1684
    return-void
.end method

.method public writeOnImsCallResumeFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2146
    return-void
.end method

.method public writeOnImsCallResumeReceived(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2144
    return-void
.end method

.method public writeOnImsCallResumed(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2143
    return-void
.end method

.method public writeOnImsCallStart(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 1664
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1666
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1668
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1669
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1666
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1670
    return-void
.end method

.method public writeOnImsCallStartFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2138
    return-void
.end method

.method public writeOnImsCallStarted(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2136
    return-void
.end method

.method public writeOnImsCallTerminated(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1735
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1736
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1738
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1740
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1741
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1738
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1743
    :goto_0
    return-void
.end method

.method public declared-synchronized writeOnImsCapabilities(IILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "radioTech"    # I
    .param p3, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter p0

    .line 1030
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    .line 1032
    .local v0, "cap":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez p2, :cond_0

    .line 1033
    invoke-virtual {p3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    .line 1035
    invoke-virtual {p3, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    .line 1037
    invoke-virtual {p3, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    goto :goto_0

    .line 1040
    :cond_0
    if-ne p2, v2, :cond_1

    .line 1041
    invoke-virtual {p3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    .line 1043
    invoke-virtual {p3, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    .line 1045
    invoke-virtual {p3, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    .line 1049
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 1052
    .local v1, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 1053
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 1054
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v4

    .line 1053
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 1055
    monitor-exit p0

    return-void

    .line 1058
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1059
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1061
    iget-wide v4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v6, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 1064
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1061
    invoke-direct {p0, v4, v5, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1065
    iget-wide v4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 1068
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v2

    .line 1065
    invoke-direct {p0, v4, v5, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    monitor-exit p0

    return-void

    .line 1029
    .end local v0    # "cap":Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;
    .end local v1    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .end local p1    # "phoneId":I
    .end local p2    # "radioTech":I
    .end local p3    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "command"    # I

    .line 1695
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1696
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1697
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1699
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1701
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1702
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1699
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1704
    :goto_0
    return-void
.end method

.method public declared-synchronized writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "state"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    monitor-enter p0

    .line 982
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    .line 983
    .local v0, "imsState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    .line 985
    if-eqz p3, :cond_1

    .line 986
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    .line 988
    .local v1, "ri":Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 989
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 990
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    .line 991
    .local v2, "extraMessage":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 992
    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    .line 995
    :cond_0
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 999
    .end local v1    # "ri":Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .end local v2    # "extraMessage":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 1000
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 1001
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 1000
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 1002
    monitor-exit p0

    return-void

    .line 1005
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1007
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1008
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 1009
    .local v1, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1011
    iget-wide v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v6, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 1014
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v4

    .line 1011
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1015
    iget-wide v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 1018
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    .line 1015
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    monitor-exit p0

    return-void

    .line 981
    .end local v0    # "imsState":Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;
    .end local v1    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .end local p1    # "phoneId":I
    .end local p2    # "state":I
    .end local p3    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public declared-synchronized writeOnImsServiceSmsSolicitedResponse(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "resultCode"    # I
    .param p3, "errorReason"    # I

    monitor-enter p0

    .line 1491
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    .line 1492
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v0, :cond_0

    .line 1493
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "SMS session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1496
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1498
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsServiceErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1499
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1496
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1502
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->decreaseExpectedResponse()V

    .line 1503
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    :goto_0
    monitor-exit p0

    return-void

    .line 1490
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "phoneId":I
    .end local p2    # "resultCode":I
    .end local p3    # "errorReason":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I
    .param p5, "ret"    # Ljava/lang/Object;

    .line 1529
    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    .line 1535
    :sswitch_0
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnDeactivateDataCallResponse(II)V

    .line 1536
    goto :goto_0

    .line 1531
    :sswitch_1
    move-object v6, p5

    check-cast v6, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 1532
    .local v6, "result":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSetupDataCallResponse(IIIILandroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 1533
    goto :goto_0

    .line 1548
    .end local v6    # "result":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :sswitch_2
    move-object v0, p5

    check-cast v0, Lcom/android/internal/telephony/SmsResponse;

    .line 1549
    .local v0, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V

    .end local v0    # "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    goto :goto_0

    .line 1542
    :sswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnCallSolicitedResponse(IIII)V

    .line 1543
    nop

    .line 1552
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_3
        0x19 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1b -> :sswitch_1
        0x28 -> :sswitch_3
        0x29 -> :sswitch_0
        0x57 -> :sswitch_2
        0x71 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeOnRilTimeoutResponse(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilRequest"    # I

    .line 2147
    return-void
.end method

.method public writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1562
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1573
    const/4 v0, 0x0

    goto :goto_0

    .line 1570
    :pswitch_0
    const/4 v0, 0x3

    .line 1571
    .local v0, "state":I
    goto :goto_0

    .line 1567
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x2

    .line 1568
    .restart local v0    # "state":I
    goto :goto_0

    .line 1564
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x1

    .line 1565
    .restart local v0    # "state":I
    nop

    .line 1573
    :goto_0
    nop

    .line 1577
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1578
    .local v1, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v1, :cond_0

    .line 1579
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v3, "writePhoneState: Call session is missing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1584
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->setLastKnownPhoneState(I)V

    .line 1585
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1586
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->containsCsCalls()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1587
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    .line 1589
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1591
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1589
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1593
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeRilAnswer(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I

    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1330
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1331
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeRilAnswer: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1333
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    const/4 v2, 0x2

    .line 1335
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1336
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1333
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1338
    :goto_0
    return-void
.end method

.method public writeRilCallList(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;)V"
        }
    .end annotation

    .line 1182
    .local p2, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/GsmCdmaConnection;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1183
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1184
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeRilCallList: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1186
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionsToRilCalls(Ljava/util/ArrayList;)[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v1

    .line 1187
    .local v1, "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1190
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1187
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1193
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isPhoneIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->disconnectReasonsKnown([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1194
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    .line 1197
    .end local v1    # "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :cond_1
    :goto_0
    return-void
.end method

.method public writeRilCallRing(I[C)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "response"    # [C

    .line 1292
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1294
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    iget-wide v1, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1296
    return-void
.end method

.method public writeRilDataCallList(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 1156
    .local p2, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 1158
    .local v0, "dataCalls":[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1159
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v2, v0, v1

    .line 1160
    aget-object v2, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v3}, Landroid/telephony/data/DataCallResponse;->getCallId()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    .line 1161
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v2}, Landroid/telephony/data/DataCallResponse;->getIfname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1162
    aget-object v2, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v3}, Landroid/telephony/data/DataCallResponse;->getIfname()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    .line 1164
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v2}, Landroid/telephony/data/DataCallResponse;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1165
    aget-object v2, v0, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {v3}, Landroid/telephony/data/DataCallResponse;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    .line 1158
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1170
    return-void
.end method

.method public writeRilDeactivateDataCall(IIII)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "cid"    # I
    .param p4, "reason"    # I

    .line 1128
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    .line 1129
    .local v0, "deactivateDataCall":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid:I

    .line 1130
    packed-switch p4, :pswitch_data_0

    .line 1141
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    goto :goto_0

    .line 1138
    :pswitch_0
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    .line 1139
    goto :goto_0

    .line 1135
    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    .line 1136
    goto :goto_0

    .line 1132
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    .line 1133
    nop

    .line 1144
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    .line 1145
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 1144
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1146
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;

    .line 1268
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object v0

    .line 1270
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1271
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeRilDial: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1273
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1274
    .local v2, "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1275
    aget-object v3, v2, v4

    const/4 v5, -0x1

    iput v5, v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1276
    aget-object v3, v2, v4

    invoke-direct {p0, p2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1277
    iget-wide v3, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v5, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1279
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1280
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1277
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1283
    .end local v2    # "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :goto_0
    return-void
.end method

.method public writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/GsmCdmaConnection;
    .param p3, "callId"    # I

    .line 1306
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1307
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1308
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeRilHangup: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1310
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1311
    .local v1, "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1312
    aget-object v2, v1, v3

    iput p3, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1313
    aget-object v2, v1, v3

    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1314
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    const/4 v3, 0x3

    .line 1316
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1317
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1314
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1320
    .end local v1    # "calls":[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    :goto_0
    return-void
.end method

.method public declared-synchronized writeRilNewSms(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "tech"    # I
    .param p3, "format"    # I

    monitor-enter p0

    .line 1832
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1834
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1835
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1836
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1834
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1839
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1840
    monitor-exit p0

    return-void

    .line 1831
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "phoneId":I
    .end local p2    # "tech":I
    .end local p3    # "format":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public declared-synchronized writeRilSendSms(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "tech"    # I
    .param p4, "format"    # I

    monitor-enter p0

    .line 1780
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 1782
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1783
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1784
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1785
    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1782
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1788
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->increaseExpectedResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    monitor-exit p0

    return-void

    .line 1779
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .end local p1    # "phoneId":I
    .end local p2    # "rilSerial":I
    .end local p3    # "tech":I
    .end local p4    # "format":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public writeRilSrvcc(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSrvccState"    # I

    .line 1347
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    .line 1348
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    .line 1349
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string v2, "writeRilSrvcc: Call session is missing"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1351
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    add-int/lit8 v2, p2, 0x1

    .line 1353
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1351
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1355
    :goto_0
    return-void
.end method

.method public declared-synchronized writeServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    monitor-enter p0

    .line 866
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 867
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 870
    .local v0, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 871
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 872
    invoke-static {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 871
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 873
    monitor-exit p0

    return-void

    .line 876
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 877
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 879
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 882
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v3

    .line 879
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 883
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object v4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 886
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v3

    .line 883
    invoke-direct {p0, v1, v2, p1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    monitor-exit p0

    return-void

    .line 865
    .end local v0    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .end local p1    # "phoneId":I
    .end local p2    # "serviceState":Landroid/telephony/ServiceState;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    throw p1
.end method

.method public writeSetPreferredNetworkType(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I

    .line 958
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    .line 959
    .local v0, "s":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;
    add-int/lit8 v1, p2, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    .line 962
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 963
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 964
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 963
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    return-void

    .line 968
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 970
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 971
    return-void
.end method

.method public writeSetupDataCall(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "radioTechnology"    # I
    .param p3, "profileId"    # I
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "protocol"    # Ljava/lang/String;

    .line 1104
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    .line 1105
    .local v0, "setupDataCall":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat:I

    .line 1106
    add-int/lit8 v1, p3, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile:I

    .line 1107
    if-eqz p4, :cond_0

    .line 1108
    iput-object p4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn:Ljava/lang/String;

    .line 1110
    :cond_0
    if-eqz p5, :cond_1

    .line 1111
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type:I

    .line 1114
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v1

    .line 1115
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v1

    .line 1114
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1116
    return-void
.end method
