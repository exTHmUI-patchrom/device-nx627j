.class Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;
.super Ljava/lang/Object;
.source "HandShankScreenMapView.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView$IFingerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fingerDown(I)V
    .locals 2
    .param p1, "id"    # I

    .line 691
    const v0, 0x3080064

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x30800b5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 708
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$600(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 705
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$500(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 706
    goto :goto_0

    .line 702
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$400(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 703
    goto :goto_0

    .line 699
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$300(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 700
    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$200(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 697
    goto :goto_0

    .line 693
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 694
    nop

    .line 711
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x308004d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fingerStartMove(I)V
    .locals 3
    .param p1, "id"    # I

    .line 715
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;Z)V

    .line 717
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$800(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$900(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$1000(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapHelper;->saveHasSetAreaStatus(Landroid/content/Context;Ljava/lang/String;I)V

    .line 719
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0, v2}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$802(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;I)I

    .line 721
    :cond_0
    return-void
.end method

.method public fingerUp(I)V
    .locals 2
    .param p1, "id"    # I

    .line 725
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$1100(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;Z)V

    .line 728
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$1200(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    .line 729
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$1300(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)V

    .line 731
    :goto_0
    const v0, 0x3080064

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x30800b5

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 748
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$600(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_1

    .line 745
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$500(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 746
    goto :goto_1

    .line 742
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$400(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 743
    goto :goto_1

    .line 739
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$300(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 740
    goto :goto_1

    .line 736
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$200(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 737
    goto :goto_1

    .line 733
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/handstankscreenmap/HandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/handstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 734
    nop

    .line 751
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x308004d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
