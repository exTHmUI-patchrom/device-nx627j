.class public Lcom/android/server/job/controllers/NubiaNotUseController;
.super Lcom/android/server/job/controllers/StateController;
.source "NubiaNotUseController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;
    }
.end annotation


# static fields
.field private static final ACTION_TRIGGER_NOT_USE:Ljava/lang/String; = "cn.nubia.server.ACTION_TRIGGER_NOT_USE"

.field private static final DEFAULT_IDLE_THRESHOLD:J = 0x1b7740L

.field private static final STATUS_MAYBE_NOT_USE:I = 0x2

.field private static final STATUS_MAYBE_USE:I = 0x1

.field private static final STATUS_NOT_USE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NotUseController"

.field private static volatile sController:Lcom/android/server/job/controllers/NubiaNotUseController;

.field private static sCreationLock:Ljava/lang/Object;

.field private static tController:Lcom/android/server/job/controllers/TimeController;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mIdleTracker:Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;

.field private mIdleWindowSlop:J

.field private mInactivityIdleThreshold:J

.field private mService:Lcom/android/server/job/JobSchedulerService;

.field private mStatus:I

.field private mTimeChangeRunnable:Ljava/lang/Runnable;

.field final mTrackedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/NubiaNotUseController;->sCreationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 43
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mInactivityIdleThreshold:J

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTrackedTasks:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/android/server/job/controllers/NubiaNotUseController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/NubiaNotUseController$1;-><init>(Lcom/android/server/job/controllers/NubiaNotUseController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTimeChangeRunnable:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-direct {p0}, Lcom/android/server/job/controllers/NubiaNotUseController;->initIdleStateTracking()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/NubiaNotUseController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 32
    invoke-direct {p0}, Lcom/android/server/job/controllers/NubiaNotUseController;->doWhenTimeChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/NubiaNotUseController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 32
    iget v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/job/controllers/NubiaNotUseController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/NubiaNotUseController;
    .param p1, "x1"    # I

    .line 32
    iput p1, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/NubiaNotUseController;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/NubiaNotUseController;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/NubiaNotUseController;->statusToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/NubiaNotUseController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/NubiaNotUseController;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/NubiaNotUseController;->isNotUse(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/job/controllers/NubiaNotUseController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 32
    iget-wide v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mInactivityIdleThreshold:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/job/controllers/NubiaNotUseController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 32
    iget-wide v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mIdleWindowSlop:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/job/controllers/NubiaNotUseController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 32
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTimeChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/job/controllers/NubiaNotUseController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 32
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private doWhenTimeChange()V
    .locals 7

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "needUpdate":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    monitor-exit v1

    return-void

    .line 244
    :cond_0
    invoke-static {}, Lcom/android/server/job/controllers/JobStatus;->tomorrowMidnight()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 245
    .local v2, "midNight":J
    iget-object v4, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 246
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v6, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v5}, Lcom/android/server/job/JobSchedulerService;->isJobRunning(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 247
    invoke-virtual {v5, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->setEarliestRunTime(J)V

    .line 248
    const/4 v0, 0x1

    .line 250
    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    goto :goto_0

    .line 251
    .end local v2    # "midNight":J
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    if-eqz v0, :cond_3

    .line 253
    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/controllers/NubiaNotUseController;->getTimeController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/TimeController;->updateExpiredDelays()V

    .line 255
    :cond_3
    return-void

    .line 251
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/NubiaNotUseController;
    .locals 2
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 64
    sget-object v0, Lcom/android/server/job/controllers/NubiaNotUseController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/android/server/job/controllers/NubiaNotUseController;->sController:Lcom/android/server/job/controllers/NubiaNotUseController;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/android/server/job/controllers/NubiaNotUseController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/NubiaNotUseController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    sput-object v1, Lcom/android/server/job/controllers/NubiaNotUseController;->sController:Lcom/android/server/job/controllers/NubiaNotUseController;

    .line 68
    :cond_0
    sget-object v1, Lcom/android/server/job/controllers/NubiaNotUseController;->sController:Lcom/android/server/job/controllers/NubiaNotUseController;

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized getTimeController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;
    .locals 2
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    const-class v0, Lcom/android/server/job/controllers/NubiaNotUseController;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/android/server/job/controllers/NubiaNotUseController;->tController:Lcom/android/server/job/controllers/TimeController;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    sput-object v1, Lcom/android/server/job/controllers/NubiaNotUseController;->tController:Lcom/android/server/job/controllers/TimeController;

    .line 76
    :cond_0
    sget-object v1, Lcom/android/server/job/controllers/NubiaNotUseController;->tController:Lcom/android/server/job/controllers/TimeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 72
    .end local p0    # "service":Lcom/android/server/job/JobSchedulerService;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initIdleStateTracking()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mIdleWindowSlop:J

    .line 121
    new-instance v0, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;-><init>(Lcom/android/server/job/controllers/NubiaNotUseController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mIdleTracker:Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;

    .line 122
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mIdleTracker:Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/NubiaNotUseController$IdlenessTracker;->startTracking()V

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mStatus:I

    .line 124
    return-void
.end method

.method private isNotUse(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 237
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private statusToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .line 258
    packed-switch p1, :pswitch_data_0

    .line 266
    const-string v0, "UNKNOWN"

    return-object v0

    .line 264
    :pswitch_0
    const-string v0, "STATUS_NOT_USE"

    return-object v0

    .line 262
    :pswitch_1
    const-string v0, "STATUS_MAYBE_NOT_USE"

    return-object v0

    .line 260
    :pswitch_2
    const-string v0, "STATUS_MAYBE_USE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 0
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 284
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    const-string v0, "NotUse: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "now status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/NubiaNotUseController;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 286
    const-string v0, "Tracking "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 288
    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    .line 289
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 291
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    goto :goto_1

    .line 294
    :cond_0
    const-string v2, "  #"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 296
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 298
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 289
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 91
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasNotUseConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/NubiaNotUseController;->isNotUse(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setNotUseConstraintSatisfied(Z)Z

    .line 95
    :cond_0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 99
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method reportNewState(Z)V
    .locals 3
    .param p1, "isNotUse"    # Z

    .line 106
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 108
    .local v2, "task":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->setNotUseConstraintSatisfied(Z)Z

    .line 109
    .end local v2    # "task":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_0

    .line 110
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setIdleTime(JJ)V
    .locals 2
    .param p1, "idleSlop"    # J
    .param p3, "windowSlop"    # J

    .line 271
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 272
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mInactivityIdleThreshold:J

    .line 273
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mIdleWindowSlop:J

    goto :goto_0

    .line 276
    :cond_0
    iput-wide p1, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mInactivityIdleThreshold:J

    .line 277
    iput-wide p3, p0, Lcom/android/server/job/controllers/NubiaNotUseController;->mIdleWindowSlop:J

    .line 279
    :goto_0
    return-void
.end method
