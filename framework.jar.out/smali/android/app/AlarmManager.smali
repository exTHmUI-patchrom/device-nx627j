.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$AlarmClockInfo;,
        Landroid/app/AlarmManager$ListenerWrapper;,
        Landroid/app/AlarmManager$OnAlarmListener;,
        Landroid/app/AlarmManager$AlarmType;
    }
.end annotation


# static fields
.field public static final ACTION_NEXT_ALARM_CLOCK_CHANGED:Ljava/lang/String; = "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final FLAG_ALLOW_WHILE_IDLE:I = 0x4

.field public static final FLAG_ALLOW_WHILE_IDLE_UNRESTRICTED:I = 0x8

.field public static final FLAG_IDLE_UNTIL:I = 0x10

.field public static final FLAG_STANDALONE:I = 0x1

.field public static final FLAG_WAKE_FROM_IDLE:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final RTC:I = 0x1

.field public static final RTC_WAKEUP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field public static final WINDOW_EXACT:J = 0x0L

.field public static final WINDOW_HEURISTIC:J = -0x1L

.field private static sWrappers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AlarmManager$OnAlarmListener;",
            "Landroid/app/AlarmManager$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlwaysExact:Z

.field private final mContext:Landroid/content/Context;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/app/IAlarmManager;

.field private final mTargetSdkVersion:I


# direct methods
.method constructor <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Landroid/app/IAlarmManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 269
    iput-object p2, p0, Landroid/app/AlarmManager;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AlarmManager;->mPackageName:Ljava/lang/String;

    .line 271
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    .line 272
    iget v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    .line 273
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/AlarmManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 274
    return-void
.end method

