.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$2;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
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

    .line 225
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$2;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$2;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$600(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)V

    .line 230
    return-void
.end method
