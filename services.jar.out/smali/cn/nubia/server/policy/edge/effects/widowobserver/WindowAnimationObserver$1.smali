.class Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;
.super Landroid/os/Handler;
.source "WindowAnimationObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .line 89
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;->onWaiUntilTimeOut()V

    .line 99
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    return-void
.end method
