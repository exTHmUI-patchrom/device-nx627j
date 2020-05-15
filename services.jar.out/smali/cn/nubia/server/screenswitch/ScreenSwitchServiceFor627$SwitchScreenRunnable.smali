.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchScreenRunnable"
.end annotation


# instance fields
.field private mIsAodCase:Z

.field private mOnlyCloseBack:Z

.field private mReason:Ljava/lang/String;

.field private mTargetId:I

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILjava/lang/String;)V
    .locals 0
    .param p2, "targetId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 919
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mIsAodCase:Z

    .line 917
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mOnlyCloseBack:Z

    .line 920
    iput p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    .line 921
    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    .line 922
    return-void
.end method

.method static synthetic access$8502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;
    .param p1, "x1"    # Z

    .line 913
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mIsAodCase:Z

    return p1
.end method

.method static synthetic access$8602(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;
    .param p1, "x1"    # Z

    .line 913
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mOnlyCloseBack:Z

    return p1
.end method

.method static synthetic access$8802(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;
    .param p1, "x1"    # Ljava/lang/String;

    .line 913
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;

    .line 913
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    return v0
.end method

.method static synthetic access$9002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;
    .param p1, "x1"    # I

    .line 913
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    return p1
.end method

.method private doSwitch(Z)V
    .locals 8
    .param p1, "isSkipSwitchTask"    # Z

    .line 979
    const-string v0, "ScreenSwitchService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start switch screen mTargetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->acquirePerformance()V

    .line 981
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->updateToSwitchingStateId(I)V

    .line 982
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 983
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mIsAodCase:Z

    if-eqz v0, :cond_0

    const-string v0, "aod"

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    .line 984
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mOnlyCloseBack:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ligth_effect"

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    .line 985
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v0

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->isNeedCloseBrightness(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setScreenBrightness(I)V

    .line 988
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setBacklight(II)V

    .line 991
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 992
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mOnlyCloseBack:Z

    if-nez v0, :cond_4

    .line 993
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->noteSwitchScreenTo(I)V

    .line 995
    :cond_4
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mOnlyCloseBack:Z

    if-nez v0, :cond_5

    .line 996
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mIsAodCase:Z

    invoke-static {v0, p1, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ZZ)V

    .line 998
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 999
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 1002
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->resetResults()V

    .line 1003
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->resetResults()V

    .line 1004
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/SwitchCallbackList;->resetResults()V

    .line 1005
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILcn/nubia/server/screenswitch/SwitchCallbackList;)V

    .line 1006
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILcn/nubia/server/screenswitch/SwitchCallbackList;)V

    .line 1007
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 1009
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    if-ne v0, v3, :cond_7

    .line 1010
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V

    goto :goto_1

    .line 1011
    :cond_7
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    if-nez v0, :cond_8

    .line 1012
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V

    .line 1014
    :cond_8
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x32

    cmp-long v0, v4, v6

    if-gez v0, :cond_9

    .line 1016
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    goto :goto_2

    .line 1017
    :catch_0
    move-exception v0

    .line 1021
    :cond_9
    :goto_2
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ScreenSwitchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start setActiveConfig switch screen mIsAodCase= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mIsAodCase:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_a
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v0

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->execSwitch(ILjava/lang/String;)Z

    move-result v0

    .line 1024
    .local v0, "changed":Z
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchCallbackList;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;ILcn/nubia/server/screenswitch/SwitchCallbackList;)V

    .line 1025
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 1026
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    invoke-static {v2, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)V

    .line 1028
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    iget v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v2, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->updateBrightScreenChange(I)V

    .line 1030
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 1035
    const-wide/16 v4, 0x22

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1038
    goto :goto_3

    .line 1036
    :catch_1
    move-exception v2

    .line 1037
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v4, "ScreenSwitchService"

    const-string v5, "do switch sleep error"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_3
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v2

    iget v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    iget-object v5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->isNeedCloseBrightness(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1041
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setScreenBrightness(I)V

    .line 1043
    :cond_b
    const-string/jumbo v2, "nubiacamera"

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1044
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4502(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 1046
    :cond_c
    invoke-static {}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->releasePerformance()V

    .line 1047
    const-string v1, "ScreenSwitchService"

    const-string v2, "end setActiveConfig switch screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    if-eqz v0, :cond_d

    .line 1049
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "displayid"

    iget v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1052
    :cond_d
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_in_use"

    iget v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->translate(ILjava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1053
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 1054
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$8002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;J)J

    .line 1055
    return-void
.end method

.method private translate(ILjava/lang/String;)I
    .locals 1
    .param p1, "id"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1059
    const-string v0, "binder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    or-int/lit8 p1, p1, 0x10

    .line 1062
    :cond_0
    return p1
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 925
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    const-string v0, "ScreenSwitchService"

    const-string/jumbo v1, "monkey test, skip switch."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    .line 930
    .local v0, "isSkipSwitchTask":Z
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 931
    const-string v1, "ScreenSwitchService"

    const-string/jumbo v2, "the second screen is not detected, don\'t switch screen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return-void

    .line 934
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$4900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    .line 935
    .local v1, "current":I
    const-string v2, "ScreenSwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTargetId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    if-ne v1, v3, :cond_2

    .line 937
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->forcePowerOnBackScreen()V

    .line 938
    return-void

    .line 940
    :cond_2
    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    const-string/jumbo v2, "wakeup"

    iget-object v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 941
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->checkAndResetPowerMode()V

    .line 942
    const-string v2, "ScreenSwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target screenid is same as current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return-void

    .line 946
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$6900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/SwitchImplFor627;

    move-result-object v2

    iget v4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v2, v4}, Lcn/nubia/server/screenswitch/SwitchImplFor627;->needSwitch(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 947
    const-string v2, "ScreenSwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target screenid is same as current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void

    .line 951
    :cond_4
    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mOnlyCloseBack:Z

    if-eqz v2, :cond_5

    if-eq v1, v3, :cond_5

    .line 952
    const-string v2, "ScreenSwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", do not need close SCREEN_ALL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void

    .line 956
    :cond_5
    iget-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mOnlyCloseBack:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_6

    iget v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    if-eq v2, v3, :cond_6

    move v2, v5

    goto :goto_0

    :cond_6
    move v2, v4

    .line 957
    .local v2, "showToastIfNeeded":Z
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$7000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 958
    const-string v3, "ScreenSwitchService"

    const-string v4, "abort switch screen action when screen projection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-void

    .line 962
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SwitchScreenRunnable("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mTargetId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", reason="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v6, 0x80000

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 966
    :try_start_0
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$2100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 967
    invoke-static {v5}, Lnubia/os/screenswitch/ScreenSwitchManager;->setIsSwitching(Z)V

    .line 969
    :cond_8
    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3, v5}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$802(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 970
    invoke-direct {p0, v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$SwitchScreenRunnable;->doSwitch(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    invoke-static {v4}, Lnubia/os/screenswitch/ScreenSwitchManager;->setIsSwitching(Z)V

    .line 973
    nop

    .line 974
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 976
    return-void

    .line 972
    :catchall_0
    move-exception v3

    invoke-static {v4}, Lnubia/os/screenswitch/ScreenSwitchManager;->setIsSwitching(Z)V

    throw v3
.end method
