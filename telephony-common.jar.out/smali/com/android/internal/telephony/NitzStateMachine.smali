.class public Lcom/android/internal/telephony/NitzStateMachine;
.super Ljava/lang/Object;
.source "NitzStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NitzStateMachine$DeviceState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SST"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "NitzStateMachine"


# instance fields
.field private final mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

.field private mGotCountryCode:Z

.field private mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/TimeStampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedCountryCodeForNitz:Z

.field private mNitzTimeZoneDetectionSuccessful:Z

.field private final mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/TimeStampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedTimeZoneId:Ljava/lang/String;

.field private final mTimeLog:Landroid/util/LocalLog;

.field private final mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

.field private final mTimeZoneLog:Landroid/util/LocalLog;

.field private final mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 154
    new-instance v0, Lcom/android/internal/telephony/TimeServiceHelper;

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/TimeServiceHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    new-instance v2, Lcom/android/internal/telephony/TimeZoneLookupHelper;

    invoke-direct {v2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;-><init>()V

    .line 154
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/NitzStateMachine;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/TimeServiceHelper;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/TimeZoneLookupHelper;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/TimeServiceHelper;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/TimeZoneLookupHelper;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "timeServiceHelper"    # Lcom/android/internal/telephony/TimeServiceHelper;
    .param p3, "deviceState"    # Lcom/android/internal/telephony/NitzStateMachine$DeviceState;
    .param p4, "timeZoneLookupHelper"    # Lcom/android/internal/telephony/TimeZoneLookupHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mGotCountryCode:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    .line 143
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeLog:Landroid/util/LocalLog;

    .line 144
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    .line 163
    iput-object p1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 165
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, "context":Landroid/content/Context;
    const-string v1, "power"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 168
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string v2, "NitzStateMachine"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    iput-object p3, p0, Lcom/android/internal/telephony/NitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 171
    iput-object p4, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    .line 172
    iput-object p2, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    .line 173
    iget-object v2, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    new-instance v3, Lcom/android/internal/telephony/NitzStateMachine$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/NitzStateMachine$1;-><init>(Lcom/android/internal/telephony/NitzStateMachine;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/TimeServiceHelper;->setListener(Lcom/android/internal/telephony/TimeServiceHelper$Listener;)V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/NitzStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NitzStateMachine;

    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/NitzStateMachine;->handleAutoTimeEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/NitzStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/NitzStateMachine;

    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/NitzStateMachine;->handleAutoTimeZoneEnabled()V

    return-void
.end method

.method private countryUsesUtc(Ljava/lang/String;Lcom/android/internal/telephony/util/TimeStampedValue;)Z
    .locals 3
    .param p1, "isoCountryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/util/TimeStampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;)Z"
        }
    .end annotation

    .line 344
    .local p2, "nitzSignal":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<Lcom/android/internal/telephony/NitzData;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    iget-object v1, p2, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/NitzData;

    .line 346
    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v1

    .line 344
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->countryUsesUtc(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method private handleAutoTimeEnabled()V
    .locals 7

    .line 568
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAutoTimeEnabled: Reverting to NITZ Time: mSavedNitzTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    if-eqz v0, :cond_0

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TimeServiceHelper;->elapsedRealtime()J

    move-result-wide v0

    .line 577
    .local v0, "elapsedRealtime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSavedNitzTime: Reverting to NITZ time elapsedRealtime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mSavedNitzTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-object v3, v3, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 581
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-wide v5, v5, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    .line 582
    .local v3, "adjustedCurrentTimeMillis":J
    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/NitzStateMachine;->setAndBroadcastNetworkSetTime(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    .end local v0    # "elapsedRealtime":J
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "adjustedCurrentTimeMillis":J
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 585
    goto :goto_0

    .line 584
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 587
    :cond_0
    :goto_0
    return-void
.end method

.method private handleAutoTimeZoneEnabled()V
    .locals 3

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAutoTimeZoneEnabled: Reverting to NITZ TimeZone: mSavedTimeZoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "tmpLog":Ljava/lang/String;
    const-string v1, "SST"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NitzStateMachine;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNetworkCountryIsoForPhone()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "iso":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 601
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NitzStateMachine;->updateTimeZoneByNetworkCountryCode(Ljava/lang/String;)V

    .line 604
    .end local v1    # "iso":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private handleTimeFromNitz(Lcom/android/internal/telephony/util/TimeStampedValue;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/util/TimeStampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;)V"
        }
    .end annotation

    .local p1, "nitzSignal":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<Lcom/android/internal/telephony/NitzData;>;"
    move-object/from16 v1, p0

    .line 459
    move-object/from16 v2, p1

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getIgnoreNitz()Z

    move-result v0

    move v3, v0

    .line 460
    .local v3, "ignoreNitz":Z
    if-eqz v3, :cond_0

    .line 461
    const-string v0, "SST"

    const-string v4, "handleTimeFromNitz: Not setting clock because gsm.ignore-nitz is set"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    return-void

    .line 469
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 472
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TimeServiceHelper;->elapsedRealtime()J

    move-result-wide v4

    .line 473
    .local v4, "elapsedRealtime":J
    iget-wide v6, v2, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    sub-long v6, v4, v6

    .line 474
    .local v6, "millisSinceNitzReceived":J
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_6

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 476
    move-wide/from16 v16, v6

    goto/16 :goto_2

    .line 484
    :cond_1
    iget-object v0, v2, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NitzData;

    .line 485
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 486
    .local v8, "adjustedCurrentTimeMillis":J
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TimeServiceHelper;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v8, v10

    .line 488
    .local v10, "gained":J
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TimeServiceHelper;->isTimeDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleTimeFromNitz: nitzSignal="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " adjustedCurrentTimeMillis="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " millisSinceNitzReceived= "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " gained="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "logMsg":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    if-nez v12, :cond_2

    .line 496
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": First update received."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 497
    invoke-direct {v1, v0, v8, v9}, Lcom/android/internal/telephony/NitzStateMachine;->setAndBroadcastNetworkSetTime(Ljava/lang/String;J)V

    .line 527
    move-wide/from16 v16, v6

    move-wide/from16 v18, v10

    goto :goto_1

    .line 499
    :cond_2
    iget-object v12, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v12}, Lcom/android/internal/telephony/TimeServiceHelper;->elapsedRealtime()J

    move-result-wide v12

    iget-object v14, v1, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-wide v14, v14, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    sub-long/2addr v12, v14

    .line 501
    .local v12, "elapsedRealtimeSinceLastSaved":J
    iget-object v14, v1, Lcom/android/internal/telephony/NitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v14}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzUpdateSpacingMillis()I

    move-result v14

    .line 502
    .local v14, "nitzUpdateSpacing":I
    iget-object v15, v1, Lcom/android/internal/telephony/NitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v15}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzUpdateDiffMillis()I

    move-result v15

    .line 503
    .local v15, "nitzUpdateDiff":I
    move-wide/from16 v16, v6

    int-to-long v6, v14

    .end local v6    # "millisSinceNitzReceived":J
    .local v16, "millisSinceNitzReceived":J
    cmp-long v6, v12, v6

    if-gtz v6, :cond_4

    .line 504
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    move-wide/from16 v18, v10

    int-to-long v10, v15

    .end local v10    # "gained":J
    .local v18, "gained":J
    cmp-long v6, v6, v10

    if-lez v6, :cond_3

    goto :goto_0

    .line 511
    :cond_3
    const-string v6, "SST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": Update throttled."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :try_start_2
    iget-object v6, v1, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 520
    return-void

    .line 507
    .end local v18    # "gained":J
    .restart local v10    # "gained":J
    :cond_4
    move-wide/from16 v18, v10

    .end local v10    # "gained":J
    .restart local v18    # "gained":J
    :goto_0
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": New update received."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 508
    invoke-direct {v1, v0, v8, v9}, Lcom/android/internal/telephony/NitzStateMachine;->setAndBroadcastNetworkSetTime(Ljava/lang/String;J)V

    goto :goto_1

    .line 527
    .end local v0    # "logMsg":Ljava/lang/String;
    .end local v12    # "elapsedRealtimeSinceLastSaved":J
    .end local v14    # "nitzUpdateSpacing":I
    .end local v15    # "nitzUpdateDiff":I
    .end local v16    # "millisSinceNitzReceived":J
    .end local v18    # "gained":J
    .restart local v6    # "millisSinceNitzReceived":J
    .restart local v10    # "gained":J
    :cond_5
    move-wide/from16 v16, v6

    move-wide/from16 v18, v10

    .end local v6    # "millisSinceNitzReceived":J
    .end local v10    # "gained":J
    .restart local v16    # "millisSinceNitzReceived":J
    .restart local v18    # "gained":J
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/util/TimeStampedValue;

    .line 528
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v10, v2, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    invoke-direct {v0, v6, v10, v11}, Lcom/android/internal/telephony/util/TimeStampedValue;-><init>(Ljava/lang/Object;J)V

    iput-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    .end local v4    # "elapsedRealtime":J
    .end local v8    # "adjustedCurrentTimeMillis":J
    .end local v16    # "millisSinceNitzReceived":J
    .end local v18    # "gained":J
    :try_start_4
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 531
    nop

    .line 536
    .end local v3    # "ignoreNitz":Z
    goto :goto_3

    .line 476
    .restart local v3    # "ignoreNitz":Z
    .restart local v4    # "elapsedRealtime":J
    .restart local v6    # "millisSinceNitzReceived":J
    :cond_6
    move-wide/from16 v16, v6

    .end local v6    # "millisSinceNitzReceived":J
    .restart local v16    # "millisSinceNitzReceived":J
    :goto_2
    :try_start_5
    const-string v0, "SST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTimeFromNitz: not setting time, unexpected elapsedRealtime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " nitzSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 530
    :try_start_6
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 480
    return-void

    .line 530
    .end local v4    # "elapsedRealtime":J
    .end local v16    # "millisSinceNitzReceived":J
    :catchall_0
    move-exception v0

    iget-object v4, v1, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 532
    .end local v3    # "ignoreNitz":Z
    :catch_0
    move-exception v0

    .line 533
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v3, "SST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTimeFromNitz: Processing NITZ data nitzSignal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_3
    return-void
