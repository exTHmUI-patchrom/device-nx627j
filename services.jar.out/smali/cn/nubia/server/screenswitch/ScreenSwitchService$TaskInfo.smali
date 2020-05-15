.class Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskInfo"
.end annotation


# instance fields
.field private mCls:Ljava/lang/String;

.field private mIsDestroy:Z

.field private mIsExit:Z

.field private mIsHomeStack:Z

.field private mIsShowWhenScreenOffLocked:Z

.field private mPkg:Ljava/lang/String;

.field private mStackId:I

.field private mTaskId:I

.field private mToken:Landroid/view/IApplicationToken;

.field private mTopPid:I

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 1

    .line 1621
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1622
    const/4 p1, -0x1

    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTaskId:I

    .line 1623
    const/4 p1, 0x0

    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mStackId:I

    .line 1624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    .line 1625
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsDestroy:Z

    .line 1626
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    .line 1627
    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mPkg:Ljava/lang/String;

    .line 1628
    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mCls:Ljava/lang/String;

    .line 1629
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    .line 1630
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsExit:Z

    .line 1631
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTopPid:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p2, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$1;

    .line 1621
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    return-void
.end method

.method static synthetic access$10200(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTopPid:I

    return v0
.end method

.method static synthetic access$10600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTaskId:I

    return v0
.end method

.method static synthetic access$10602(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .param p1, "x1"    # I

    .line 1621
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTaskId:I

    return p1
.end method

.method static synthetic access$10700(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsExit:Z

    return v0
.end method

.method static synthetic access$10800(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    return v0
.end method

.method static synthetic access$10802(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .param p1, "x1"    # Z

    .line 1621
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    return p1
.end method

.method static synthetic access$10900(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/view/IApplicationToken;
    .param p6, "x6"    # I

    .line 1621
    invoke-direct/range {p0 .. p6}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->setTaskIfNeed(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    return-void
.end method

.method static synthetic access$11000(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/view/IApplicationToken;
    .param p4, "x4"    # I

    .line 1621
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->updateInfo(Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    return-void
.end method

.method static synthetic access$11100(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .param p1, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->setTask(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V

    return-void
.end method

.method static synthetic access$11200(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/view/IApplicationToken;
    .param p6, "x6"    # I

    .line 1621
    invoke-direct/range {p0 .. p6}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->setTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    return-void
.end method

.method static synthetic access$11300(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .param p1, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->isSameTask(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11400(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$11402(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .param p1, "x1"    # Z

    .line 1621
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsDestroy:Z

    return p1
.end method

.method static synthetic access$11500(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->isHomeActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11600(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;IILandroid/view/IApplicationToken;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/IApplicationToken;

    .line 1621
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->isSameActivity(IILandroid/view/IApplicationToken;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11700(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->setIsExit()V

    return-void
.end method

.method static synthetic access$11800(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Landroid/view/IApplicationToken;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    return-object v0
.end method

.method static synthetic access$8900(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1621
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    return v0
.end method

.method static synthetic access$8902(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;
    .param p1, "x1"    # Z

    .line 1621
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    return p1
.end method

.method private isHomeActivity()Z
    .locals 2

    .line 1693
    const-string v0, "cn.nubia.launcher"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.launcher3.Launcher"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mPkg:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mCls:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameActivity(IILandroid/view/IApplicationToken;)Z
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "token"    # Landroid/view/IApplicationToken;

    .line 1686
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTaskId:I

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    if-ne v0, p3, :cond_0

    return v1

    .line 1687
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    if-eqz v0, :cond_1

    return v1

    .line 1689
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSameTask(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)Z
    .locals 3
    .param p1, "other"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1679
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTaskId:I

    iget v1, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTaskId:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1680
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    if-eqz v0, :cond_1

    return v2

    .line 1682
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setIsExit()V
    .locals 1

    .line 1634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsExit:Z

    .line 1635
    return-void
.end method

.method private setTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "cls"    # Ljava/lang/String;
    .param p5, "token"    # Landroid/view/IApplicationToken;
    .param p6, "pid"    # I

    .line 1656
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mStackId:I

    .line 1657
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    .line 1658
    iput p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTaskId:I

    .line 1659
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsDestroy:Z

    .line 1660
    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mPkg:Ljava/lang/String;

    .line 1661
    iput-object p4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mCls:Ljava/lang/String;

    .line 1662
    iput-object p5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    .line 1663
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    .line 1664
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsExit:Z

    .line 1665
    iput p6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTopPid:I

    .line 1666
    return-void
.end method

.method private setTask(Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;)V
    .locals 1
    .param p1, "other"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;

    .line 1638
    iget v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTaskId:I

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTaskId:I

    .line 1639
    iget v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mStackId:I

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mStackId:I

    .line 1640
    iget-boolean v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    .line 1641
    iget-boolean v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsDestroy:Z

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsDestroy:Z

    .line 1642
    iget-object v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mPkg:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mPkg:Ljava/lang/String;

    .line 1643
    iget-object v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mCls:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mCls:Ljava/lang/String;

    .line 1644
    iget-object v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    .line 1645
    iget-boolean v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    .line 1646
    iget-boolean v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsExit:Z

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsExit:Z

    .line 1647
    iget v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTopPid:I

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTopPid:I

    .line 1648
    return-void
.end method

.method private setTaskIfNeed(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 0
    .param p1, "stackId"    # I
    .param p2, "taskId"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "cls"    # Ljava/lang/String;
    .param p5, "token"    # Landroid/view/IApplicationToken;
    .param p6, "pid"    # I

    .line 1652
    invoke-direct/range {p0 .. p6}, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->setTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 1653
    return-void
.end method

.method private updateInfo(Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/view/IApplicationToken;
    .param p4, "pid"    # I

    .line 1669
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    if-eq v0, p3, :cond_0

    .line 1670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsExit:Z

    .line 1671
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mPkg:Ljava/lang/String;

    .line 1672
    iput-object p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mCls:Ljava/lang/String;

    .line 1673
    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    .line 1674
    iput p4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTopPid:I

    .line 1676
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsHomeStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsHomeStack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsDestroy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$TaskInfo;->mIsDestroy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
