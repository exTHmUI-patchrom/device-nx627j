.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    .line 706
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 712
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 713
    const/4 v1, 0x0

    .line 713
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadHashcodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 714
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v2, v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadHashcodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 715
    .local v2, "hashcode":I
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v3, v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadTextures:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 717
    .local v3, "textureId":I
    if-eqz v3, :cond_0

    .line 718
    const-string v4, "PageFlippingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uploadPageFlippingTextures i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; hashcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; textureId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->setTextureId(II)V

    goto :goto_1

    .line 722
    :cond_0
    const-string v4, "PageFlippingController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uploadPageFlippingTextures i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; hashcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; textureId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_1
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v5, v5, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadHashcodes:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->setStatus(II)V

    .line 727
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v4, v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/TextureManagement;->deleteBitmap(I)V

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 729
    .end local v1    # "i":I
    .end local v2    # "hashcode":I
    .end local v3    # "textureId":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 732
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadHashcodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 733
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadTextures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 734
    const-string v0, "PageFlippingController"

    const-string/jumbo v1, "uploadPageFlippingTextures upload bitmap end"

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v0, "Timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadPageFlippingTextures upload bitmap end time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1600(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 738
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;->this$1:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;

    iget-object v0, v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1600(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/LoopPageFlipping;->notifyGpuPreparedAppTexData()V

    .line 740
    :cond_2
    return-void

    .line 729
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
