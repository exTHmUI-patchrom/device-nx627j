.class public Landroid/view/RenderNodeAnimatorSetHelper;
.super Ljava/lang/Object;
.source "RenderNodeAnimatorSetHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .locals 2
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    .line 38
    if-nez p0, :cond_0

    .line 40
    invoke-static {}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLinearInterpolator()J

    move-result-wide v0

    return-wide v0

    .line 41
    :cond_0
    invoke-static {p0}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    move-object v0, p0

    check-cast v0, Lcom/android/internal/view/animation/NativeInterpolatorFactory;

    invoke-interface {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactory;->createNativeInterpolator()J

    move-result-wide v0

    return-wide v0

    .line 44
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTarget(Landroid/view/DisplayListCanvas;)Landroid/view/RenderNode;
    .locals 1
    .param p0, "recordingCanvas"    # Landroid/view/DisplayListCanvas;

    .line 33
    iget-object v0, p0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    return-object v0
.end method
