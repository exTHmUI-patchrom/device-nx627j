.class Landroid/widget/SmartSelectSprite$1;
.super Ljava/lang/Object;
.source "SmartSelectSprite.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SmartSelectSprite;->setUpAnimatorListener(Landroid/animation/Animator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SmartSelectSprite;

.field final synthetic val$onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/widget/SmartSelectSprite;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SmartSelectSprite;

    .line 476
    iput-object p1, p0, Landroid/widget/SmartSelectSprite$1;->this$0:Landroid/widget/SmartSelectSprite;

    iput-object p2, p0, Landroid/widget/SmartSelectSprite$1;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 491
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 483
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$1;->this$0:Landroid/widget/SmartSelectSprite;

    invoke-static {v0}, Landroid/widget/SmartSelectSprite;->access$700(Landroid/widget/SmartSelectSprite;)Landroid/widget/SmartSelectSprite$RectangleList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SmartSelectSprite$RectangleList;->setDisplayType(I)V

    .line 484
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$1;->this$0:Landroid/widget/SmartSelectSprite;

    invoke-static {v0}, Landroid/widget/SmartSelectSprite;->access$800(Landroid/widget/SmartSelectSprite;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 486
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$1;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 487
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 495
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 479
    return-void
.end method
