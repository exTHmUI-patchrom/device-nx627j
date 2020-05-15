.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Lcn/nubia/server/screenswitch/SwitchInterface$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    .line 201
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public noteAsycPowerOffState(ZZ)V
    .locals 1
    .param p1, "isFront"    # Z
    .param p2, "isStart"    # Z

    .line 203
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$002(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 204
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$1;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, p2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$102(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 205
    return-void
.end method
