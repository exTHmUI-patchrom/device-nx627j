.class Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$1;
.super Ljava/lang/Object;
.source "DualHandShankScreenMapView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    .line 129
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$1;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkId"    # I

    .line 132
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$1;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0, p2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$000(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;I)V

    .line 133
    return-void
.end method
