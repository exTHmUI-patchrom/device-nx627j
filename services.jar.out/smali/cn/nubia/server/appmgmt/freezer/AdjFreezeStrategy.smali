.class public Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "AdjFreezeStrategy.java"


# static fields
.field private static final ADJ_HOLD_TIME:J = 0x2ee0L

.field private static DEBUG:Z

.field private static DEBUG_FREEZE:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-string v0, "ApplicationFreeze_Adj"

    sput-object v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->TAG:Ljava/lang/String;

    .line 9
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG_FREEZE:Z

    .line 10
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_MANAGE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 0
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 15
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 17
    return-void
.end method

.method private callMeAfter(J)V
    .locals 1
    .param p1, "time"    # J

    .line 78
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->scheduleCheck(J)V

    .line 79
    return-void
.end method

.method private canFreezeWhenScreenOff(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 1
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 66
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAdjHoldTime()J
    .locals 4

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    move-result-object v0

    iget-wide v0, v0, Lcn/nubia/server/appmgmt/AppDataManager;->mAdjHoldTime:J

    .line 47
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2ee0

    :goto_0
    return-wide v2
.end method

.method private isBg(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "adj"    # I

    .line 51
    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isForeground(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getApplicationUtils()Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationUtils;->getForegroundPackageName()Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "visibleApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 57
    .local v1, "isTopApp":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 58
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const/4 v1, 0x1

    .line 61
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z
    .locals 4
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;
    .param p2, "now"    # J

    .line 74
    iget-wide v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    sub-long v0, p2, v0

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->getAdjHoldTime()J

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

.method private isVisible(I)Z
    .locals 1
    .param p1, "adj"    # I

    .line 70
    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 10
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 24
    iget-object v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->isForeground(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 25
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not allow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is foreground, adj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return v1

    .line 27
    :cond_1
    iget v0, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mUid:I

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->isBg(II)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->canFreezeWhenScreenOff(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 39
    :cond_2
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not allow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not bg, adj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_3
    iput-wide v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    goto/16 :goto_2

    .line 28
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 29
    .local v4, "now":J
    iget-wide v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_5

    .line 30
    iput-wide v4, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    goto :goto_1

    .line 31
    :cond_5
    invoke-direct {p0, p1, v4, v5}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->isTimeUp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bg and time up, adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->getAdj()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_7
    :goto_1
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not allow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bg need wait "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->getAdjHoldTime()J

    move-result-wide v6

    iget-wide v8, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    sub-long v8, v4, v8

    sub-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_8
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->getAdjHoldTime()J

    move-result-wide v2

    iget-wide v6, p1, Lcn/nubia/server/appmgmt/freezer/ProcessInfo;->mAdjChangeTime:J

    sub-long v6, v4, v6

    sub-long/2addr v2, v6

    invoke-direct {p0, v2, v3}, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->callMeAfter(J)V

    .line 38
    .end local v4    # "now":J
    nop

    .line 42
    :goto_2
    return v1
.end method

.method public bridge synthetic needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 7
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->needCheckWhenOtherNotAllow()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic preCheck()V
    .locals 0

    .line 7
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->preCheck()V

    return-void
.end method

.method public resetArgs()V
    .locals 1

    .line 20
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->DEBUG_FREEZE:Z

    sput-boolean v0, Lcn/nubia/server/appmgmt/freezer/AdjFreezeStrategy;->DEBUG:Z

    .line 21
    return-void
.end method
