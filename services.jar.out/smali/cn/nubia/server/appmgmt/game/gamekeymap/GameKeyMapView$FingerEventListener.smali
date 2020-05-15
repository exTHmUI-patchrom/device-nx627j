.class Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;
.super Ljava/lang/Object;
.source "GameKeyMapView.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fingerDown(I)V
    .locals 2
    .param p1, "id"    # I

    .line 125
    const v0, 0x308000c

    if-ne v0, p1, :cond_0

    .line 126
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->setPressed(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public fingerStartMove(I)V
    .locals 2
    .param p1, "id"    # I

    .line 132
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$600(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Z)V

    .line 133
    return-void
.end method

.method public fingerUp(I)V
    .locals 4
    .param p1, "id"    # I

    .line 137
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$700(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$600(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Z)V

    .line 140
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$800(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$100(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$300(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 143
    :goto_0
    const v0, 0x308000c

    if-ne v0, p1, :cond_1

    .line 144
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->setPressed(Z)V

    .line 146
    :cond_1
    return-void
.end method
