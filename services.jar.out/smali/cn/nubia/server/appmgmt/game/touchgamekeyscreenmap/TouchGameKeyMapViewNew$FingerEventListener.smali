.class Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;
.super Ljava/lang/Object;
.source "TouchGameKeyMapViewNew.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fingerDown(I)V
    .locals 2
    .param p1, "id"    # I

    .line 599
    const v0, 0x3080039

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x3080064

    if-eq p1, v0, :cond_1

    const v0, 0x30800b5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$1300(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 605
    goto :goto_0

    .line 601
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$1200(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 602
    goto :goto_0

    .line 607
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$1400(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 610
    :goto_0
    return-void
.end method

.method public fingerStartMove(I)V
    .locals 2
    .param p1, "id"    # I

    .line 614
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$1500(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)V

    .line 615
    return-void
.end method

.method public fingerUp(I)V
    .locals 2
    .param p1, "id"    # I

    .line 619
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$1600(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$1500(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)V

    .line 622
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$1700(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;Z)V

    .line 624
    :goto_0
    const v0, 0x3080039

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const v0, 0x3080064

    if-eq p1, v0, :cond_2

    const v0, 0x30800b5

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 629
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$1300(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 630
    goto :goto_1

    .line 626
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$1200(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 627
    goto :goto_1

    .line 632
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;->access$1400(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapViewNew;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 635
    :goto_1
    return-void
.end method
