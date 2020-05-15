.class final Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;
.super Lnubia/os/IApplicationManager$Stub;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ApplicationManagerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/ApplicationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 341
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-direct {p0}, Lnubia/os/IApplicationManager$Stub;-><init>()V

    return-void
.end method

.method private checkTime(JLjava/lang/String;)J
    .locals 6
    .param p1, "startTime"    # J
    .param p3, "where"    # Ljava/lang/String;

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 490
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 492
    const-string v2, "ApplicationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v0, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public IsAllowDialogShow(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1166
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1167
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 1166
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    .line 1167
    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->IsAllowDialogShow(Ljava/lang/String;)Z

    move-result v0

    .line 1166
    :goto_0
    return v0
.end method

.method public IsGameModeRunning()Z
    .locals 1

    .line 1156
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1157
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 1156
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    .line 1157
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->IsGameModeRunning()Z

    move-result v0

    .line 1156
    :goto_0
    return v0
.end method

.method public IsGameModeSubRunning(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 1161
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1162
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 1161
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    .line 1162
    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->IsGameModeSubRunning(I)Z

    move-result v0

    .line 1161
    :goto_0
    return v0
.end method

.method public acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .line 660
    return-void
.end method

.method public addPackageToPreLaunchBlackList(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController;->addBlackList(Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method public allow3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "serviceClassName"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPushController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPushController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/ApplicationPushController;->allowApp3rdPartyPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 388
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public allowAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowAppAlarm(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 381
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public allowBackgroundSyncToRun(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SyncController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SyncController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/SyncController;->allowBackgroundSyncToRun(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 626
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 392
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationAlarmWakeupController;->allowDeliverPendingNonWakeupAlarmInScreenOff(Landroid/app/PendingIntent;)Z

    move-result v0

    return v0

    .line 395
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public allowFreezeAppWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowFreezeAppWakeupAlarm(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 374
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public allowFullWakeLockScreenOff(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowAppFullWakeLockScreenOff(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 353
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public allowPartialWakelock(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowAppPartialWakelock(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 360
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public allowWakeupAlarm(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->allowAppWakeupAlarm(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 367
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public change4DNode(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .line 1282
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;->change4DNode(Z)V

    .line 1285
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteFreeformModeChange(Z)V

    .line 1288
    :cond_1
    return-void
.end method

.method public checkActionAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "actname"    # Ljava/lang/String;

    .line 1102
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 1103
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->checkAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1102
    :goto_0
    return v0
.end method

.method public checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "actname"    # Ljava/lang/String;

    .line 1107
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->checkAllowedGetActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1110
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3300(Lcn/nubia/server/appmgmt/ApplicationManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method public getActionState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "actname"    # Ljava/lang/String;

    .line 1115
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 1116
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->getActionState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1115
    :goto_0
    return v0
.end method

.method public getAppLearningCallback()Lnubia/os/IAppLearningCallback;
    .locals 1

    .line 677
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lnubia/os/IAppLearningCallback;

    move-result-object v0

    return-object v0
.end method

.method public getAppLearningRecommendCallback()Lnubia/os/IAppLearningRecommendCallback;
    .locals 1

    .line 682
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lnubia/os/IAppLearningRecommendCallback;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRecond(I)Ljava/util/List;
    .locals 1
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->getPackageNameList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1143
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUserLearningProcess()Ljava/util/List;
    .locals 1

    .line 710
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundPackageName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/ApplicationUtils;->getForegroundPackageName()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1004
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrozenProcessStatus(Ljava/lang/String;I[I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "status"    # [I

    .line 815
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->getFrozenProcessStatus(Ljava/lang/String;I[I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 818
    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    .line 819
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGameLauncherAppNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getGameLauncherAppNameList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1011
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGameMode()I
    .locals 1

    .line 1149
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->getGameMode()I

    move-result v0

    return v0

    .line 1152
    :cond_0
    sget v0, Lcn/nubia/game/GameModeHelper;->DEFAULT_GAME_MODE:I

    return v0
.end method

.method public getGameScreenRefreshRate(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkgname"    # Ljava/lang/String;

    .line 1015
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->getGameScreenRefreshRate(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1018
    :cond_0
    const/16 v0, -0x64

    return v0
.end method

.method public getLightEffectState(I)I
    .locals 1
    .param p1, "type"    # I

    .line 1057
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/LightEffectController;->getLightEffectState(I)I

    move-result v0

    return v0

    .line 1060
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNetAvailable()Z
    .locals 1

    .line 653
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NetWorkDetectorController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/NetWorkDetectorController;->getNetAvailable()Z

    move-result v0

    return v0

    .line 656
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getResolutionCtlEnable()Z
    .locals 1

    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method public grantPermissionDialogClick(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 977
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->grantPermissionDialogClick(Landroid/os/Bundle;)V

    .line 980
    :cond_0
    return-void
.end method

.method public installEvent(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 965
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->installEvent(Landroid/os/Bundle;)V

    .line 968
    :cond_0
    return-void
.end method

.method public isAllowStartActivityInGameKeys()Z
    .locals 3

    .line 1171
    invoke-static {}, Lcn/nubia/game/GameKeysHelper;->getDefault()Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    .line 1172
    .local v0, "gameKeysHelper":Lcn/nubia/game/GameKeysHelper;
    invoke-virtual {v0}, Lcn/nubia/game/GameKeysHelper;->getGameKeysValue()I

    move-result v1

    .line 1173
    .local v1, "gameKeysValue":I
    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcn/nubia/game/GameKeysHelper;->isOpenGameKeysSubSwitch(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "reqCode"    # I
    .param p2, "subCode"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "argStr1"    # Ljava/lang/String;
    .param p6, "argStr2"    # Ljava/lang/String;

    .line 851
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 854
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isControlledByMotionDoze(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/MotionDozeController;->isControlledByMotionDoze(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 649
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/ApplicationPowerController;->isDangerousWakeLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 346
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGameAppOnForeground()Z
    .locals 1

    .line 1183
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1184
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 1183
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    .line 1184
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameAppOnForeground()Z

    move-result v0

    .line 1183
    :goto_0
    return v0
.end method

.method public isGameKeyOn()Z
    .locals 1

    .line 1193
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1194
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 1193
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    .line 1194
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->isGameKeyOn()Z

    move-result v0

    .line 1193
    :goto_0
    return v0
.end method

.method public isKillWhenFrozen(I)Z
    .locals 1
    .param p1, "pid"    # I

    .line 864
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isKillWhenFrozen(I)Z

    move-result v0

    return v0

    .line 867
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLightEffectOpened()Z
    .locals 1

    .line 1029
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/LightEffectController;->isLightEffectOpened()Z

    move-result v0

    return v0

    .line 1032
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNotifyDisplayEvent(III)Z
    .locals 1
    .param p1, "pid"    # I
    .param p2, "state"    # I
    .param p3, "displayId"    # I

    .line 823
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isNotifyDisplayEvent(III)Z

    move-result v0

    return v0

    .line 826
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen4DNode()Z
    .locals 1

    .line 1275
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;->isOpen4DNode()Z

    move-result v0

    return v0

    .line 1278
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessFrozen(I)Z
    .locals 1
    .param p1, "pid"    # I

    .line 800
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isProcessFrozen(I)Z

    move-result v0

    return v0

    .line 803
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessFrozenByUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 837
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isProcessFrozenByUid(I)Z

    move-result v0

    return v0

    .line 840
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessRealFrozen(I)Z
    .locals 1
    .param p1, "pid"    # I

    .line 807
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isProcessRealFrozen(I)Z

    move-result v0

    return v0

    .line 810
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProcessRealFrozenByUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 844
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->isProcessRealFrozenByUid(I)Z

    move-result v0

    return v0

    .line 847
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResolutionCtlApp(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbInstallSwitchOn()Z
    .locals 2

    .line 1131
    const/4 v0, 0x1

    .line 1132
    .local v0, "isSwitchOn":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/ApplicationUtils;->isUsbInstallSwitchOn()Z

    move-result v0

    .line 1135
    :cond_0
    return v0
.end method

.method public noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "isOpen"    # Z
    .param p4, "isSave"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->noteActionMutex(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1085
    :cond_0
    return-void
.end method

.method public noteActivityStackRemoved(I)V
    .locals 1
    .param p1, "stackId"    # I

    .line 581
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteActivityStackRemoved(I)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteActivityStackRemoved(I)V

    .line 588
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationUtils;->noteActivityStackRemoved(I)V

    .line 591
    :cond_2
    return-void
.end method

.method public noteAddWindow(IILjava/lang/String;)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .line 779
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/BadAppController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/BadAppController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/BadAppController;->noteAddWindow(IILjava/lang/String;)V

    .line 782
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteAddWindow(IILjava/lang/String;)V

    .line 785
    :cond_1
    return-void
.end method

.method public noteAppAnrCrash(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .line 1232
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteAppAnrCrash(Ljava/lang/String;ILjava/lang/String;J)V

    .line 1235
    :cond_0
    return-void
.end method

.method public noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 897
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V

    .line 900
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V

    .line 903
    :cond_1
    return-void
.end method

.method public noteAppExit(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .line 906
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteAppExit(ILjava/lang/String;ILjava/lang/String;)V

    .line 909
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteAppExit(ILjava/lang/String;ILjava/lang/String;)V

    .line 912
    :cond_1
    return-void
.end method

.method public noteAppExitReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .line 915
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteAppExitReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :cond_0
    return-void
.end method

.method public noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "isColdLaunch"    # Z

    move-object v0, p0

    .line 888
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 891
    :cond_0
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 892
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteAppForeground(ILjava/lang/String;ILjava/lang/String;J)V

    .line 894
    :cond_1
    return-void
.end method

.method public noteAppInactive(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z

    .line 879
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteAppInactive(Ljava/lang/String;Z)V

    .line 882
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteAppInactive(Ljava/lang/String;Z)V

    .line 885
    :cond_1
    return-void
.end method

.method public noteAppTransitionAnimation(Z)V
    .locals 1
    .param p1, "execute"    # Z

    .line 608
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/LightEffectController;->noteAppTransitionAnimation(Z)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteAppTransitionAnimation(Z)V

    .line 614
    :cond_1
    return-void
.end method

.method public noteAppUsingCamera(ILjava/lang/String;ILjava/lang/String;JZ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "isLaunch"    # Z

    move-object v0, p0

    .line 1226
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1227
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-wide v7, p5

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteAppUsingCamera(ILjava/lang/String;ILjava/lang/String;JZ)V

    .line 1229
    :cond_0
    return-void
.end method

.method public noteAudioFocusChanged(IIJ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "timestamp"    # J

    .line 1121
    return-void
.end method

.method public noteCreateActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1323
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteCreateActivity(Ljava/lang/String;)V

    .line 1326
    :cond_0
    return-void
.end method

.method public noteDisplayPowerModeChanged(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1124
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteDisplayPowerModeChanged(I)V

    .line 1127
    :cond_0
    return-void
.end method

.method public noteDisplayStateChanged(III)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "state"    # I
    .param p3, "displayId"    # I

    .line 831
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteDisplayStateChanged(III)V

    .line 834
    :cond_0
    return-void
.end method

.method public noteEdgeGesture(Ljava/lang/String;)V
    .locals 1
    .param p1, "gesture"    # Ljava/lang/String;

    .line 1214
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/datacollection/ModuleDataCollectionController;->noteEdgeGesture(Ljava/lang/String;)V

    .line 1217
    :cond_0
    return-void
.end method

.method public noteEndGps(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    move-object v0, p0

    .line 947
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 948
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteEndGps(IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 950
    :cond_0
    return-void
.end method

.method public noteEndMusic(IIJ)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "timestamp"    # J

    .line 927
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteEndMusic(IIJ)V

    .line 930
    :cond_0
    return-void
.end method

.method public noteEndMusicToColorfullight(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 937
    const/16 v0, 0x66

    invoke-static {v0}, Lnubia/hardware/ColorfulLightManager;->requestColorfulLight(I)Z

    .line 938
    return-void
.end method

.method public noteEndNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    move-object v0, p0

    .line 959
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteEndNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 962
    :cond_0
    return-void
.end method

.method public noteFingerprintAuth(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .line 1223
    return-void
.end method

.method public noteFocusChangedLw(Ljava/lang/String;)V
    .locals 0
    .param p1, "newFocus"    # Ljava/lang/String;

    .line 498
    return-void
.end method

.method public noteGPSReceivers([Landroid/os/Bundle;)V
    .locals 1
    .param p1, "GPSReceivers"    # [Landroid/os/Bundle;

    .line 989
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->currentUsingGps([Landroid/os/Bundle;)V

    .line 992
    :cond_0
    return-void
.end method

.method public noteGameMagicVoice(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "pid"    # I

    .line 1311
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteGameMagicVoice(II)V

    .line 1314
    :cond_0
    return-void
.end method

.method public noteGameModeIsRunning()V
    .locals 1

    .line 694
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->noteProcess2LevelPreLauchSuspended()V

    .line 695
    return-void
.end method

.method public noteGameModeIsStopped()V
    .locals 1

    .line 699
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->noteProcess2LevelPreLauchResume()V

    .line 700
    return-void
.end method

.method public noteIdleState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1070
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteIdleState(I)V

    .line 1073
    :cond_0
    return-void
.end method

.method public noteKeyguardStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 755
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteKeyguardStateChanged(I)V

    .line 758
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-ne p1, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteKeyguardStateChanged(Z)V

    .line 761
    :cond_2
    if-ne v1, p1, :cond_3

    .line 762
    const/16 v0, 0x69

    invoke-static {v0}, Lnubia/hardware/ColorfulLightManager;->requestColorfulLight(I)Z

    .line 764
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PressSensorController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 765
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PressSensorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/PressSensorController;->noteKeyguardStateChanged(I)V

    .line 767
    :cond_4
    return-void
.end method

.method public noteKillExceptionBackgroundApp(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1259
    return-void
.end method

.method public noteNaviGestureFinalization()V
    .locals 1

    .line 1305
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->noteNaviGestureFinalization()V

    .line 1308
    :cond_0
    return-void
.end method

.method public noteNaviGestureStarted()V
    .locals 1

    .line 1299
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaFullScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/NubiaFullScreenController;->noteNaviGestureStarted()V

    .line 1302
    :cond_0
    return-void
.end method

.method public noteNotificationClick(Landroid/content/Intent;J)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestamp"    # J

    .line 1244
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteNotificationClick(Landroid/content/Intent;J)V

    .line 1247
    :cond_0
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isVisiblePackage"    # Z
    .param p6, "topActivityPackageName"    # Ljava/lang/String;
    .param p7, "topActivity"    # Ljava/lang/String;

    move-object v0, p0

    move v9, p1

    move v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 503
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v1

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/server/appmgmt/CABCController;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 507
    :cond_0
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v1

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/server/appmgmt/SysStateProducer;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_1
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 512
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v1

    move v2, v9

    move v3, v10

    move-object v4, v11

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/appmgmt/ApplicationUtils;->notePausingActivity(IILjava/lang/String;ZLjava/lang/String;)V

    .line 515
    :cond_2
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 516
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v1

    invoke-virtual {v1, v9, v10, v11, v12}, Lcn/nubia/server/appmgmt/game/GameModeController;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_3
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 519
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    move-result-object v1

    invoke-virtual {v1, v9, v10, v11, v12}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_4
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 522
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v1

    invoke-interface {v1, v9, v11}, Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;->notePausingActivity(ILjava/lang/String;)V

    .line 524
    :cond_5
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 525
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->notePausingActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_6
    return-void
.end method

.method public notePlayAudioChange(IIII)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "sessionId"    # I
    .param p3, "streamType"    # I
    .param p4, "state"    # I

    .line 1023
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/LightEffectController;->notePlayAudioChange(IIII)V

    .line 1026
    :cond_0
    return-void
.end method

.method public notePlayMusicToColorfullight(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 933
    const/16 v0, 0x65

    invoke-static {v0}, Lnubia/hardware/ColorfulLightManager;->requestColorfulLight(I)Z

    .line 934
    return-void
.end method

.method public noteProcessNeedPreLaunch(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 7
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "isBg"    # Z
    .param p5, "is2LevelLaunch"    # Z

    .line 687
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/appmgmt/PreLaunchController;->noteProcessNeedPreLaunch(Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 690
    :cond_0
    return-void
.end method

.method public noteProcessStatus([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V
    .locals 11
    .param p1, "pid"    # [I
    .param p2, "uid"    # [I
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "adj"    # [I
    .param p5, "reasonPid"    # [I
    .param p6, "reasonPackageNames"    # [Ljava/lang/String;
    .param p7, "execServiceSize"    # [Z

    move-object v0, p0

    .line 719
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v1

    move-object v10, p4

    invoke-virtual {v1, v10}, Lcn/nubia/server/appmgmt/PreLaunchController;->noteAdjUpdate([I)V

    goto :goto_0

    .line 722
    :cond_0
    move-object v10, p4

    :goto_0
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 723
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v10

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteProcessStatus([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[Z)V

    .line 725
    :cond_1
    return-void
.end method

.method public noteProcessStatusChanged()V
    .locals 1

    .line 728
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteProcessStatusChanged()V

    .line 731
    :cond_0
    return-void
.end method

.method public noteRemoveWindow(I)V
    .locals 1
    .param p1, "pid"    # I

    .line 788
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/BadAppController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/BadAppController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/BadAppController;->noteRemoveWindow(I)V

    .line 791
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteRemoveWindow(I)V

    .line 794
    :cond_1
    return-void
.end method

.method public noteRemovingProcess(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteRemovingProcess(IILjava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcn/nubia/server/appmgmt/MotionDozeController;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcn/nubia/server/appmgmt/ApplicationUtils;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->noteRemovingProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 572
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteRemovingProcess(IILjava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    invoke-interface {v0, p1, p3, p4}, Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_5
    return-void
.end method

.method public noteResumedActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteResumedActivity(Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/CABCController;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->noteResumedAppDie(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_2
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z
    .param p6, "pid"    # I
    .param p7, "processName"    # Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/ApplicationUtils;->noteResumingActivity(IILjava/lang/String;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/appmgmt/permission/PermissionMonitorActivityState;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 448
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/appmgmt/CABCController;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 452
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;->noteResumingActivity(IILjava/lang/String;)V

    .line 456
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 457
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;ZI)V

    .line 460
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 461
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p6, p7}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->noteResumingActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 464
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 466
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->unfreezeResumeAppRunnable()V

    .line 469
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 470
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->noteResumingActivity(Ljava/lang/String;)V

    .line 472
    :cond_7
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 473
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 475
    :cond_8
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 476
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1700(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/appmgmt/game/GamePerformanceModeCtrl;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 478
    :cond_9
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "nubia_screen_switch_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/EyeProtectionController;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 479
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/EyeProtectionController;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/appmgmt/EyeProtectionController;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 482
    :cond_a
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 483
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p5, p2}, Lcn/nubia/server/appmgmt/applicationRecord/ApplicationRecordController;->noteResumingActivity(Ljava/lang/String;IZI)V

    .line 486
    :cond_b
    return-void
.end method

.method public noteScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 870
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationUtils;->noteScreenState(I)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ScreenSwitchController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ScreenSwitchController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ScreenSwitchController;->noteScreenState(I)V

    .line 876
    :cond_1
    return-void
.end method

.method public noteScreenStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 734
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteScreenStateChanged(I)V

    .line 737
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController;->noteScreenStateChanged(I)V

    .line 741
    :cond_1
    if-eqz p1, :cond_2

    .line 742
    const/16 v0, 0x68

    invoke-static {v0}, Lnubia/hardware/ColorfulLightManager;->requestColorfulLight(I)Z

    goto :goto_0

    .line 744
    :cond_2
    const/16 v0, 0x67

    invoke-static {v0}, Lnubia/hardware/ColorfulLightManager;->requestColorfulLight(I)Z

    .line 746
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ScreenSwitchController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 747
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ScreenSwitchController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ScreenSwitchController;->noteScreenStateChanged(I)V

    .line 749
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PressSensorController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 750
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PressSensorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/PressSensorController;->noteScreenStateChanged(I)V

    .line 752
    :cond_4
    return-void
.end method

.method public noteSetUserIsMonkey(Z)V
    .locals 1
    .param p1, "userIsMonkey"    # Z

    .line 1198
    sput-boolean p1, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->MONKEY_DEBUG:Z

    .line 1199
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteSetMonkeyDebug(Z)V

    .line 1202
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->setUserAMonkey(Z)V

    .line 1205
    :cond_1
    return-void
.end method

.method public noteStartActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortComponentName"    # Ljava/lang/String;

    .line 1262
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/PreLaunchController;->noteStartActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :cond_0
    return-void
.end method

.method public noteStartCtsTest(Z)V
    .locals 1
    .param p1, "isStartCts"    # Z

    .line 1293
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationCTSController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/ApplicationCTSController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationCTSController;->setCTSRule(Z)V

    .line 1296
    :cond_0
    return-void
.end method

.method public noteStartGps(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    move-object v0, p0

    .line 941
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 942
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteStartGps(IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 944
    :cond_0
    return-void
.end method

.method public noteStartMusic(IIJ)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "timestamp"    # J

    .line 921
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteStartMusic(IIJ)V

    .line 924
    :cond_0
    return-void
.end method

.method public noteStartNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "interval"    # J
    .param p7, "timestamp"    # J

    move-object v0, p0

    .line 953
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteStartNetworkPosition(IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 956
    :cond_0
    return-void
.end method

.method public noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "hostingType"    # Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/MotionDozeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/MotionDozeController;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteStartingProcess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_2
    return-void
.end method

.method public noteStatusBarExpanding(Z)V
    .locals 1
    .param p1, "expanding"    # Z

    .line 617
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1300(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/CABCController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/CABCController;->noteStatusBarExpanding(Z)V

    .line 620
    :cond_0
    return-void
.end method

.method public noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteStoppingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_1
    return-void
.end method

.method public noteThreadLag(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "tid"    # J
    .param p5, "delay"    # J
    .param p7, "reason"    # Ljava/lang/String;

    move-object v0, p0

    .line 1238
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1239
    iget-object v1, v0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteThreadLag(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 1241
    :cond_0
    return-void
.end method

.method public noteUpdateFunctionState(I)V
    .locals 1
    .param p1, "parameter"    # I

    .line 1317
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3800(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->updateFunctionState(I)V

    .line 1320
    :cond_0
    return-void
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1250
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->noteWakeUp(Ljava/lang/String;I)V

    .line 1253
    :cond_0
    return-void
.end method

.method public noteWindowStateChange(III)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "windowId"    # I
    .param p3, "state"    # I

    .line 770
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->noteWindowStateChange(III)V

    .line 773
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/game/GameModeController;->noteWindowStateChange(III)V

    .line 776
    :cond_1
    return-void
.end method

.method public notifyClipChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 995
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1500(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->notifyClipChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :cond_0
    return-void
.end method

.method public notifyGameSwitchChanged(Z)V
    .locals 1
    .param p1, "gameSwitch"    # Z

    .line 1269
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/server/appmgmt/Vibration4D/IVibration4DController;->notifyGameSwitchChanged(Z)V

    .line 1272
    :cond_0
    return-void
.end method

.method public registerActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IMutexCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->registerCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 1092
    :cond_0
    return-void
.end method

.method public registerAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z
    .locals 1
    .param p1, "cb"    # Lnubia/os/IAudioPlayCallback;

    .line 1043
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/LightEffectController;->registerAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z

    move-result v0

    return v0

    .line 1046
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerCallback(Lnubia/os/ITaskCallback;J)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J

    .line 399
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/SysStateProducer;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 406
    :cond_1
    return-void
.end method

.method public registerCallbackWithFilter(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;
    .param p2, "flag"    # J
    .param p4, "filter"    # Landroid/os/Bundle;

    .line 409
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/SysStateProducer;->registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 415
    :cond_1
    return-void
.end method

.method public registerFreezeChangeCallback(Lnubia/os/IFreezeChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/IFreezeChangeCallback;

    .line 1208
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->registerFreezeChangeCallback(Lnubia/os/IFreezeChangeCallback;)V

    .line 1211
    :cond_0
    return-void
.end method

.method public releasePerformanceLock(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 797
    return-void
.end method

.method public setAppLearningCallback(Lnubia/os/IAppLearningCallback;)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/IAppLearningCallback;

    .line 670
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2502(Lcn/nubia/server/appmgmt/ApplicationManagerService;Lnubia/os/IAppLearningCallback;)Lnubia/os/IAppLearningCallback;

    .line 671
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/PreLaunchController;->setAppLearningCallback(Lnubia/os/IAppLearningCallback;)V

    .line 674
    :cond_0
    return-void
.end method

.method public setAppLearningProcessList(Ljava/util/List;)V
    .locals 1
    .param p1, "processList"    # Ljava/util/List;

    .line 703
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/PreLaunchController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/PreLaunchController;->updatePreStartByWhiteList()V

    .line 704
    if-nez p1, :cond_0

    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2802(Lcn/nubia/server/appmgmt/ApplicationManagerService;Ljava/util/List;)Ljava/util/List;

    .line 706
    return-void
.end method

.method public setFreezeCallback(Lnubia/os/IFreezeCallback;)V
    .locals 1
    .param p1, "callback"    # Lnubia/os/IFreezeCallback;

    .line 662
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->setFreezeCallback(Lnubia/os/IFreezeCallback;)V

    goto :goto_0

    .line 665
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0, p1}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2402(Lcn/nubia/server/appmgmt/ApplicationManagerService;Lnubia/os/IFreezeCallback;)Lnubia/os/IFreezeCallback;

    .line 667
    :goto_0
    return-void
.end method

.method public setLightEffectState(II)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "state"    # I

    .line 1036
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/LightEffectController;->setLightEffectState(II)Z

    move-result v0

    return v0

    .line 1039
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNetworkFirewall(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enableNetwork"    # Z

    .line 1068
    return-void
.end method

.method public setResolutionCtlEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 639
    return-void
.end method

.method public shouldReduceResolution(IILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "callerName"    # Ljava/lang/String;

    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public smallPermissionDialogClick(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 983
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->smallPermissionDialogClick(Landroid/os/Bundle;)V

    .line 986
    :cond_0
    return-void
.end method

.method public startGameBoxIfGamekeyOn(J)Z
    .locals 1
    .param p1, "delay"    # J

    .line 1189
    const/4 v0, 0x1

    return v0
.end method

.method public startOrStopGameBox(Z)Z
    .locals 1
    .param p1, "gameSwitch"    # Z

    .line 1178
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    .line 1178
    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1600(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/game/GameModeController;

    move-result-object v0

    .line 1179
    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/GameModeController;->startOrStopGameBox(Z)Z

    move-result v0

    .line 1178
    :goto_0
    return v0
.end method

.method public unfreezeWhenKill(I)V
    .locals 1
    .param p1, "pid"    # I

    .line 858
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->unfreezeWhenKill(I)V

    .line 861
    :cond_0
    return-void
.end method

.method public uninstallEvent(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 971
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3200(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->uninstallEvent(Landroid/os/Bundle;)V

    .line 974
    :cond_0
    return-void
.end method

.method public unregisterActionMutexCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcn/nubia/mutex/IMutexCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$3400(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/appmgmt/actmutex/ActionMutexController;->unregisterCallback(Ljava/lang/String;Lcn/nubia/mutex/IMutexCallback;)V

    .line 1099
    :cond_0
    return-void
.end method

.method public unregisterAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z
    .locals 1
    .param p1, "cb"    # Lnubia/os/IAudioPlayCallback;

    .line 1050
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$2100(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/LightEffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/LightEffectController;->unregisterAudioPlayCallback(Lnubia/os/IAudioPlayCallback;)Z

    move-result v0

    return v0

    .line 1053
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterCallback(Lnubia/os/ITaskCallback;)V
    .locals 1
    .param p1, "cb"    # Lnubia/os/ITaskCallback;

    .line 418
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$900(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/SysStateProducer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/SysStateProducer;->unregisterCallback(Lnubia/os/ITaskCallback;)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->unregisterCallback(Lnubia/os/ITaskCallback;)V

    .line 424
    :cond_1
    return-void
.end method

.method public updateHighlightsCoordinate(I)V
    .locals 1
    .param p1, "gameType"    # I

    .line 427
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationManagerService$ApplicationManagerStub;->this$0:Lcn/nubia/server/appmgmt/ApplicationManagerService;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationManagerService;->access$1000(Lcn/nubia/server/appmgmt/ApplicationManagerService;)Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;->updateHighlightsCoordinate(I)V

    .line 430
    :cond_0
    return-void
.end method
