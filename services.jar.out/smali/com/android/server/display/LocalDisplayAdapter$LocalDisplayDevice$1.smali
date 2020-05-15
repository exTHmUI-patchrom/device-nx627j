.class Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestDisplayStateLocked(II)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field final synthetic val$brightness:I

.field final synthetic val$brightnessChanged:Z

.field final synthetic val$displayId:I

.field final synthetic val$nubiaState:I

.field final synthetic val$oldState:I

.field final synthetic val$state:I

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIIZIILandroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 548
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    iput p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    iput-boolean p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    iput p6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$nubiaState:I

    iput p7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightness:I

    iput-object p8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setDisplayBrightness(I)V
    .locals 7
    .param p1, "brightness"    # I

    .line 707
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->access$300(Lcom/android/server/display/LocalDisplayAdapter;)Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    .line 708
    .local v0, "ssi":Lnubia/os/screenswitch/ScreenSwitchInternal;
    if-eqz v0, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$400(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->confirmBrightness(II)I

    move-result p1

    .line 713
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayBrightness(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 716
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    const/4 v4, -0x1

    const/high16 v5, -0x80000000

    if-nez v1, :cond_2

    .line 717
    if-ne p1, v4, :cond_1

    .line 718
    const/16 p1, 0xff0

    goto :goto_0

    .line 719
    :cond_1
    if-ne p1, v5, :cond_7

    .line 721
    const/4 p1, 0x0

    goto :goto_0

    .line 723
    :cond_2
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    const/4 v6, 0x5

    if-ne v1, v6, :cond_7

    .line 724
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnubia/os/screenswitch/ScreenSwitchInternal;->getShowingDisplayId()I

    move-result v6

    if-eq v6, v1, :cond_4

    :cond_3
    if-ne p1, v5, :cond_7

    .line 726
    :cond_4
    if-ne p1, v4, :cond_5

    .line 727
    const/16 p1, 0x1ff0

    goto :goto_0

    .line 728
    :cond_5
    if-ne p1, v5, :cond_6

    .line 729
    sget v4, Landroid/os/PowerManager;->INTERNAL_BRIGHTNESS_ON:I

    add-int/lit8 p1, v4, 0x1

    goto :goto_0

    .line 731
    :cond_6
    sget v4, Landroid/os/PowerManager;->INTERNAL_BRIGHTNESS_ON:I

    add-int/2addr v4, p1

    add-int/lit8 p1, v4, 0x1

    .line 737
    :cond_7
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 738
    const-string v1, "ScreenBrightness"

    invoke-static {v2, v3, v1, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    nop

    .line 743
    return-void

    .line 741
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method private setDisplayState(I)V
    .locals 8
    .param p1, "state"    # I

    .line 638
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$100(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/32 v2, 0x20000

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "SidekickInternal#endDisplayControl"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/sidekick/SidekickInternal;->endDisplayControl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 645
    nop

    .line 646
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$102(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z

    goto :goto_0

    .line 644
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 649
    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-static {v0}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->checkSolutionWithDevice(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 650
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->access$300(Lcom/android/server/display/LocalDisplayAdapter;)Lnubia/os/screenswitch/ScreenSwitchInternal;

    move-result-object v0

    .line 651
    .local v0, "ssi":Lnubia/os/screenswitch/ScreenSwitchInternal;
    sget-object v4, Lcom/android/server/dreams/DreamManagerService;->mWriteNodeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 652
    const/4 v5, -0x1

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$400(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v6

    invoke-virtual {v0, v6, p1}, Lnubia/os/screenswitch/ScreenSwitchInternal;->confirmPowerState(II)I

    move-result v6

    goto :goto_1

    .line 660
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 652
    :cond_1
    move v6, v5

    .line 653
    .local v6, "update":I
    :goto_1
    if-eq v6, v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, p1

    :goto_2
    move p1, v5

    .line 654
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$500(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/service/dreams/DreamManagerInternal;

    move-result-object v5

    if-nez v5, :cond_3

    .line 655
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    const-class v7, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v5, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$502(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/service/dreams/DreamManagerInternal;)Landroid/service/dreams/DreamManagerInternal;

    .line 657
    :cond_3
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$500(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/service/dreams/DreamManagerInternal;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 658
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$500(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/service/dreams/DreamManagerInternal;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$400(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v7

    invoke-virtual {v5, v7, p1}, Landroid/service/dreams/DreamManagerInternal;->notifyScreenStateChangeForAOD(II)V

    .line 660
    .end local v6    # "update":I
    :cond_4
    monitor-exit v4

    goto :goto_4

    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 663
    .end local v0    # "ssi":Lnubia/os/screenswitch/ScreenSwitchInternal;
    :cond_5
    :goto_4
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v0

    .line 664
    .local v0, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisplayState(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 664
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 669
    :try_start_2
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$nubiaState:I

    const/16 v5, 0x100

    if-lt v4, v5, :cond_6

    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$nubiaState:I

    const/16 v5, 0x200

    if-ge v4, v5, :cond_6

    .line 671
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-static {v4, v1}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    goto :goto_5

    .line 674
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 681
    :goto_5
    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->noteDisplayPowerModeChanged(I)V

    .line 683
    const-string v1, "DisplayPowerMode"

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 685
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 686
    nop

    .line 689
    invoke-static {p1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 690
    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$100(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 691
    const-string v1, "SidekickInternal#startDisplayControl"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 694
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/hardware/sidekick/SidekickInternal;->startDisplayControl(I)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$102(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 696
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 697
    goto :goto_6

    .line 696
    :catchall_2
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .line 699
    :cond_7
    :goto_6
    return-void

    .line 685
    :catchall_3
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method private setVrMode(Z)V
    .locals 1
    .param p1, "isVrEnabled"    # Z

    .line 626
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setVrMode(Z)V

    .line 627
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 552
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 553
    .local v0, "currentState":I
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-nez v1, :cond_8

    .line 555
    :cond_0
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 557
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    goto :goto_3

    .line 558
    :cond_1
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-ne v1, v3, :cond_2

    goto :goto_2

    .line 562
    :cond_2
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 567
    :cond_3
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-nez v1, :cond_4

    goto :goto_0

    .line 577
    :cond_4
    return-void

    .line 574
    :cond_5
    :goto_0
    return-void

    .line 564
    :cond_6
    :goto_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 565
    const/4 v0, 0x2

    goto :goto_3

    .line 560
    :cond_7
    :goto_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 561
    const/4 v0, 0x3

    .line 584
    :cond_8
    :goto_3
    const/4 v1, 0x0

    .line 585
    .local v1, "vrModeChange":Z
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_9

    if-ne v0, v4, :cond_b

    :cond_9
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v0, v3, :cond_b

    .line 587
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-ne v3, v4, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setVrMode(Z)V

    .line 588
    const/4 v1, 0x1

    .line 593
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    const/16 v3, 0x100

    if-nez v2, :cond_d

    if-nez v1, :cond_d

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$nubiaState:I

    if-lt v2, v3, :cond_c

    goto :goto_5

    .line 601
    :cond_c
    invoke-static {}, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 605
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 606
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightness:I

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(I)V

    goto :goto_6

    .line 598
    :cond_d
    :goto_5
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightness:I

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(I)V

    .line 611
    :cond_e
    :goto_6
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-ne v2, v0, :cond_f

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$nubiaState:I

    if-lt v2, v3, :cond_10

    .line 616
    :cond_f
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 618
    :cond_10
    return-void
.end method
