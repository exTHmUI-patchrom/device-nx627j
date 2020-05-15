.class public Lnubia/twolevel/TwoLevelStartExecutor;
.super Ljava/lang/Object;
.source "TwoLevelStartExecutor.java"


# static fields
.field private static volatile sIsSkipApplicationOnCreate:Z


# instance fields
.field m2LevelBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mHasMessageBefore:Z

.field mSkipApplicationOnCreate:Z

.field mWaitingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lnubia/twolevel/TwoLevelStartExecutor;->sIsSkipApplicationOnCreate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mWaitingLock:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mHasMessageBefore:Z

    .line 24
    iput-boolean v0, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mSkipApplicationOnCreate:Z

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnubia/twolevel/TwoLevelStartExecutor;->m2LevelBlackList:Ljava/util/HashSet;

    .line 29
    return-void
.end method

.method public static isSkipApplicationOnCreate()Z
    .locals 1

    .line 35
    sget-boolean v0, Lnubia/twolevel/TwoLevelStartExecutor;->sIsSkipApplicationOnCreate:Z

    return v0
.end method


# virtual methods
.method public add2LevelBlackList(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lnubia/twolevel/TwoLevelStartExecutor;->m2LevelBlackList:Ljava/util/HashSet;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lnubia/twolevel/TwoLevelStartExecutor;->m2LevelBlackList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkDebugModeValue(I)I
    .locals 1
    .param p1, "debugModeValue"    # I

    .line 86
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 87
    add-int/lit8 p1, p1, -0x64

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mSkipApplicationOnCreate:Z

    .line 90
    :cond_0
    return p1
.end method

.method public checkWaitingLock(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 99
    iget-object v0, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mWaitingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mHasMessageBefore:Z

    .line 101
    iget-boolean v1, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mSkipApplicationOnCreate:Z

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mSkipApplicationOnCreate:Z

    .line 103
    iget-object v1, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mWaitingLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 105
    :cond_0
    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 108
    :cond_1
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isIn2LevelBlackList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lnubia/twolevel/TwoLevelStartExecutor;->m2LevelBlackList:Ljava/util/HashSet;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lnubia/twolevel/TwoLevelStartExecutor;->m2LevelBlackList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mayBlockHandleBindleApplication()V
    .locals 5

    .line 65
    iget-object v0, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mWaitingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-boolean v1, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mSkipApplicationOnCreate:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mHasMessageBefore:Z

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x1

    sput-boolean v1, Lnubia/twolevel/TwoLevelStartExecutor;->sIsSkipApplicationOnCreate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "two prestart wait!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", skipOnCreate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lnubia/twolevel/TwoLevelStartExecutor;->sIsSkipApplicationOnCreate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mWaitingLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    sput-boolean v1, Lnubia/twolevel/TwoLevelStartExecutor;->sIsSkipApplicationOnCreate:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    sput-boolean v1, Lnubia/twolevel/TwoLevelStartExecutor;->sIsSkipApplicationOnCreate:Z

    throw v2

    .line 72
    :catch_0
    move-exception v2

    .line 74
    sput-boolean v1, Lnubia/twolevel/TwoLevelStartExecutor;->sIsSkipApplicationOnCreate:Z

    .line 75
    :goto_0
    nop

    .line 76
    iput-boolean v1, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mSkipApplicationOnCreate:Z

    .line 78
    :cond_0
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public mayBreakScheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 43
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p5, :cond_0

    goto :goto_4

    .line 46
    :cond_0
    iget-boolean v1, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mSkipApplicationOnCreate:Z

    if-eqz v1, :cond_3

    .line 47
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 49
    .local v2, "mgr":Landroid/app/IActivityManager;
    if-eqz p5, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    goto :goto_3

    .line 52
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v7, 0x0

    .line 53
    if-nez p2, :cond_2

    .line 52
    :goto_1
    move v8, v0

    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    goto :goto_1

    .line 52
    :goto_2
    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    nop

    .line 55
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 57
    .end local v2    # "mgr":Landroid/app/IActivityManager;
    :cond_3
    return v0

    .line 44
    :cond_4
    :goto_4
    return v0
.end method

.method public skipApplicationOnCreate()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lnubia/twolevel/TwoLevelStartExecutor;->mSkipApplicationOnCreate:Z

    return v0
.end method
