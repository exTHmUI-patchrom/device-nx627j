.class Lcn/nubia/server/appmgmt/game/GameModeController$32;
.super Landroid/content/BroadcastReceiver;
.source "GameModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/GameModeController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/GameModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/GameModeController;

    .line 2088
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$32;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2091
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GameModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_0
    if-eqz p2, :cond_5

    .line 2093
    invoke-static {}, Lnubia/config/GameHelperFeatureConfig;->isFingerprintGameKeyEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2094
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GameModeService"

    const-string/jumbo v1, "not support mapGameKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    :cond_1
    return-void

    .line 2097
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$32;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$32;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2098
    invoke-static {}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GameModeService"

    const-string v1, "HandShankMapView is showing,dont show GameKeyMapView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_3
    return-void

    .line 2101
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$32;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5500(Lcn/nubia/server/appmgmt/game/GameModeController;)V

    .line 2103
    :cond_5
    return-void
.end method
