.class Landroid/view/RenderNodeAnimator$AnimationEndTask;
.super Ljava/lang/Object;
.source "RenderNodeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationEndTask"
.end annotation


# instance fields
.field mListenerWRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;>;"
        }
    .end annotation
.end field

.field mRenderNodeAnimatorWRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/RenderNodeAnimator;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "renderNodeAnimator"    # Landroid/view/RenderNodeAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/RenderNodeAnimator;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator$AnimationEndTask;->mRenderNodeAnimatorWRef:Ljava/lang/ref/WeakReference;

    .line 402
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator$AnimationEndTask;->mListenerWRef:Ljava/lang/ref/WeakReference;

    .line 403
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 408
    iget-object v0, p0, Landroid/view/RenderNodeAnimator$AnimationEndTask;->mRenderNodeAnimatorWRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNodeAnimator;

    move-object v1, v0

    .local v1, "renderNodeAnimator":Landroid/view/RenderNodeAnimator;
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/RenderNodeAnimator$AnimationEndTask;->mListenerWRef:Ljava/lang/ref/WeakReference;

    .line 409
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 412
    .local v0, "listSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 413
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 415
    .end local v3    # "i":I
    :catch_0
    move-exception v3

    .end local v0    # "listSize":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    nop

    .line 417
    :cond_0
    return-void
.end method
