.class Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$7;
.super Ljava/lang/Object;
.source "PerformanceModeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->showConfirmDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    .line 330
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$7;->this$0:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 333
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$7;->this$0:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->onViewTouchEvent(Landroid/view/MotionEvent;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method
