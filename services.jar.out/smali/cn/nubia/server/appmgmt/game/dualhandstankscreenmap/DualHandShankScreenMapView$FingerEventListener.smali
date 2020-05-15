.class Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;
.super Ljava/lang/Object;
.source "DualHandShankScreenMapView.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView$IFingerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fingerDown(I)V
    .locals 2
    .param p1, "id"    # I

    .line 836
    const v0, 0x3080064

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x30800b5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 853
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$600(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_0

    .line 850
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$500(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 851
    goto :goto_0

    .line 847
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$400(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 848
    goto :goto_0

    .line 844
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$300(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 845
    goto :goto_0

    .line 841
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$200(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 842
    goto :goto_0

    .line 838
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 839
    nop

    .line 856
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
    .locals 2
    .param p1, "id"    # I

    .line 860
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;Z)V

    .line 861
    return-void
.end method

.method public fingerUp(I)V
    .locals 2
    .param p1, "id"    # I

    .line 865
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$800(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 867
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$700(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;Z)V

    .line 868
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$900(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    .line 869
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$1000(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)V

    .line 871
    :goto_0
    const v0, 0x3080064

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x30800b5

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 888
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$600(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    goto :goto_1

    .line 885
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$500(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 886
    goto :goto_1

    .line 882
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$400(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 883
    goto :goto_1

    .line 879
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$300(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 880
    goto :goto_1

    .line 876
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$200(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 877
    goto :goto_1

    .line 873
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;->access$100(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/DualHandShankScreenMapView;)Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/FakeFloatView;->setPressed(Z)V

    .line 874
    nop

    .line 891
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
