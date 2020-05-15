.class Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$1;
.super Ljava/lang/Object;
.source "GameKeyMapView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 198
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "check"    # Z

    .line 201
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$1;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v0, p2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$900(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Z)V

    .line 202
    return-void
.end method
