.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    .line 668
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 672
    const/4 v0, 0x0

    move v1, v0

    .line 672
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delHashcodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 673
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delHashcodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 674
    .local v2, "hashcode":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->setTextureId(II)V

    .line 675
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->delItem(I)V

    .line 672
    .end local v2    # "hashcode":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delHashcodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 679
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$7;->val$delTextures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 680
    const-string v0, "PageFlippingController"

    const-string/jumbo v1, "uploadPageFlippingTextures delete texture end"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void
.end method
