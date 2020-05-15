.class public Lcom/android/internal/util/WakeupMessage;
.super Ljava/lang/Object;
.source "WakeupMessage.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field protected final mArg1:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mArg2:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mCmd:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mCmdName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mObj:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mRunnable:Ljava/lang/Runnable;

.field private mScheduled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I

    .line 75
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "arg1"    # I

    .line 66
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "arg1"    # I
    .param p6, "arg2"    # I

    .line 71
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "cmd"    # I
    .param p5, "arg1"    # I
    .param p6, "arg2"    # I
    .param p7, "obj"    # Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/android/internal/util/WakeupMessage;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    .line 56
    iput-object p2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p3, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    .line 58
    iput p4, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    .line 59
    iput p5, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    .line 60
    iput p6, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    .line 61
    iput-object p7, p0, Lcom/android/internal/util/WakeupMessage;->mObj:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mRunnable:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cmdName"    # Ljava/lang/String;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/android/internal/util/WakeupMessage;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    .line 80
    iput-object p2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p3, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    .line 83
    iput v0, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    .line 84
    iput v0, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mObj:Ljava/lang/Object;

    .line 86
    iput-object p4, p0, Lcom/android/internal/util/WakeupMessage;->mRunnable:Ljava/lang/Runnable;

    .line 87
    return-void
.end method

.method private static getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/util/WakeupMessage;
    throw v0
.end method

.method public onAlarm()V
    .locals 6

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    .line 124
    .local v0, "stillScheduled":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v0, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/internal/util/WakeupMessage;->mRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/internal/util/WakeupMessage;->mCmd:I

    iget v3, p0, Lcom/android/internal/util/WakeupMessage;->mArg1:I

    iget v4, p0, Lcom/android/internal/util/WakeupMessage;->mArg2:I

    iget-object v5, p0, Lcom/android/internal/util/WakeupMessage;->mObj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    goto :goto_0

    .line 131
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/WakeupMessage;->mRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 133
    .restart local v1    # "msg":Landroid/os/Message;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 134
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 136
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 125
    .end local v0    # "stillScheduled":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized schedule(J)V
    .locals 7
    .param p1, "when"    # J

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/WakeupMessage;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/android/internal/util/WakeupMessage;->mCmdName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/util/WakeupMessage;->mHandler:Landroid/os/Handler;

    move-wide v2, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/WakeupMessage;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 99
    .end local p1    # "when":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/util/WakeupMessage;
    throw p1
.end method
