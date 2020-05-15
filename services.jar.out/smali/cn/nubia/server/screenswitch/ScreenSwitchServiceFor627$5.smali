.class Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$5;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->showSubContent()V
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

    .line 342
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDismiss$0(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$5;)V
    .locals 2

    .line 347
    const-string v0, "ScreenSwitchService"

    const-string v1, "blackWindow is onDismiss and close back screen power"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$900(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->getInstance(Landroid/content/Context;)Lcn/nubia/server/screenswitch/DisplayManagerProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/screenswitch/DisplayManagerProxy;->setBackDisplayPowerMode(Z)V

    .line 349
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 345
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$700(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$800(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$5;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;->access$600(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$5$loLQ1KnsTYHd5NAPpdNQ0s6dS6s;

    invoke-direct {v1, p0}, Lcn/nubia/server/screenswitch/-$$Lambda$ScreenSwitchServiceFor627$5$loLQ1KnsTYHd5NAPpdNQ0s6dS6s;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    :cond_0
    return-void
.end method