.end method

.method private handleTimeZoneFromNitz(Lcom/android/internal/telephony/util/TimeStampedValue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/util/TimeStampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;)V"
        }
    .end annotation

    .line 391
    .local p1, "nitzSignal":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<Lcom/android/internal/telephony/NitzData;>;"
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NitzData;

    .line 392
    .local v0, "newNitzData":Lcom/android/internal/telephony/NitzData;
    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNetworkCountryIsoForPhone()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "iso":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .local v2, "zoneId":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 397
    .end local v2    # "zoneId":Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/NitzStateMachine;->mGotCountryCode:Z

    if-nez v2, :cond_1

    .line 398
    const/4 v2, 0x0

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 400
    iget-object v2, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    .line 401
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v2

    .line 402
    .local v2, "lookupResult":Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    nop

    .end local v2    # "lookupResult":Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    :cond_2
    move-object v2, v3

    .line 403
    .local v2, "zoneId":Ljava/lang/String;
    goto :goto_1

    .line 408
    .end local v2    # "zoneId":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitz(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v2

    .line 410
    .local v2, "lookupResult":Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    const-string v4, "SST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTimeZoneFromNitz: guessZoneIdByNitz returned lookupResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    nop

    .end local v2    # "lookupResult":Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    :cond_4
    move-object v2, v3

    .line 417
    .local v2, "zoneId":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-object v4, v4, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/NitzData;

    .line 419
    invoke-static {v0, v4}, Lcom/android/internal/telephony/NitzStateMachine;->offsetInfoDiffers(Lcom/android/internal/telephony/NitzData;Lcom/android/internal/telephony/NitzData;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 423
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    .line 424
    iput-object p1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    .line 427
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTimeZoneFromNitz: nitzSignal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " zoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " iso="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mGotCountryCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/NitzStateMachine;->mGotCountryCode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mNeedCountryCodeForNitz="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isTimeZoneDetectionEnabled()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    .line 432
    invoke-virtual {v5}, Lcom/android/internal/telephony/TimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "tmpLog":Ljava/lang/String;
    const-string v5, "SST"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v5, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v5, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 438
    if-eqz v2, :cond_8

    .line 439
    iget-object v5, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v5}, Lcom/android/internal/telephony/TimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 440
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NitzStateMachine;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 442
    :cond_7
    iput-boolean v3, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    .line 443
    iput-object v2, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v0    # "newNitzData":Lcom/android/internal/telephony/NitzData;
    .end local v1    # "iso":Ljava/lang/String;
    .end local v2    # "zoneId":Ljava/lang/String;
    .end local v4    # "tmpLog":Ljava/lang/String;
    :cond_8
    goto :goto_2

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "SST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTimeZoneFromNitz: Processing NITZ data nitzSignal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_2
    return-void
