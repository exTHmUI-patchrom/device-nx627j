.class Landroid/widget/StackView$StackFrame;
.super Landroid/widget/FrameLayout;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackFrame"
.end annotation


# instance fields
.field sliderAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field transformAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 483
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 484
    return-void
.end method


# virtual methods
.method cancelSliderAnimator()Z
    .locals 2

    .line 506
    iget-object v0, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 508
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 510
    const/4 v1, 0x1

    return v1

    .line 513
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method cancelTransformAnimator()Z
    .locals 2

    .line 495
    iget-object v0, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 497
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 499
    const/4 v1, 0x1

    return v1

    .line 502
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setSliderAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    .line 491
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->sliderAnimator:Ljava/lang/ref/WeakReference;

    .line 492
    return-void
.end method

.method setTransformAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    .line 487
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/StackView$StackFrame;->transformAnimator:Ljava/lang/ref/WeakReference;

    .line 488
    return-void
.end method
