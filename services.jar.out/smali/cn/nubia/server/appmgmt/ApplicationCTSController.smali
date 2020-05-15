.class public Lcn/nubia/server/appmgmt/ApplicationCTSController;
.super Ljava/lang/Object;
.source "ApplicationCTSController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationCTSController"


# instance fields
.field private isCtsRunning:Z

.field private mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mContext:Landroid/content/Context;

.field private mDumpDebugLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appFreezeController"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mDumpDebugLog:Z

    .line 26
    iput-boolean v2, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->isCtsRunning:Z

    .line 29
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ApplicationCTSControllerIO"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mThread:Landroid/os/HandlerThread;

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 34
    const-string v0, "1"

    const-string/jumbo v2, "persist.sys.nubia.cts.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/ApplicationCTSController;->setCTSRule(Z)V

    .line 37
    :cond_2
    return-void
.end method

.method public static synthetic lambda$setCTSRule$0(Lcn/nubia/server/appmgmt/ApplicationCTSController;Z)V
    .locals 0
    .param p1, "isStartCts"    # Z

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/ApplicationCTSController;->realSetCTSRule(Z)V

    return-void
.end method

.method private realSetCTSRule(Z)V
    .locals 6
    .param p1, "isStartCts"    # Z

    .line 62
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mDumpDebugLog:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "ApplicationCTSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "realSetCTSRule isStartCts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    if-eqz p1, :cond_3

    .line 66
    const-string/jumbo v0, "persist.sys.nubia.cts.mode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    sput-boolean v1, Lcn/nubia/server/appmgmt/AppDataManager;->NONE_ALLOWED:Z

    .line 70
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cn.nubia.securuty.KILL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "value"

    const-string v3, "disable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 75
    :cond_2
    invoke-static {}, Lcom/android/server/am/NubiaSelfStartUtil;->getInstance()Lcom/android/server/am/NubiaSelfStartUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/NubiaSelfStartUtil;->closeNubiaSelfStart()V

    .line 76
    iget-object v2, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navi_ges_flag"

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 77
    .local v2, "flag":I
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navi_ges_flag"

    const v5, 0xfffe

    and-int/2addr v5, v2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    iget-object v3, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cc_navi_status"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "flag":I
    goto :goto_0

    .line 80
    :cond_3
    const-string/jumbo v0, "persist.sys.nubia.cts.mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mAppFreezeController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getDataManager()Lcn/nubia/server/appmgmt/AppDataManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/appmgmt/AppDataManager;->NONE_ALLOWED:Z

    .line 84
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.securuty.KILL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "value"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 87
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public isCtsRunning()Z
    .locals 1

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->isCtsRunning:Z

    monitor-exit p0

    return v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCTSRule(Z)V
    .locals 2
    .param p1, "isStartCts"    # Z

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const-string/jumbo v0, "sys.nubia.cts.mode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_0
    const-string/jumbo v0, "sys.nubia.cts.mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    monitor-enter p0

    .line 50
    :try_start_0
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->isCtsRunning:Z

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/appmgmt/-$$Lambda$ApplicationCTSController$Y-EBesawDCYY_BL6LF1XIKeAiLU;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/appmgmt/-$$Lambda$ApplicationCTSController$Y-EBesawDCYY_BL6LF1XIKeAiLU;-><init>(Lcn/nubia/server/appmgmt/ApplicationCTSController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setDebugLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 40
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/ApplicationCTSController;->mDumpDebugLog:Z

    .line 41
    return-void
.end method
