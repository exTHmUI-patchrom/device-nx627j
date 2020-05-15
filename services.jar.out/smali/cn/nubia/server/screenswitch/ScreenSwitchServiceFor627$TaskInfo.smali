.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
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

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method private constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 1

    .line 2089
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2090
    const/4 p1, -0x1

    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTaskId:I

    .line 2091
    const/4 p1, 0x0

    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mStackId:I

    .line 2092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

    .line 2093
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsDestroy:Z

    .line 2094
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    .line 2095
    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mPkg:Ljava/lang/String;

    .line 2096
    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mCls:Ljava/lang/String;

    .line 2097
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    .line 2098
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsExit:Z

    .line 2099
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTopPid:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p2, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;

    .line 2089
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    return-void
.end method

.method static synthetic access$10700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    return v0
.end method

.method static synthetic access$10702(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p1, "x1"    # Z

    .line 2089
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    return p1
.end method

.method static synthetic access$12300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTopPid:I

    return v0
.end method

.method static synthetic access$13000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTaskId:I

    return v0
.end method

.method static synthetic access$13002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p1, "x1"    # I

    .line 2089
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTaskId:I

    return p1
.end method

.method static synthetic access$13100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsExit:Z

    return v0
.end method

.method static synthetic access$13200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

    return v0
.end method

.method static synthetic access$13202(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p1, "x1"    # Z

    .line 2089
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

    return p1
.end method

.method static synthetic access$13300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/view/IApplicationToken;
    .param p6, "x6"    # I

    .line 2089
    invoke-direct/range {p0 .. p6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->setTaskIfNeed(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    return-void
.end method

.method static synthetic access$13400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/view/IApplicationToken;
    .param p4, "x4"    # I

    .line 2089
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->updateInfo(Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    return-void
.end method

.method static synthetic access$13500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p1, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->setTask(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V

    return-void
.end method

.method static synthetic access$13600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/view/IApplicationToken;
    .param p6, "x6"    # I

    .line 2089
    invoke-direct/range {p0 .. p6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->setTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    return-void
.end method

.method static synthetic access$13700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p1, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->isSameTask(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$13800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mCls:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$14002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p1, "x1"    # Z

    .line 2089
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsDestroy:Z

    return p1
.end method

.method static synthetic access$14100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->isHomeActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$14200(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;IILandroid/view/IApplicationToken;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/IApplicationToken;

    .line 2089
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->isSameActivity(IILandroid/view/IApplicationToken;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14300(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    invoke-direct {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->setIsExit()V

    return-void
.end method

.method static synthetic access$4800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Landroid/view/IApplicationToken;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2089
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    return-object v0
.end method

.method private isHomeActivity()Z
    .locals 2

    .line 2154
    const-string v0, "cn.nubia.launcher"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.launcher3.Launcher"

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mPkg:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mCls:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

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

    .line 2160
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTaskId:I

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    if-ne v0, p3, :cond_0

    return v1

    .line 2161
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

    if-eqz v0, :cond_1

    return v1

    .line 2163
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSameTask(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)Z
    .locals 3
    .param p1, "other"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2147
    iget v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTaskId:I

    iget v1, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTaskId:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 2148
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

    if-eqz v0, :cond_1

    return v2

    .line 2150
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setIsExit()V
    .locals 1

    .line 2102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsExit:Z

    .line 2103
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

    .line 2124
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mStackId:I

    .line 2125
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

    .line 2126
    iput p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTaskId:I

    .line 2127
    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsDestroy:Z

    .line 2128
    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mPkg:Ljava/lang/String;

    .line 2129
    iput-object p4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mCls:Ljava/lang/String;

    .line 2130
    iput-object p5, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    .line 2131
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    .line 2132
    iput-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsExit:Z

    .line 2133
    iput p6, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTopPid:I

    .line 2134
    return-void
.end method

.method private setTask(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;)V
    .locals 1
    .param p1, "other"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;

    .line 2106
    iget v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTaskId:I

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTaskId:I

    .line 2107
    iget v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mStackId:I

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mStackId:I

    .line 2108
    iget-boolean v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

    .line 2109
    iget-boolean v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsDestroy:Z

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsDestroy:Z

    .line 2110
    iget-object v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mPkg:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mPkg:Ljava/lang/String;

    .line 2111
    iget-object v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mCls:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mCls:Ljava/lang/String;

    .line 2112
    iget-object v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    iput-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    .line 2113
    iget-boolean v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsShowWhenScreenOffLocked:Z

    .line 2114
    iget-boolean v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsExit:Z

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsExit:Z

    .line 2115
    iget v0, p1, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTopPid:I

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTopPid:I

    .line 2116
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

    .line 2120
    invoke-direct/range {p0 .. p6}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->setTask(IILjava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V

    .line 2121
    return-void
.end method

.method private updateInfo(Ljava/lang/String;Ljava/lang/String;Landroid/view/IApplicationToken;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/view/IApplicationToken;
    .param p4, "pid"    # I

    .line 2137
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    if-eq v0, p3, :cond_0

    .line 2138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsExit:Z

    .line 2139
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mPkg:Ljava/lang/String;

    .line 2140
    iput-object p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mCls:Ljava/lang/String;

    .line 2141
    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mToken:Landroid/view/IApplicationToken;

    .line 2142
    iput p4, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTopPid:I

    .line 2144
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsHomeStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsHomeStack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsDestroy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$TaskInfo;->mIsDestroy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
