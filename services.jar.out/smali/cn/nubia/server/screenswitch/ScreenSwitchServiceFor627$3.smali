.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$3;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Lcn/nubia/server/screenswitch/HorizontalDetector$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->systemReady()V
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

    .line 294
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$3;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 2
    .param p1, "isHorizontal"    # Z
    .param p2, "isUp"    # Z

    .line 296
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$3;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    nop

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$402(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;I)I

    .line 297
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$3;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$3;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$500(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$3;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$400(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)I

    move-result v1

    invoke-interface {v0, v1}, Lnubia/os/screenswitch/ScreenSwitchInternal$ScreenFaceUpListener;->onScreenFaceUp(I)V

    .line 300
    :cond_2
    return-void
.end method
