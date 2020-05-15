.class Lcom/android/server/policy/PhoneWindowManager$9;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 2512
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebug()V
    .locals 0

    .line 2606
    return-void
.end method

.method public onDown()V
    .locals 2

    .line 2609
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchStart()V

    .line 2610
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2611
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$4000(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2612
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 2613
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4002(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 2615
    :cond_0
    return-void
.end method

.method public onFling(I)V
    .locals 2
    .param p1, "duration"    # I

    .line 2539
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 2543
    :cond_0
    return-void
.end method

.method public onMouseHoverAtBottom()V
    .locals 4

    .line 2629
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2630
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2631
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2632
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2633
    return-void
.end method

.method public onMouseHoverAtTop()V
    .locals 4

    .line 2622
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2623
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2624
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2625
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2626
    return-void
.end method

.method public onMouseLeaveFromEdge()V
    .locals 2

    .line 2636
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2637
    return-void
.end method

.method public onScroll(Z)V
    .locals 6
    .param p1, "started"    # Z

    .line 2571
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3800()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2572
    return-void

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2576
    .local v0, "currentPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3900(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    .line 2577
    .local v1, "isGame":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    if-nez v2, :cond_1

    .line 2578
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 2580
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    if-nez v2, :cond_2

    .line 2581
    const-string v2, "WindowManager"

    const-string v3, "Error: boost object null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    return-void

    .line 2584
    :cond_2
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3800()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 2585
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    if-nez v2, :cond_3

    .line 2586
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v4, Landroid/util/BoostFramework;

    invoke-direct {v4}, Landroid/util/BoostFramework;-><init>()V

    iput-object v4, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 2588
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    if-nez v2, :cond_4

    .line 2589
    const-string v2, "WindowManager"

    const-string v3, "Error: boost object null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    return-void

    .line 2592
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    const/16 v4, 0x1080

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v0, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2595
    :cond_5
    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 2596
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    const/16 v4, 0x1087

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v0, v3, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    goto :goto_0

    .line 2599
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 2601
    :goto_0
    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 2

    .line 2521
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2522
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1500(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2524
    :cond_0
    return-void
.end method

.method public onSwipeFromLeft()V
    .locals 2

    .line 2533
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2534
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1500(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2536
    :cond_0
    return-void
.end method

.method public onSwipeFromRight()V
    .locals 2

    .line 2527
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1500(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2530
    :cond_0
    return-void
.end method

.method public onSwipeFromTop()V
    .locals 2

    .line 2515
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 2516
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1500(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2518
    :cond_0
    return-void
.end method

.method public onUpOrCancel()V
    .locals 1

    .line 2618
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchEnd()V

    .line 2619
    return-void
.end method

.method public onVerticalFling(I)V
    .locals 6
    .param p1, "duration"    # I

    .line 2547
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3800()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2548
    return-void

    .line 2551
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2552
    .local v0, "currentPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3900(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    .line 2553
    .local v1, "isGame":Z
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3800()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 2554
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v2, :cond_1

    .line 2555
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 2556
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$4002(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 2558
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v2, :cond_2

    .line 2559
    const-string v2, "WindowManager"

    const-string v3, "Error: boost object null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    return-void

    .line 2563
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    add-int/lit16 v4, p1, 0xa0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2565
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->access$4002(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 2567
    :cond_3
    return-void
.end method
