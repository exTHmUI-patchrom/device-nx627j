.class public Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;
.super Ljava/lang/Object;
.source "FreezeAgainStrategy.java"


# static fields
.field private static DEBUG:Z = false

.field private static final FREEZE_AGAIN_TIME:J = 0xbb8L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, "ApplicationFreeze_Again"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->TAG:Ljava/lang/String;

    .line 10
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 18
    return-void
.end method

.method private callMeAfter(J)V
    .locals 1
    .param p1, "time"    # J

    .line 68
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 69
    return-void
.end method

.method private getFreezeAgainTime()J
    .locals 4

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    iget-wide v0, v0, Lcn/nubia/server/appmgmt/AppDataManager;->mFreezeAgainTime:J

    .line 46
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0xbb8

    :goto_0
    return-wide v2
.end method

.method public static isProcessFrozen(I)Z
    .locals 6
    .param p0, "pid"    # I

    .line 55
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/Process;

    const-string/jumbo v2, "isProcessFrozen"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 56
    .local v1, "isProcessFrozen":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 57
    .end local v1    # "isProcessFrozen":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .param p2, "now"    # J

    .line 64
    iget-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    sub-long v0, p2, v0

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->getFreezeAgainTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method isDifferentFromInfo(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 2
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 50
    iget-boolean v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    iget v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-static {v1}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->isProcessFrozen(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method resetArgs()V
    .locals 1

    .line 21
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->DEBUG:Z

    .line 22
    return-void
.end method

.method shouldFreezeAgain(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;ZLjava/util/HashSet;)Z
    .locals 7
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .param p2, "isDifferent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/server/appmgmt/freezer/ProcessInfo;",
            "Z",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 25
    .local p3, "thawedList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_3

    .line 26
    iget-boolean v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mIsFrozen:Z

    if-eqz v3, :cond_4

    .line 27
    iget-object v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not frozen out of control"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 30
    .local v3, "now":J
    iget-wide v5, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    .line 31
    iput-wide v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0, p1, v3, v4}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->getFreezeAgainTime()J

    move-result-wide v1

    iget-wide v5, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    sub-long v5, v3, v5

    sub-long/2addr v1, v5

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/appmgmt/freezer/FreezeAgainStrategy;->callMeAfter(J)V

    .line 36
    return v0

    .line 39
    .end local v3    # "now":J
    :cond_3
    iput-wide v1, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mFindDifferentTime:J

    .line 41
    :cond_4
    return v0
.end method
