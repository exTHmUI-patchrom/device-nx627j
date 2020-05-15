.class Lcn/nubia/server/policy/edge/DoubleTapAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DoubleTapAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/DoubleTapAnim;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/DoubleTapAnim;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/DoubleTapAnim;

    .line 110
    iput-object p1, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 113
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$400(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 117
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$400(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 121
    iget-object v0, p0, Lcn/nubia/server/policy/edge/DoubleTapAnim$2;->this$0:Lcn/nubia/server/policy/edge/DoubleTapAnim;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/DoubleTapAnim;->access$400(Lcn/nubia/server/policy/edge/DoubleTapAnim;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-void
.end method
