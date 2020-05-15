.class public Lcom/android/server/job/NubiaNotSatisfiedJobs;
.super Ljava/lang/Object;
.source "NubiaNotSatisfiedJobs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;
    }
.end annotation


# static fields
.field private static mService:Lcom/android/server/job/JobSchedulerService;

.field private static sJobCancelByNotSatisfied:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addJobRecord(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p0, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 40
    sget-object v0, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clearJobRecord()V
    .locals 2

    .line 67
    sget-object v0, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 90
    const-string v0, "cancel not satisfied jobs:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;

    .line 93
    .local v2, "r":Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",jobid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;->mJobId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .end local v2    # "r":Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;
    goto :goto_0

    .line 95
    :cond_0
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static findJobRecord(II)Z
    .locals 4
    .param p0, "uid"    # I
    .param p1, "jobId"    # I

    .line 29
    sget-object v0, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;

    .line 31
    .local v2, "r":Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;
    iget v3, v2, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;->mUid:I

    if-ne v3, p0, :cond_0

    iget v3, v2, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;->mJobId:I

    if-ne v3, p1, :cond_0

    .line 32
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 34
    .end local v2    # "r":Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;
    :cond_0
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    const/4 v0, 0x0

    return v0

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static hasJobRecord()Z
    .locals 2

    .line 22
    sget-object v0, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isSatisfiedUnmetered(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 10
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 112
    sget-object v0, Lcom/android/server/job/NubiaNotSatisfiedJobs;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 113
    .local v0, "mConnManager":Landroid/net/ConnectivityManager;
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(I)Landroid/net/Network;

    move-result-object v1

    .line 114
    .local v1, "network":Landroid/net/Network;
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 115
    .local v2, "ignoreBlocked":Z
    :goto_0
    nop

    .line 116
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    .line 115
    invoke-virtual {v0, v1, v5, v2}, Landroid/net/ConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 118
    .local v5, "info":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v4

    .line 119
    .local v6, "connected":Z
    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v4

    .line 120
    .local v7, "satisfiedConstraints":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move v8, v4

    .line 121
    .local v8, "requiredConstraints":Z
    :goto_3
    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    return v3
.end method

.method public static noteCancelJob(Lcom/android/server/job/controllers/JobStatus;I)V
    .locals 2
    .param p0, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "reason"    # I

    .line 74
    invoke-static {}, Lcom/android/server/job/JobSchedulerService;->isNowMidnight()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/android/server/job/NubiaNotSatisfiedJobs;->clearJobRecord()V

    .line 76
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 79
    invoke-static {p0}, Lcom/android/server/job/NubiaNotSatisfiedJobs;->removeJobRecord(Lcom/android/server/job/controllers/JobStatus;)V

    .line 80
    return-void

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/android/server/job/NubiaNotSatisfiedJobs;->isSatisfiedUnmetered(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasNotUseConstraint()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/job/NubiaNotSatisfiedJobs;->findJobRecord(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    invoke-static {p0}, Lcom/android/server/job/NubiaNotSatisfiedJobs;->addJobRecord(Lcom/android/server/job/controllers/JobStatus;)V

    .line 87
    :cond_4
    return-void
.end method

.method public static removeJobRecord(II)V
    .locals 5
    .param p0, "uid"    # I
    .param p1, "jobId"    # I

    .line 51
    sget-object v0, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    monitor-enter v0

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "find":Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;
    :try_start_0
    sget-object v2, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;

    .line 54
    .local v3, "r":Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;
    iget v4, v3, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;->mUid:I

    if-ne v4, p0, :cond_0

    iget v4, v3, Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;->mJobId:I

    if-ne v4, p1, :cond_0

    .line 55
    move-object v1, v3

    .line 56
    goto :goto_1

    .line 58
    .end local v3    # "r":Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;
    :cond_0
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 60
    sget-object v2, Lcom/android/server/job/NubiaNotSatisfiedJobs;->sJobCancelByNotSatisfied:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    .end local v1    # "find":Lcom/android/server/job/NubiaNotSatisfiedJobs$JobRecord;
    :cond_2
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removeJobRecord(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p0, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 46
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/job/NubiaNotSatisfiedJobs;->removeJobRecord(II)V

    .line 47
    return-void
.end method

.method public static setJobSchedulerService(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p0, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 108
    sput-object p0, Lcom/android/server/job/NubiaNotSatisfiedJobs;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 109
    return-void
.end method
