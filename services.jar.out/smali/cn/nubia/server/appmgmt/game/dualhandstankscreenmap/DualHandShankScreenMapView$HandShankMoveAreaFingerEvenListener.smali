.class Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaFingerEvenListener;
.super Ljava/lang/Object;
.source "DualHandShankScreenMapView.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandShankMoveAreaFingerEvenListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fingerDown(I)V
    .locals 1
    .param p1, "id"    # I

    .line 911
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$1000(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    .line 912
    return-void
.end method

.method public fingerStartMove(I)V
    .locals 2
    .param p1, "id"    # I

    .line 916
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;Z)V

    .line 917
    return-void
.end method

.method public fingerUp(I)V
    .locals 2
    .param p1, "id"    # I

    .line 921
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;Z)V

    .line 922
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$900(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    .line 923
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$1000(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    .line 924
    return-void
.end method
