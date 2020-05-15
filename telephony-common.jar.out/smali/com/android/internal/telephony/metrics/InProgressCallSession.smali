.class public Lcom/android/internal/telephony/metrics/InProgressCallSession;
.super Ljava/lang/Object;
.source "InProgressCallSession.java"


# static fields
.field private static final MAX_EVENTS:I = 0x12c


# instance fields
.field public final events:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDropped:Z

.field private mLastElapsedTimeMs:J

.field private mLastKnownPhoneState:I

.field public final phoneId:I

.field public final startElapsedTimeMs:J

.field public final startSystemTimeMin:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    .line 62
    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->roundSessionStart(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    .line 67
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J

    .line 68
    return-void
.end method


# virtual methods
.method public declared-synchronized addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 2
    .param p1, "timestamp"    # J
    .param p3, "builder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    .line 91
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPrivacyFuzzedTimeInterval(JJ)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setDelay(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-virtual {p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 95
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastElapsedTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 85
    .end local p1    # "timestamp":J
    .end local p3    # "builder":Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    throw p1
.end method

.method public addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 77
    return-void
.end method

.method public containsCsCalls()Z
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 104
    .local v1, "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    iget v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 105
    const/4 v0, 0x1

    return v0

    .line 107
    .end local v1    # "event":Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEventsDropped()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mEventsDropped:Z

    return v0
.end method

.method public isPhoneIdle()Z
    .locals 2

    .line 125
    iget v0, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastKnownPhoneState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setLastKnownPhoneState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->mLastKnownPhoneState:I

    .line 117
    return-void
.end method
