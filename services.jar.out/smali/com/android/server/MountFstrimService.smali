.class public Lcom/android/server/MountFstrimService;
.super Ljava/lang/Object;
.source "MountFstrimService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountFstrimService$TrackerReceiver;
    }
.end annotation


# static fields
.field private static ACTION_TRIGGER_TIME:Ljava/lang/String; = null

.field private static final BATTERY_LIMATE:I = 0x14

.field public static final DEBUG:Z

.field private static final NO_CHARGE_LIMATE:J = 0x2a300L

.field private static final TAG:Ljava/lang/String; = "MountFstrimService"


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mCancalTrim:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mFinishCallback:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field mIdleReceiver:Lcom/android/server/MountFstrimService$TrackerReceiver;

.field private mInactivityIdleThreshold:J

.field mPendingIntentIdle:Landroid/app/PendingIntent;

.field mPendingIntentTime:Landroid/app/PendingIntent;

.field mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-string v0, "MountFstrimService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/MountFstrimService;->DEBUG:Z

    .line 56
    const-string v0, "cn.nubia.trigger.time"

    sput-object v0, Lcom/android/server/MountFstrimService;->ACTION_TRIGGER_TIME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/server/MountFstrimService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountFstrimService$1;-><init>(Lcom/android/server/MountFstrimService;)V

    iput-object v0, p0, Lcom/android/server/MountFstrimService;->mFinishCallback:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcom/android/server/MountFstrimService$2;

    invoke-direct {v0, p0}, Lcom/android/server/MountFstrimService$2;-><init>(Lcom/android/server/MountFstrimService;)V

    iput-object v0, p0, Lcom/android/server/MountFstrimService;->mCancalTrim:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/android/server/MountFstrimService;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/MountFstrimService;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MountFstrimService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountFstrimService;

    .line 43
    iget-object v0, p0, Lcom/android/server/MountFstrimService;->mFinishCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountFstrimService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountFstrimService;

    .line 43
    iget-object v0, p0, Lcom/android/server/MountFstrimService;->mCancalTrim:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/MountFstrimService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountFstrimService;

    .line 43
    iget-object v0, p0, Lcom/android/server/MountFstrimService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/server/MountFstrimService;->ACTION_TRIGGER_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/MountFstrimService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountFstrimService;

    .line 43
    iget-object v0, p0, Lcom/android/server/MountFstrimService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MountFstrimService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MountFstrimService;

    .line 43
    iget-object v0, p0, Lcom/android/server/MountFstrimService;->mAlarm:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MountFstrimService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MountFstrimService;

    .line 43
    invoke-direct {p0}, Lcom/android/server/MountFstrimService;->checkAllState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/MountFstrimService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/MountFstrimService;

    .line 43
    iget-wide v0, p0, Lcom/android/server/MountFstrimService;->mInactivityIdleThreshold:J

    return-wide v0
.end method

.method private batteryNotLow()Z
    .locals 5

    .line 304
    const/4 v0, 0x0

    move v1, v0

    .line 306
    .local v1, "level":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountFstrimService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/BatteryManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 310
    nop

    .line 311
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 307
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "MountFstrimService"

    const-string v4, " isBatteryLow error"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return v0
.end method

.method private checkAllState()V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/android/server/MountFstrimService;->mIdleReceiver:Lcom/android/server/MountFstrimService$TrackerReceiver;

    invoke-virtual {v0}, Lcom/android/server/MountFstrimService$TrackerReceiver;->isIdle()Z

    move-result v0

    .line 124
    .local v0, "isIdle":Z
    iget-object v1, p0, Lcom/android/server/MountFstrimService;->mIdleReceiver:Lcom/android/server/MountFstrimService$TrackerReceiver;

    invoke-virtual {v1}, Lcom/android/server/MountFstrimService$TrackerReceiver;->isTimeOk()Z

    move-result v1

    .line 125
    .local v1, "isTimeOk":Z
    sget-boolean v2, Lcom/android/server/MountFstrimService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "MountFstrimService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isIdle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isTimeOk="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mStarted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/MountFstrimService;->mStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/MountFstrimService;->mStarted:Z

    if-eqz v2, :cond_1

    .line 130
    if-nez v0, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/android/server/MountFstrimService;->onStopJob()Z

    goto :goto_1

    .line 135
    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 136
    invoke-direct {p0}, Lcom/android/server/MountFstrimService;->doChargeCheck()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/MountFstrimService;->mStarted:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/server/MountFstrimService;->onStartJob()Z

    goto :goto_0

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/android/server/MountFstrimService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountFstrimService;->mFinishCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/MountFstrimService;->setAlarmTimeController()V

    .line 143
    iget-object v2, p0, Lcom/android/server/MountFstrimService;->mIdleReceiver:Lcom/android/server/MountFstrimService$TrackerReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/MountFstrimService$TrackerReceiver;->setTimeState(Z)V

    .line 146
    :cond_3
    :goto_1
    return-void
