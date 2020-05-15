.class Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityName"
.end annotation


# instance fields
.field mCls:Ljava/lang/String;

.field mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;

    .line 1706
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1703
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;->mPkg:Ljava/lang/String;

    .line 1704
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;->mCls:Ljava/lang/String;

    .line 1707
    iput-object p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;->mPkg:Ljava/lang/String;

    .line 1708
    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;->mCls:Ljava/lang/String;

    .line 1709
    return-void
.end method


# virtual methods
.method isSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .line 1712
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$ActivityName;->mCls:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
