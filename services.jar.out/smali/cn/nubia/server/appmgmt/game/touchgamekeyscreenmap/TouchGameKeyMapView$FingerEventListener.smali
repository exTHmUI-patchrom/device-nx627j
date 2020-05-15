.class Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;
.super Ljava/lang/Object;
.source "TouchGameKeyMapView.java"

# interfaces
.implements Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView$IFingerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fingerDown(I)V
    .locals 2
    .param p1, "id"    # I

    .line 390
    const v0, 0x3080039

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x3080064

    if-eq p1, v0, :cond_1

    const v0, 0x30800b5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->access$300(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 396
    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->access$200(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 393
    goto :goto_0

    .line 398
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->access$400(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 401
    :goto_0
    return-void
.end method

.method public fingerStartMove(I)V
    .locals 2
    .param p1, "id"    # I

    .line 405
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->access$500(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;Z)V

    .line 406
    return-void
.end method

.method public fingerUp(I)V
    .locals 2
    .param p1, "id"    # I

    .line 410
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->access$600(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->access$500(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;Z)V

    .line 413
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->access$700(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;Z)V

    .line 415
    :goto_0
    const v0, 0x3080039

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const v0, 0x3080064

    if-eq p1, v0, :cond_2

    const v0, 0x30800b5

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 420
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->access$300(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 421
    goto :goto_1

    .line 417
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->access$200(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 418
    goto :goto_1

    .line 423
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView$FingerEventListener;->this$0:Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;->access$400(Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/TouchGameKeyMapView;)Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/touchgamekeyscreenmap/FakeFloatView;->setPressed(Z)V

    .line 426
    :goto_1
    return-void
.end method
