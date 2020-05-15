.class public Lcom/android/server/job/controllers/NubiaOrderController;
.super Lcom/android/server/job/controllers/StateController;
.source "NubiaOrderController.java"


# static fields
.field private static final MAX_TIME_OFFSET:J = 0xdbba00L

.field private static final TAG:Ljava/lang/String; = "NubiaOrderController"

.field private static volatile sController:Lcom/android/server/job/controllers/NubiaOrderController;

.field private static sCreationLock:Ljava/lang/Object;


# instance fields
.field private mRunningOrder:I

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

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/NubiaOrderController;->sCreationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mTrackedTasks:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mRunningOrder:I

    .line 42
    return-void
.end method

.method public static get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/NubiaOrderController;
    .locals 2
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 32
    sget-object v0, Lcom/android/server/job/controllers/NubiaOrderController;->sCreationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/android/server/job/controllers/NubiaOrderController;->sController:Lcom/android/server/job/controllers/NubiaOrderController;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/android/server/job/controllers/NubiaOrderController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/NubiaOrderController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    sput-object v1, Lcom/android/server/job/controllers/NubiaOrderController;->sController:Lcom/android/server/job/controllers/NubiaOrderController;

    .line 36
    :cond_0
    sget-object v1, Lcom/android/server/job/controllers/NubiaOrderController;->sController:Lcom/android/server/job/controllers/NubiaOrderController;

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isTimeValid(Lcom/android/server/job/controllers/JobStatus;J)Z
    .locals 6
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "now"    # J

    .line 70
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->mIsIgnoreLatency:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    add-long/2addr v2, v4

    cmp-long v0, v2, p2

    if-ltz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v2

    add-long/2addr v4, p2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1
.end method

.method private reportNewRunningOrder(I)V
    .locals 4
    .param p1, "newOrder"    # I

    .line 91
    iput p1, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mRunningOrder:I

    .line 92
    iget v0, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mRunningOrder:I

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, "change":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 95
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    iget v3, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mRunningOrder:I

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->setRunningNubiaOrder(I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 96
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_0

    .line 97
    :cond_1
    if-eqz v0, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 100
    :cond_2
    return-void
.end method

.method private updateJobOrder()V
    .locals 6

    .line 76
    const v0, 0x7fffffff

    .line 77
    .local v0, "newOrder":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 78
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 79
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getNubiaOrder()I

    move-result v5

    if-ge v5, v0, :cond_0

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/job/controllers/NubiaOrderController;->isTimeValid(Lcom/android/server/job/controllers/JobStatus;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfiedWithoutOrderAndDelay()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getNubiaOrder()I

    move-result v0

    .line 83
    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    goto :goto_0

    .line 84
    :cond_1
    const v3, 0x7fffffff

    if-ne v0, v3, :cond_2

    .line 85
    const/4 v0, 0x0

    .line 87
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/NubiaOrderController;->reportNewRunningOrder(I)V

    .line 88
    return-void
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

    .line 124
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 4
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

    .line 105
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    const-string v0, "Order: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRunningOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mRunningOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 108
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    goto :goto_0

    .line 111
    :cond_0
    const-string v2, "  #"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 113
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNubiaOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 117
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 49
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasNubiaOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Lcom/android/server/job/controllers/NubiaOrderController;->updateJobOrder()V

    .line 53
    :cond_0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 57
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasNubiaOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    invoke-direct {p0}, Lcom/android/server/job/controllers/NubiaOrderController;->updateJobOrder()V

    .line 61
    :cond_0
    return-void
.end method

.method public noteCheckJob()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/job/controllers/NubiaOrderController;->mTrackedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/android/server/job/controllers/NubiaOrderController;->updateJobOrder()V

    .line 67
    return-void
.end method
