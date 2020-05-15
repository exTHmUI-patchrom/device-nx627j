.class Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODDelayTaskInfo"
.end annotation


# instance fields
.field mBackTaskId:I

.field mFrontTaskId:I

.field mIsDelay:Z

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0

    .line 1715
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1716
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mIsDelay:Z

    .line 1717
    const/4 p1, -0x1

    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mFrontTaskId:I

    .line 1718
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mBackTaskId:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p2, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$1;

    .line 1715
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 1721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mIsDelay:Z

    .line 1722
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mFrontTaskId:I

    .line 1723
    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$AODDelayTaskInfo;->mBackTaskId:I

    .line 1724
    return-void
.end method
