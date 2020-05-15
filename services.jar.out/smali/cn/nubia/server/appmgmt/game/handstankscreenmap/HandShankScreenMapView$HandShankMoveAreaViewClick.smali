.class Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaViewClick;
.super Ljava/lang/Object;
.source "HandShankScreenMapView.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandShankMoveAreaViewClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaViewClick;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotateClick()V
    .locals 3

    .line 760
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaViewClick;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$800(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaViewClick;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$900(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaViewClick;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$1000(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveHasSetAreaStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 762
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaViewClick;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$802(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;I)I

    .line 764
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaViewClick;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$1400(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    .line 765
    return-void
.end method

.method public scaleClick()V
    .locals 0

    .line 770
    return-void
.end method
