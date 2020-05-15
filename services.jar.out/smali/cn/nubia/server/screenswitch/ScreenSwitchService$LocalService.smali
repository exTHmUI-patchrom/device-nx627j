.class final Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;
.super Lnubia/os/screenswitch/ScreenSwitchInternal;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0

    .line 1334
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p2, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$1;

    .line 1334
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    return-void
.end method


# virtual methods
.method public getShowingDisplayId()I
    .locals 1

    .line 1437
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v0

    return v0
.end method

.method public isKeepAdj(I)Z
    .locals 2
    .param p1, "pid"    # I

    .line 1460
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1461
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$10100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1462
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$10100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$10200(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public isLandscapeSwipe()Z
    .locals 1

    .line 1426
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiTasksEnable()Z
    .locals 1

    .line 1466
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    return v0
.end method

.method public isThreeFingerLeft()Z
    .locals 1

    .line 1419
    const/4 v0, 0x1

    return v0
.end method

.method public isThreeFingerSwipe()Z
    .locals 1

    .line 1415
    const/4 v0, 0x0

    return v0
.end method

.method public noteActivityResume(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z
    .locals 8
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "cls"    # Ljava/lang/String;
    .param p5, "token"    # Landroid/view/IApplicationToken;
    .param p6, "isIgnore"    # Z
    .param p7, "pid"    # I

    .line 1408
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9400(Lcn/nubia/server/screenswitch/ScreenSwitchService;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;ZI)Z

    move-result v0

    return v0
.end method

.method public noteAllDrawn()V
    .locals 2

    .line 1441
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "noteAllDrawn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1443
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9602(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 1444
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    .line 1445
    return-void
.end method

.method public noteDisplayFreezingState(Z)V
    .locals 1
    .param p1, "isFreezing"    # Z

    .line 1456
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$10002(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 1457
    return-void
.end method

.method public noteExitTopTask(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 1433
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9500(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V

    .line 1434
    return-void
.end method

.method public noteSurfaceChange(IILandroid/view/IApplicationToken;ZI)V
    .locals 6
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "token"    # Landroid/view/IApplicationToken;
    .param p4, "hasSurface"    # Z
    .param p5, "flags"    # I

    .line 1448
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9800(Lcn/nubia/server/screenswitch/ScreenSwitchService;IILandroid/view/IApplicationToken;ZI)V

    .line 1449
    return-void
.end method

.method public noteUpdateRotation(Z)V
    .locals 1
    .param p1, "isStart"    # Z

    .line 1452
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9902(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 1453
    return-void
.end method

.method public resetDetectorWhenTimeout()V
    .locals 1

    .line 1382
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/HorizontalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/HorizontalDetector;->disable()V

    .line 1383
    return-void
.end method

.method public resetLandscapeSwipe()V
    .locals 0

    .line 1430
    return-void
.end method

.method public resetThreeFingerSwipe()V
    .locals 0

    .line 1423
    return-void
.end method

.method public setDualFingerprintPress(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .line 1391
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1392
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService$1;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1404
    return-void

    .line 1391
    :cond_1
    :goto_0
    return-void
.end method

.method public setRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1336
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8502(Lcn/nubia/server/screenswitch/ScreenSwitchService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1337
    return-void
.end method

.method public setScreenFaceUpListener(Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;)V
    .locals 3
    .param p1, "listener"    # Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    .line 1386
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenFaceUpListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$202(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    .line 1388
    return-void
.end method

.method public startDetectingScreen()V
    .locals 1

    .line 1378
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$9000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/HorizontalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/HorizontalDetector;->enable()V

    .line 1379
    return-void
.end method

.method public threeFingerSwipe(Z)V
    .locals 0
    .param p1, "isLeft"    # Z

    .line 1412
    return-void
.end method

.method public updateRequest(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 1340
    const-string v0, "1"

    const-string/jumbo v1, "sys.aod.disable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1341
    .local v0, "inScreenProjection":Z
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ScreenSwitchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wakeUpNoUpdateLocked reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mPoweronUpScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1343
    const-string v3, "ScreenSwitchService"

    const-string v4, " switch to primary display when screen projection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8600(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;I)V

    .line 1345
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8700(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 1347
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_7

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$2000(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Nubia mode switching wake up!"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_0

    .line 1350
    :cond_2
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    const-string v3, "android.server.wm:TURN_ON"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "com.android.incallui"

    .line 1351
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.tencent.mm"

    .line 1352
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.tencent.mobileqq"

    .line 1353
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1354
    :cond_3
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8600(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;I)V

    .line 1355
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8700(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 1356
    :cond_4
    const-string/jumbo v3, "nubia_aod"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1357
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8600(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;I)V

    .line 1358
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8700(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 1360
    :cond_5
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v6}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v6

    invoke-static {v3, v5, v6}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8600(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;I)V

    .line 1361
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v6}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v6

    if-ne v6, v4, :cond_6

    move v2, v1

    nop

    :cond_6
    invoke-static {v3, v5, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8700(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 1348
    :cond_7
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8600(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;I)V

    .line 1349
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$8700(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/Object;Z)V

    .line 1364
    :goto_1
    if-eqz p1, :cond_9

    const-string v2, "android.server.wm:TURN_ON"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "com.android.incallui"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "com.tencent.mm"

    .line 1365
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "com.tencent.mobileqq"

    .line 1366
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1367
    :cond_8
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    goto :goto_3

    .line 1368
    :cond_9
    const-string v2, "AlarmAlertFullScreen"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "bright"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_2

    .line 1372
    :cond_a
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->access$8900(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    goto :goto_3

    .line 1370
    :cond_b
    :goto_2
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3102(Lcn/nubia/server/screenswitch/ScreenSwitchService;Z)Z

    .line 1375
    :goto_3
    return-void
.end method
