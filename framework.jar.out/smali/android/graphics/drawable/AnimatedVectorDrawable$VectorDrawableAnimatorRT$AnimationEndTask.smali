.class Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$AnimationEndTask;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationEndTask"
.end annotation


# instance fields
.field mId:I

.field rtWRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V
    .locals 1
    .param p1, "rt"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    .param p2, "id"    # I

    .line 1790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1791
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$AnimationEndTask;->rtWRef:Ljava/lang/ref/WeakReference;

    .line 1792
    iput p2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$AnimationEndTask;->mId:I

    .line 1793
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1797
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$AnimationEndTask;->rtWRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    move-object v1, v0

    .local v1, "rt":Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;
    if-eqz v0, :cond_0

    .line 1798
    iget v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT$AnimationEndTask;->mId:I

    invoke-static {v1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->access$2300(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;I)V

    .line 1800
    :cond_0
    return-void
.end method
