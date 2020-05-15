.class Lcn/nubia/server/appmgmt/game/GameModeController$6;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

.field final synthetic val$screenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;Lnubia/os/screenswitch/ScreenSwitchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 369
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$6;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iput-object p2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$6;->val$screenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 371
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitchScreenCallback, displayId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 373
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$6;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1700(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$6;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1700(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$6;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1700(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->dismiss()V

    .line 375
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$6;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$1702(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 377
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$6;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$100(Lcn/nubia/server/appmgmt/game/GameModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 379
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$6;->val$screenSwitchManager:Lnubia/os/screenswitch/ScreenSwitchManager;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/GameModeController$6;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    iget-object v2, v2, Lcn/nubia/server/appmgmt/game/GameModeController;->mBeforeCallback:Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;

    invoke-virtual {v0, v2, v1}, Lnubia/os/screenswitch/ScreenSwitchManager;->reportCallBackComplete(Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;I)V

    .line 380
    return-void
.end method
