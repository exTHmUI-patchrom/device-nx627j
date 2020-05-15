.class Lcn/nubia/server/appmgmt/game/GameModeController$30;
.super Ljava/lang/Object;
.source "GameModeController.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$IHandShankClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/GameModeController;->showHandShankMapView(Ljava/lang/String;)V
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

    .line 1855
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/GameModeController$30;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doClose()V
    .locals 2

    .line 1858
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$30;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5200(Lcn/nubia/server/appmgmt/game/GameModeController;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->dismiss()V

    .line 1859
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/GameModeController$30;->this$0:Lcn/nubia/server/appmgmt/game/GameModeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/GameModeController;->access$5202(Lcn/nubia/server/appmgmt/game/GameModeController;Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    .line 1860
    return-void
.end method

.method public doSave()V
    .locals 0

    .line 1862
    return-void
.end method
