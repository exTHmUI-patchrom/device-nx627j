.class Lcn/nubia/server/screenswitch/ScreenSwitchService$1;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"

# interfaces
.implements Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;->systemReady()V
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

    .line 226
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$1;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 2
    .param p1, "isHorizontal"    # Z
    .param p2, "isUp"    # Z

    .line 228
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$1;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    nop

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$102(Lcn/nubia/server/screenswitch/ScreenSwitchService;I)I

    .line 229
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$1;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$1;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$200(Lcn/nubia/server/screenswitch/ScreenSwitchService;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$1;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$100(Lcn/nubia/server/screenswitch/ScreenSwitchService;)I

    move-result v1

    invoke-interface {v0, v1}, Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;->onScreenFaceUp(I)V

    .line 232
    :cond_2
    return-void
.end method
