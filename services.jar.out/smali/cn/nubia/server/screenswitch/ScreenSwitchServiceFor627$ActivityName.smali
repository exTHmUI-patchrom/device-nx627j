.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityName"
.end annotation


# instance fields
.field mCls:Ljava/lang/String;

.field mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;

    .line 2175
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2172
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;->mPkg:Ljava/lang/String;

    .line 2173
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;->mCls:Ljava/lang/String;

    .line 2176
    iput-object p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;->mPkg:Ljava/lang/String;

    .line 2177
    iput-object p3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;->mCls:Ljava/lang/String;

    .line 2178
    return-void
.end method


# virtual methods
.method isSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .line 2181
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$ActivityName;->mCls:Ljava/lang/String;

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
