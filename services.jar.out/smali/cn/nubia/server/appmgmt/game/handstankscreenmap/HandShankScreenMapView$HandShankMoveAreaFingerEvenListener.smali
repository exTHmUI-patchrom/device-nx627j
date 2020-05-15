.class Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;
.super Ljava/lang/Object;
.source "HandShankScreenMapView.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankMoveAreaFloatView$IMoveAreaFingerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandShankMoveAreaFingerEvenListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fingerDown(I)V
    .locals 1
    .param p1, "id"    # I

    .line 778
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$1300(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    .line 779
    return-void
.end method

.method public fingerStartMove(I)V
    .locals 3
    .param p1, "id"    # I

    .line 783
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;Z)V

    .line 785
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$800(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$900(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$1000(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveHasSetAreaStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 787
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$802(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;I)I

    .line 789
    :cond_0
    return-void
.end method

.method public fingerUp(I)V
    .locals 2
    .param p1, "id"    # I

    .line 793
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;Z)V

    .line 794
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$1200(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    .line 795
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$HandShankMoveAreaFingerEvenListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$1300(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    .line 796
    return-void
.end method
