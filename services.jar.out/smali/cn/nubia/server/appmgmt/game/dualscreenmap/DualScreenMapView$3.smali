.class Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$3;
.super Landroid/os/Handler;
.source "DualScreenMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    .line 220
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$3;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$3;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$800(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$3;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$3;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$900(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->reduceCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    nop

    .line 231
    :goto_0
    return-void
.end method
