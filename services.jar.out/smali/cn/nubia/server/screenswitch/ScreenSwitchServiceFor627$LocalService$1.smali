.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->setPressSensorActive(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

.field final synthetic val$active:Z


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;Z)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    .line 1697
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    iput-boolean p2, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->val$active:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1699
    iget-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->val$active:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1700
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10902(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1701
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)V

    .line 1702
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    iget-object v3, v3, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11100(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    iget-object v3, v3, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v3}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$3400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postShowDoubleFPAnim(Z)V

    goto :goto_0

    .line 1704
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$10902(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)Z

    .line 1705
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$11000(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;Z)V

    .line 1706
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$5600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->postCloseDoubleFPAnim()V

    .line 1708
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService$1;->this$1:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;

    iget-object v0, v0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$LocalService;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$1400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)V

    .line 1709
    return-void
.end method