.method static synthetic access$000(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/AlarmManager;

    .line 80
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/ArrayMap;
    .locals 1

    .line 80
    sget-object v0, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private legacyExactLength()J
    .locals 2

    .line 277
    iget-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 21
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p11, "listenerTag"    # Ljava/lang/String;
    .param p12, "targetHandler"    # Landroid/os/Handler;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v1, p0

    move-object/from16 v2, p10

    .line 662
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-gez v0, :cond_0

    .line 670
    const-wide/16 v3, 0x0

    .end local p2    # "triggerAtMillis":J
    .local v3, "triggerAtMillis":J
    goto :goto_0

    .line 673
    .end local v3    # "triggerAtMillis":J
    .restart local p2    # "triggerAtMillis":J
    :cond_0
    move-wide/from16 v3, p2

    .end local p2    # "triggerAtMillis":J
    .restart local v3    # "triggerAtMillis":J
    :goto_0
    const/4 v5, 0x0

    .line 674
    .local v5, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    if-eqz v2, :cond_4

    .line 675
    const-class v6, Landroid/app/AlarmManager;

    monitor-enter v6

    .line 676
    :try_start_0
    sget-object v0, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    .line 677
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    .line 680
    :cond_1
    sget-object v0, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$ListenerWrapper;

    move-object v5, v0

    .line 682
    if-nez v5, :cond_2

    .line 683
    new-instance v0, Landroid/app/AlarmManager$ListenerWrapper;

    invoke-direct {v0, v1, v2}, Landroid/app/AlarmManager$ListenerWrapper;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V

    move-object v5, v0

    .line 684
    sget-object v0, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    if-eqz p12, :cond_3

    move-object/from16 v0, p12

    goto :goto_1

    :cond_3
    iget-object v0, v1, Landroid/app/AlarmManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 689
    .local v0, "handler":Landroid/os/Handler;
    :goto_1
    invoke-virtual {v5, v0}, Landroid/app/AlarmManager$ListenerWrapper;->setHandler(Landroid/os/Handler;)V

    .end local v0    # "handler":Landroid/os/Handler;
    goto :goto_2

    .line 686
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 693
    .end local v5    # "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    .local v20, "recipientWrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :cond_4
    :goto_2
    move-object/from16 v20, v5

    :try_start_2
    iget-object v5, v1, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    iget-object v6, v1, Landroid/app/AlarmManager;->mPackageName:Ljava/lang/String;

    move/from16 v7, p1

    move-wide v8, v3

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, v20

    move-object/from16 v17, p11

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    invoke-interface/range {v5 .. v19}, Landroid/app/IAlarmManager;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 697
    nop

    .line 698
    return-void

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method


# virtual methods
.method public cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 936
    if-eqz p1, :cond_2

    .line 940
    const/4 v0, 0x0

    .line 941
    .local v0, "wrapper":Landroid/app/AlarmManager$ListenerWrapper;
    const-class v1, Landroid/app/AlarmManager;

    monitor-enter v1

    .line 942
    :try_start_0
    sget-object v2, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    .line 943
    sget-object v2, Landroid/app/AlarmManager;->sWrappers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager$ListenerWrapper;

    move-object v0, v2

    .line 945
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    if-nez v0, :cond_1

    .line 948
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized alarm listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void

    .line 952
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlarmManager$ListenerWrapper;->cancel()V

    .line 953
    return-void

    .line 945
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 937
    .end local v0    # "wrapper":Landroid/app/AlarmManager$ListenerWrapper;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cancel() called with a null OnAlarmListener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 913
    if-nez p1, :cond_1

    .line 914
    const-string v0, "cancel() called with a null PendingIntent"

    .line 915
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 918
    const-string v1, "AlarmManager"

    const-string v2, "cancel() called with a null PendingIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void

    .line 916
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "cancel() called with a null PendingIntent"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 924
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    nop

    .line 928
    return-void

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1

    .line 1033
    iget-object v0, p0, Landroid/app/AlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 1054
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNextWakeFromIdleTime()J
    .locals 2

    .line 1012
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0}, Landroid/app/IAlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public set(IJJJLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p9, "targetHandler"    # Landroid/os/Handler;
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 654
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v10, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 656
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 618
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 620
    return-void
.end method

.method public set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "tag"    # Ljava/lang/String;
    .param p9, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p10, "targetHandler"    # Landroid/os/Handler;
    .param p11, "workSource"    # Landroid/os/WorkSource;

    .line 635
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 637
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 350
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 352
    return-void
.end method

.method public set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .line 378
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 380
    return-void
.end method

.method public setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    .locals 15
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 609
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v9, p2

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 611
    return-void
.end method

.method public setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 844
    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 846
    return-void
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 542
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 544
    return-void
.end method

.method public setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .line 557
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 559
    return-void
.end method

.method public setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 898
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 900
    return-void
.end method

.method public setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p6, "targetHandler"    # Landroid/os/Handler;

    .line 568
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 570
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .line 794
    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 796
    return-void
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .line 439
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 441
    return-void
.end method

.method public setTime(J)V
    .locals 2
    .param p1, "millis"    # J

    .line 963
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    nop

    .line 967
    return-void

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 985
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    return-void

    .line 990
    :cond_0
    iget v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 991
    const/4 v0, 0x0

    .line 993
    .local v0, "hasTimeZone":Z
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v1

    invoke-virtual {v1, p1}, Llibcore/util/ZoneInfoDB$TzData;->hasTimeZone(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 995
    goto :goto_0

    .line 994
    :catch_0
    move-exception v1

    .line 997
    :goto_0
    if-eqz v0, :cond_1

    .end local v0    # "hasTimeZone":Z
    goto :goto_1

    .line 998
    .restart local v0    # "hasTimeZone":Z
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timezone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not an Olson ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1003
    .end local v0    # "hasTimeZone":Z
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1006
    nop

    .line 1007
    return-void

    .line 1004
    :catch_1
    move-exception v0

    .line 1005
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWindow(IJJLandroid/app/PendingIntent;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .line 489
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 491
    return-void
.end method

.method public setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p8, "targetHandler"    # Landroid/os/Handler;

    .line 504
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v14}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 506
    return-void
.end method