.end method

.method private static nitzOffsetMightBeBogus(Lcom/android/internal/telephony/NitzData;)Z
    .locals 1
    .param p0, "nitzData"    # Lcom/android/internal/telephony/NitzData;

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static offsetInfoDiffers(Lcom/android/internal/telephony/NitzData;Lcom/android/internal/telephony/NitzData;)Z
    .locals 2
    .param p0, "one"    # Lcom/android/internal/telephony/NitzData;
    .param p1, "two"    # Lcom/android/internal/telephony/NitzData;

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 453
    :goto_1
    return v0
.end method

.method private setAndBroadcastNetworkSetTime(Ljava/lang/String;J)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndBroadcastNetworkSetTime: Wake lock not held while setting device time (msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAndBroadcastNetworkSetTime: [Setting time to time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 559
    const-string v0, "SST"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/TimeServiceHelper;->setDeviceTime(J)V

    .line 563
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNITZEvent(IJ)V

    .line 564
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 3
    .param p1, "zoneId"    # Ljava/lang/String;

    .line 541
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndBroadcastNetworkSetTimeZone: zoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/TimeServiceHelper;->setDeviceTimeZone(Ljava/lang/String;)V

    .line 545
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndBroadcastNetworkSetTimeZone: called setDeviceTimeZone() zoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void
.end method

.method private updateTimeZoneByNetworkCountryCode(Ljava/lang/String;)V
    .locals 4
    .param p1, "iso"    # Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    .line 648
    invoke-virtual {v1}, Lcom/android/internal/telephony/TimeServiceHelper;->currentTimeMillis()J

    move-result-wide v1

    .line 647
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;

    move-result-object v0

    .line 652
    .local v0, "lookupResult":Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;
    if-eqz v0, :cond_0

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTimeZoneByNetworkCountryCode: set time lookupResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " iso="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "logMsg":Ljava/lang/String;
    const-string v2, "SST"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v2, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 661
    iget-object v2, v0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NitzStateMachine;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 662
    .end local v1    # "logMsg":Ljava/lang/String;
    goto :goto_0

    .line 664
    :cond_0
    const-string v1, "SST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTimeZoneByNetworkCountryCode: no good zone for iso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lookupResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 629
    const-string v0, " Time Logs:"

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 634
    const-string v0, " Time zone Logs:"

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 638
    return-void
.end method

.method public dumpState(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedCountryCodeForNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLatestNitzSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNitzTimeZoneDetectionSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 623
    return-void
.end method

.method public getCachedNitzData()Lcom/android/internal/telephony/NitzData;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-object v0, v0, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NitzData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNitzTimeZoneDetectionSuccessful()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    return v0
.end method

.method public getSavedTimeZoneId()Ljava/lang/String;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public handleNetworkAvailable()V
    .locals 3

    .line 354
    const-string v0, "SST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkAvailable: mNitzTimeZoneDetectionSuccessful="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Setting mNitzTimeZoneDetectionSuccessful=false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    .line 359
    return-void
.end method

.method public handleNetworkCountryCodeSet(Z)V
    .locals 17
    .param p1, "countryChanged"    # Z

    move-object/from16 v1, p0

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mGotCountryCode:Z

    .line 200
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNetworkCountryIsoForPhone()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "isoCountryCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    .line 203
    invoke-virtual {v0}, Lcom/android/internal/telephony/TimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/NitzStateMachine;->updateTimeZoneByNetworkCountryCode(Ljava/lang/String;)V

    .line 207
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    if-eqz v0, :cond_c

    .line 212
    :cond_1
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    .line 213
    invoke-virtual {v0}, Lcom/android/internal/telephony/TimeServiceHelper;->isTimeZoneSettingInitialized()Z

    move-result v4

    .line 215
    .local v4, "isTimeZoneSettingInitialized":Z
    const-string v0, "SST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNetworkCountryCodeSet: isTimeZoneSettingInitialized="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mLatestNitzSignal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isoCountryCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    iget-object v6, v1, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-object v6, v6, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/NitzData;

    .line 228
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitz(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v0

    .line 230
    .local v0, "lookupResult":Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    const-string v6, "SST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNetworkCountryCodeSet: guessZoneIdByNitz() returned lookupResult="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    nop

    .end local v0    # "lookupResult":Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    :cond_2
    move-object v0, v5

    .line 234
    .local v0, "zoneId":Ljava/lang/String;
    goto/16 :goto_2

    .end local v0    # "zoneId":Ljava/lang/String;
    :cond_3
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    if-nez v0, :cond_4

    .line 235
    const/4 v0, 0x0

    .line 237
    .restart local v0    # "zoneId":Ljava/lang/String;
    const-string v5, "SST"

    const-string v6, "handleNetworkCountryCodeSet: No cached NITZ data available, not setting zone"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 241
    .end local v0    # "zoneId":Ljava/lang/String;
    :cond_4
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-object v0, v0, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NitzData;

    invoke-static {v0}, Lcom/android/internal/telephony/NitzStateMachine;->nitzOffsetMightBeBogus(Lcom/android/internal/telephony/NitzData;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    .line 243
    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/NitzStateMachine;->countryUsesUtc(Ljava/lang/String;Lcom/android/internal/telephony/util/TimeStampedValue;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 253
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 255
    .local v5, "zone":Ljava/util/TimeZone;
    const-string v0, "SST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNetworkCountryCodeSet: NITZ looks bogus, maybe using current default zone to adjust the system clock, mNeedCountryCodeForNitz="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mLatestNitzSignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " zone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "zoneId":Ljava/lang/String;
    iget-boolean v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    if-eqz v0, :cond_6

    .line 264
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-object v0, v0, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NitzData;

    move-object v7, v0

    .line 268
    .local v7, "nitzData":Lcom/android/internal/telephony/NitzData;
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 272
    invoke-virtual {v7}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v8

    .line 273
    .local v8, "ctm":J
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TimeServiceHelper;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-wide v12, v0, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    sub-long/2addr v10, v12

    add-long/2addr v10, v8

    .line 275
    .local v10, "delayAdjustedCtm":J
    invoke-virtual {v5, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v12, v0

    .line 277
    .local v12, "tzOffset":J
    const-string v0, "SST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleNetworkCountryCodeSet: tzOffset="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " delayAdjustedCtm="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {v10, v11}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 277
    invoke-static {v0, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TimeServiceHelper;->isTimeDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    sub-long v14, v10, v12

    .line 284
    .local v14, "timeZoneAdjustedCtm":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNetworkCountryCodeSet: setting time timeZoneAdjustedCtm="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {v14, v15}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {v1, v0, v14, v15}, Lcom/android/internal/telephony/NitzStateMachine;->setAndBroadcastNetworkSetTime(Ljava/lang/String;J)V

    .line 288
    .end local v0    # "msg":Ljava/lang/String;
    .end local v14    # "timeZoneAdjustedCtm":J
    goto :goto_0

    .line 290
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-object v3, v1, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-object v3, v3, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 291
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v14, v1, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-wide v14, v14, Lcom/android/internal/telephony/util/TimeStampedValue;->mElapsedRealtime:J

    invoke-direct {v0, v3, v14, v15}, Lcom/android/internal/telephony/util/TimeStampedValue;-><init>(Ljava/lang/Object;J)V

    iput-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    .line 294
    const-string v0, "SST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleNetworkCountryCodeSet:adjusting time mSavedNitzTime="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/internal/telephony/NitzStateMachine;->mSavedNitzTime:Lcom/android/internal/telephony/util/TimeStampedValue;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v8    # "ctm":J
    .end local v10    # "delayAdjustedCtm":J
    .end local v12    # "tzOffset":J
    :goto_0
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 300
    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/android/internal/telephony/NitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 302
    .end local v5    # "zone":Ljava/util/TimeZone;
    .end local v7    # "nitzData":Lcom/android/internal/telephony/NitzData;
    :cond_6
    :goto_1
    nop

    .line 313
    move-object v0, v6

    goto :goto_2

    .line 303
    .end local v6    # "zoneId":Ljava/lang/String;
    :cond_7
    iget-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    iget-object v0, v0, Lcom/android/internal/telephony/util/TimeStampedValue;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NitzData;

    .line 304
    .local v0, "nitzData":Lcom/android/internal/telephony/NitzData;
    iget-object v3, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    .line 305
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v3

    .line 307
    .local v3, "lookupResult":Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    const-string v6, "SST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNetworkCountryCodeSet: using guessZoneIdByNitzCountry(nitzData, isoCountryCode), nitzData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " isoCountryCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " lookupResult="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-eqz v3, :cond_8

    iget-object v5, v3, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    nop

    .end local v0    # "nitzData":Lcom/android/internal/telephony/NitzData;
    .end local v3    # "lookupResult":Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    :cond_8
    move-object v0, v5

    .line 316
    .local v0, "zoneId":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNetworkCountryCodeSet: isTimeZoneSettingInitialized="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mLatestNitzSignal="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/telephony/NitzStateMachine;->mLatestNitzSignal:Lcom/android/internal/telephony/util/TimeStampedValue;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isoCountryCode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mNeedCountryCodeForNitz="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " zoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "tmpLog":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v5, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 324
    if-eqz v0, :cond_a

    .line 325
    const-string v5, "SST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNetworkCountryCodeSet: zoneId != null, zoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v5, v1, Lcom/android/internal/telephony/NitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/TimeServiceHelper;

    invoke-virtual {v5}, Lcom/android/internal/telephony/TimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 327
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/NitzStateMachine;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_3

    .line 329
    :cond_9
    const-string v5, "SST"

    const-string v6, "handleNetworkCountryCodeSet: skip changing zone as isTimeZoneDetectionEnabled() is false"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_3
    iget-boolean v5, v1, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    if-eqz v5, :cond_b

    .line 333
    iput-object v0, v1, Lcom/android/internal/telephony/NitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    goto :goto_4

    .line 336
    :cond_a
    const-string v5, "SST"

    const-string v6, "handleNetworkCountryCodeSet: lookupResult == null, do nothing"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_b
    :goto_4
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/internal/telephony/NitzStateMachine;->mNeedCountryCodeForNitz:Z

    .line 340
    .end local v0    # "zoneId":Ljava/lang/String;
    .end local v3    # "tmpLog":Ljava/lang/String;
    .end local v4    # "isTimeZoneSettingInitialized":Z
    :cond_c
    return-void
.end method

.method public handleNetworkUnavailable()V
    .locals 2

    .line 366
    const-string v0, "SST"

    const-string v1, "handleNetworkUnavailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mGotCountryCode:Z

    .line 370
    iput-boolean v0, p0, Lcom/android/internal/telephony/NitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    .line 371
    return-void
.end method

.method public handleNitzReceived(Lcom/android/internal/telephony/util/TimeStampedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/util/TimeStampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p1, "nitzSignal":Lcom/android/internal/telephony/util/TimeStampedValue;, "Lcom/android/internal/telephony/util/TimeStampedValue<Lcom/android/internal/telephony/NitzData;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NitzStateMachine;->handleTimeZoneFromNitz(Lcom/android/internal/telephony/util/TimeStampedValue;)V

    .line 386
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NitzStateMachine;->handleTimeFromNitz(Lcom/android/internal/telephony/util/TimeStampedValue;)V

    .line 387
    return-void
.end method
