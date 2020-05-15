.class Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$2;
.super Ljava/lang/Object;
.source "PerformanceModeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->initView()V
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

    .line 109
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$2;->this$0:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .line 112
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$2;->this$0:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$2;->this$0:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->access$100(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->onViewTouchEvent(Landroid/view/MotionEvent;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method
