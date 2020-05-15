.class Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$4;
.super Ljava/lang/Object;
.source "DualScreenMapView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->show()V
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

    .line 398
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$4;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "check"    # Z

    .line 401
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$4;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0, p2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1000(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;Z)V

    .line 402
    return-void
.end method
