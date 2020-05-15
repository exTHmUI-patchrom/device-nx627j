.class Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$3;
.super Ljava/lang/Object;
.source "WindowAnimationObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->notifyAppTransitionFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .line 214
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$3;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$3;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$3;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$300(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$3;->this$0:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->access$200(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->reportException(Ljava/lang/Exception;)V

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
