.class Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView$1;
.super Ljava/lang/Object;
.source "HandShankMoveAreaFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    .line 91
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView$1;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView$1;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;->access$000(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView$IClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/HandShankMoveAreaFloatView$IClickListener;->rotateClick()V

    .line 95
    return-void
.end method
