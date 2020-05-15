.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODDelayTaskInfo"
.end annotation


# instance fields
.field mBackTaskId:I

.field mFrontTaskId:I

.field mIsDelay:Z

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method private constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0

    .line 2184
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2185
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mIsDelay:Z

    .line 2186
    const/4 p1, -0x1

    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mFrontTaskId:I

    .line 2187
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mBackTaskId:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
    .param p2, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;

    .line 2184
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 2190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mIsDelay:Z

    .line 2191
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mFrontTaskId:I

    .line 2192
    iput v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$AODDelayTaskInfo;->mBackTaskId:I

    .line 2193
    return-void
.end method
