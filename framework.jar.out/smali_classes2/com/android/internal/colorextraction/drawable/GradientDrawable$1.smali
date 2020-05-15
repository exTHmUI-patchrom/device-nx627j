.class Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .line 105
    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;->this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 108
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;->this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-static {v0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->access$000(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;->this$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->access$002(Lcom/android/internal/colorextraction/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 111
    :cond_0
    return-void
.end method
