.class Lcom/android/internal/widget/MessagingPropertyAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessagingPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->mCancelled:Z

    .line 167
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->val$v:Landroid/view/View;

    const v1, 0x102043d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 162
    return-void
.end method
