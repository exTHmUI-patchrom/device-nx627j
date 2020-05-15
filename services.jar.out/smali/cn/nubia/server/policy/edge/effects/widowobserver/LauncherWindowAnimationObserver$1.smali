.class Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$1;
.super Landroid/os/Handler;
.source "LauncherWindowAnimationObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    .line 33
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$1;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$1;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$1;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;->access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/LauncherWindowAnimationObserver$LauncherWindowAnimationListener;->onWaitLauncherUntilTimeOut()V

    .line 43
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    return-void
.end method
