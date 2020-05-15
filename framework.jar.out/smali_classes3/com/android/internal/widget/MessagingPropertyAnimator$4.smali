.class Lcom/android/internal/widget/MessagingPropertyAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessagingPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$view:Landroid/view/View;

    const v1, 0x102043a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->access$100(Landroid/view/View;Z)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$4;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 238
    :cond_0
    return-void
.end method
