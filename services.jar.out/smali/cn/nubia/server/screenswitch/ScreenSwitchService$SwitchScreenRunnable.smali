.class Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchScreenRunnable"
.end annotation


# instance fields
.field private mIsAodCase:Z

.field private mReason:Ljava/lang/String;

.field private mTargetId:I

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;ILjava/lang/String;)V
    .locals 0
    .param p2, "targetId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 752
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mIsAodCase:Z

    .line 753
    iput p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    .line 754
    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    .line 755
    return-void
.end method

.method static synthetic access$7002(Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;
    .param p1, "x1"    # Z

    .line 747
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mIsAodCase:Z

    return p1
.end method

.method private doSwitch(Z)V
    .locals 7
    .param p1, "isSkipSwitchTask"    # Z

    .line 789
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start switch screen mTargetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->acquirePerformance()V

    .line 791
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setScreenBrightness(I)V

    .line 793
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5502(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I

    .line 794
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mIsAodCase:Z

    invoke-static {v0, p1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchService;ZZ)V

    .line 796
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->resetResults()V

    .line 797
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->resetResults()V

    .line 798
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->resetResults()V

    .line 799
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6000(Lcn/nubia/server/screenswitch/ScreenSwitchService;ILcn/nubia/server/screenswitch/SwitchCallbackList;)V

    .line 800
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5900(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6000(Lcn/nubia/server/screenswitch/ScreenSwitchService;ILcn/nubia/server/screenswitch/SwitchCallbackList;)V

    .line 801
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    .line 803
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 804
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6200(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V

    goto :goto_0

    .line 805
    :cond_0
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    if-nez v0, :cond_1

    .line 806
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6200(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V

    .line 808
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x32

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 810
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    goto :goto_1

    .line 811
    :catch_0
    move-exception v0

    .line 816
    :cond_2
    :goto_1
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 817
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransactionSync()V

    .line 818
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$600()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ScreenSwitchService"

    const-string/jumbo v3, "start setActiveConfig switch screen"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchInterface;

    move-result-object v0

    iget v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v0, v3}, Lcn/nubia/server/screenswitch/SwitchInterface;->execSwitch(I)Z

    move-result v0

    .line 821
    .local v0, "changed":Z
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5800(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6000(Lcn/nubia/server/screenswitch/ScreenSwitchService;ILcn/nubia/server/screenswitch/SwitchCallbackList;)V

    .line 822
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    .line 823
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    invoke-static {v3, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6200(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V

    .line 825
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v3, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->updateBrightScreenChange(I)V

    .line 827
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6600(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    .line 829
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setScreenBrightness(I)V

    .line 830
    const-string/jumbo v2, "nubiacamera"

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 831
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3002(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I

    .line 833
    :cond_4
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->releasePerformance()V

    .line 834
    const-string v1, "ScreenSwitchService"

    const-string v2, "end setActiveConfig switch screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    if-eqz v0, :cond_5

    .line 837
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "displayid"

    iget v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6700(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 840
    :cond_5
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_in_use"

    iget v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->translate(ILjava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 841
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$6302(Lcn/nubia/server/screenswitch/ScreenSwitchService;J)J

    .line 842
    return-void
.end method

.method private translate(ILjava/lang/String;)I
    .locals 1
    .param p1, "id"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 846
    const-string v0, "binder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    or-int/lit8 p1, p1, 0x10

    .line 849
    :cond_0
    return p1
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 758
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v0

    .line 759
    .local v0, "isSkipSwitchTask":Z
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5300(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    const-string v1, "ScreenSwitchService"

    const-string/jumbo v2, "the second screen is not detected, don\'t switch screen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void

    .line 763
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$3500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v1

    .line 764
    .local v1, "current":I
    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    if-ne v2, v1, :cond_1

    .line 765
    const-string v2, "ScreenSwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target screenid is same as current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    return-void

    .line 768
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5400(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 769
    const-string v2, "ScreenSwitchService"

    const-string v3, "abort switch screen action when screen projection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void

    .line 773
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwitchScreenRunnable("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x80000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 777
    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$1500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 778
    const/4 v5, 0x1

    invoke-static {v5}, Lnubia/os/screenswitch/ScreenSwitchManager;->setIsSwitching(Z)V

    .line 780
    :cond_3
    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$SwitchScreenRunnable;->doSwitch(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    invoke-static {v2}, Lnubia/os/screenswitch/ScreenSwitchManager;->setIsSwitching(Z)V

    .line 783
    nop

    .line 784
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 786
    return-void

    .line 782
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lnubia/os/screenswitch/ScreenSwitchManager;->setIsSwitching(Z)V

    throw v3
.end method
