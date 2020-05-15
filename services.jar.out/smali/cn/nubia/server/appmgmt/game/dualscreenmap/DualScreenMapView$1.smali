.class Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$1;
.super Ljava/lang/Object;
.source "DualScreenMapView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 110
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$1;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkId"    # I

    .line 113
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$1;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0, p2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$000(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;I)V

    .line 114
    return-void
.end method
