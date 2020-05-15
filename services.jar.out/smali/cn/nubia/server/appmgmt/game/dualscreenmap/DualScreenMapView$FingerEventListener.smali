.class Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;
.super Ljava/lang/Object;
.source "DualScreenMapView.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView$IFingerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fingerDown(I)V
    .locals 2
    .param p1, "id"    # I

    .line 638
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 649
    :sswitch_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1400(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 643
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1200(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setPressed(Z)V

    .line 644
    goto :goto_0

    .line 646
    :sswitch_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1300(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setPressed(Z)V

    .line 647
    goto :goto_0

    .line 640
    :sswitch_3
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setPressed(Z)V

    .line 641
    nop

    .line 652
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3080064 -> :sswitch_3
        0x3080065 -> :sswitch_2
        0x30800b5 -> :sswitch_1
        0x30800b6 -> :sswitch_0
    .end sparse-switch
.end method

.method public fingerStartMove(I)V
    .locals 2
    .param p1, "id"    # I

    .line 656
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 657
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1500(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;Z)V

    .line 658
    return-void
.end method

.method public fingerUp(I)V
    .locals 2
    .param p1, "id"    # I

    .line 662
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setDoubleScreenTouchEnable(Landroid/content/Context;Z)V

    .line 663
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1600(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1500(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;Z)V

    .line 666
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$500(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)V

    .line 667
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1700(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$600(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapHelper;->setSecondaryTouchRects(Ljava/lang/String;Landroid/content/Context;)V

    .line 671
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 682
    :sswitch_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1400(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_1

    .line 676
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1200(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setPressed(Z)V

    .line 677
    goto :goto_1

    .line 679
    :sswitch_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1300(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setPressed(Z)V

    .line 680
    goto :goto_1

    .line 673
    :sswitch_3
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;->access$1100(Lcn/nubia/server/appmgmt/game/dualscreenmap/DualScreenMapView;)Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/FakeFloatView;->setPressed(Z)V

    .line 674
    nop

    .line 685
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3080064 -> :sswitch_3
        0x3080065 -> :sswitch_2
        0x30800b5 -> :sswitch_1
        0x30800b6 -> :sswitch_0
    .end sparse-switch
.end method
