.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$3;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->onSurfaceCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 237
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$3;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$3;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$702(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Z)Z

    .line 243
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$3;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$800(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "PageFlippingController"

    const-string/jumbo v1, "onSurfaceCreated mFitWindowCallback.onSurfaceCreated()"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$3;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$800(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/FitWindowCallback;->onSurfaceCreated()V

    .line 247
    :cond_0
    return-void
.end method