.end method

.method private doChargeCheck()Z
    .locals 2

    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, "canTrim":Z
    invoke-direct {p0}, Lcom/android/server/MountFstrimService;->isCharging()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/MountFstrimService;->batteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    const/4 v0, 0x1

    .line 334
    :cond_1
    return v0
.end method

.method private isCharging()Z
    .locals 4

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "isCharge":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountFstrimService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/BatteryManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 300
    nop

    .line 301
    return v0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "MountFstrimService"

    const-string v3, " isCharging error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v0
.end method

.method private moreThanLimit(J)Z
    .locals 9
    .param p1, "minSecond"    # J

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "moreThanLim":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 317
    .local v1, "nowTime":J
    const-wide/16 v3, 0x0

    .line 318
    .local v3, "lastDate":J
    const-string/jumbo v5, "persist.sys.fstrim.lastdate"

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 319
    sub-long v5, v1, v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long v5, v5, p1

    if-ltz v5, :cond_0

    .line 320
    const/4 v0, 0x1

    .line 322
    :cond_0
    sget-boolean v5, Lcom/android/server/MountFstrimService;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 323
    const-string v5, "MountFstrimService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " moreThanLim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1
    return v0
.end method

.method private tomorrowMidnight()Ljava/util/Calendar;
    .locals 3

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    const/16 v1, 0xb

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 163
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 164
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 165
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 166
    return-object v0
.end method


# virtual methods
.method public initIdleStateTracking()V
    .locals 5

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountFstrimService;->mStarted:Z

    .line 67
    iget-object v1, p0, Lcom/android/server/MountFstrimService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/MountFstrimService;->mInactivityIdleThreshold:J

    .line 69
    iget-object v1, p0, Lcom/android/server/MountFstrimService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/MountFstrimService;->mAlarm:Landroid/app/AlarmManager;

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lcom/android/server/MountFstrimService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/MountFstrimService;->mPendingIntentIdle:Landroid/app/PendingIntent;

    .line 74
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lcom/android/server/MountFstrimService;->ACTION_TRIGGER_TIME:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "intentTime":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/MountFstrimService;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountFstrimService;->mPendingIntentTime:Landroid/app/PendingIntent;

    .line 76
    new-instance v0, Lcom/android/server/MountFstrimService$TrackerReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/MountFstrimService$TrackerReceiver;-><init>(Lcom/android/server/MountFstrimService;)V

    iput-object v0, p0, Lcom/android/server/MountFstrimService;->mIdleReceiver:Lcom/android/server/MountFstrimService$TrackerReceiver;

    .line 77
    iget-object v0, p0, Lcom/android/server/MountFstrimService;->mIdleReceiver:Lcom/android/server/MountFstrimService$TrackerReceiver;

    invoke-virtual {v0}, Lcom/android/server/MountFstrimService$TrackerReceiver;->startTracking()V

    .line 78
    return-void
.end method

.method public onStartJob()Z
    .locals 4

    .line 81
    const-string v0, "MountFstrimService"

    const-string/jumbo v1, "onStartJob"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/android/server/MountFstrimService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/server/MountFstrimService;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    iget-object v0, p0, Lcom/android/server/MountFstrimService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/MountFstrimService;->mCancalTrim:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob()Z
    .locals 3

    .line 92
    const-string v0, "MountFstrimService"

    const-string/jumbo v1, "onStopJob"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/server/MountFstrimService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/MountFstrimService;->mFinishCallback:Ljava/lang/Runnable;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public setAlarmTimeController()V
    .locals 6

    .line 149
    invoke-direct {p0}, Lcom/android/server/MountFstrimService;->tomorrowMidnight()Ljava/util/Calendar;

    move-result-object v0

    .line 150
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 151
    .local v1, "timeToMidnight":J
    sget-boolean v3, Lcom/android/server/MountFstrimService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 152
    const-string v3, "MountFstrimService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeToMidnight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountFstrimService;->mAlarm:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/MountFstrimService;->mPendingIntentTime:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 156
    return-void
.end method
