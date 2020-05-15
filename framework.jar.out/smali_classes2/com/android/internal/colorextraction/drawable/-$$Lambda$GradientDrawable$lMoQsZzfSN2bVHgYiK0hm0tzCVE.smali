.class public final synthetic Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;->f$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iput p2, p0, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;->f$1:I

    iput p3, p0, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;->f$2:I

    iput p4, p0, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;->f$3:I

    iput p5, p0, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;->f$4:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;->f$0:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;->f$1:I

    iget v2, p0, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;->f$2:I

    iget v3, p0, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;->f$3:I

    iget v4, p0, Lcom/android/internal/colorextraction/drawable/-$$Lambda$GradientDrawable$lMoQsZzfSN2bVHgYiK0hm0tzCVE;->f$4:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->lambda$setColors$0(Lcom/android/internal/colorextraction/drawable/GradientDrawable;IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method
