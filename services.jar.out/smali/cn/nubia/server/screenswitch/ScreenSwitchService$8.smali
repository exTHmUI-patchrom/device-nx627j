.class Lcn/nubia/server/screenswitch/ScreenSwitchService$8;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;

    .line 1747
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$8;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1750
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$8;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$8;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5500(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$10500(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)V

    .line 1751
    return-void
.end method
