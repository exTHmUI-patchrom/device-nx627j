.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$6;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->startPageFlippingGuideStartAnim(IFLjava/util/List;)V
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

    .line 384
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$6;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$6;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "PageFlippingController"

    const-string/jumbo v1, "startPageFlippingGuideStartAnim onGuideAnimFinished"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$6;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/GuideAnimCallback;->onGuideAnimFinished()V

    .line 391
    :cond_0
    return-void
.end method
