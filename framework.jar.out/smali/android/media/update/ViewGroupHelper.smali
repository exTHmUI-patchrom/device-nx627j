.class public abstract Landroid/media/update/ViewGroupHelper;
.super Landroid/view/ViewGroup;
.source "ViewGroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/update/ViewGroupHelper$ProviderCreator;,
        Landroid/media/update/ViewGroupHelper$PrivateProvider;,
        Landroid/media/update/ViewGroupHelper$SuperProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/media/update/ViewGroupProvider;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field public final mProvider:Landroid/media/update/ViewGroupProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/update/ViewGroupHelper$ProviderCreator;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/update/ViewGroupHelper$ProviderCreator<",
            "TT;>;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "II)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    .local p1, "creator":Landroid/media/update/ViewGroupHelper$ProviderCreator;, "Landroid/media/update/ViewGroupHelper$ProviderCreator<TT;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    new-instance v0, Landroid/media/update/ViewGroupHelper$SuperProvider;

    invoke-direct {v0, p0}, Landroid/media/update/ViewGroupHelper$SuperProvider;-><init>(Landroid/media/update/ViewGroupHelper;)V

    new-instance v1, Landroid/media/update/ViewGroupHelper$PrivateProvider;

    invoke-direct {v1, p0}, Landroid/media/update/ViewGroupHelper$PrivateProvider;-><init>(Landroid/media/update/ViewGroupHelper;)V

    invoke-interface {p1, p0, v0, v1}, Landroid/media/update/ViewGroupHelper$ProviderCreator;->createProvider(Landroid/media/update/ViewGroupHelper;Landroid/media/update/ViewGroupProvider;Landroid/media/update/ViewGroupProvider;)Landroid/media/update/ViewGroupProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    .line 44
    return-void
.end method

.method static synthetic access$001(Landroid/media/update/ViewGroupHelper;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;

    .line 33
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1001(Landroid/media/update/ViewGroupHelper;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;

    .line 33
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$101(Landroid/media/update/ViewGroupHelper;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1101(Landroid/media/update/ViewGroupHelper;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 33
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1201(Landroid/media/update/ViewGroupHelper;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1301(Landroid/media/update/ViewGroupHelper;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1401(Landroid/media/update/ViewGroupHelper;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;

    .line 33
    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1501(Landroid/media/update/ViewGroupHelper;Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # Landroid/util/AttributeSet;

    .line 33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1601(Landroid/media/update/ViewGroupHelper;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .line 33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1701(Landroid/media/update/ViewGroupHelper;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;

    .line 33
    invoke-super {p0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1801(Landroid/media/update/ViewGroupHelper;Landroid/view/View;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 33
    invoke-super/range {p0 .. p5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/update/ViewGroupHelper;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/media/update/ViewGroupHelper;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$201(Landroid/media/update/ViewGroupHelper;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$301(Landroid/media/update/ViewGroupHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;

    .line 33
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method static synthetic access$401(Landroid/media/update/ViewGroupHelper;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # Z

    .line 33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$501(Landroid/media/update/ViewGroupHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;

    .line 33
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method static synthetic access$601(Landroid/media/update/ViewGroupHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;

    .line 33
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method static synthetic access$701(Landroid/media/update/ViewGroupHelper;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # Z

    .line 33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onVisibilityAggregated(Z)V

    return-void
.end method

.method static synthetic access$801(Landroid/media/update/ViewGroupHelper;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 33
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method static synthetic access$901(Landroid/media/update/ViewGroupHelper;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/update/ViewGroupHelper;

    .line 33
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 121
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->checkLayoutParams_impl(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 116
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->dispatchTouchEvent_impl(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 126
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->generateDefaultLayoutParams_impl()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 131
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->generateLayoutParams_impl(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 136
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->generateLayoutParams_impl(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 64
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->getAccessibilityClassName_impl()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Landroid/media/update/ViewGroupProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .line 109
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->getSuggestedMinimumHeight_impl()I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .line 104
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->getSuggestedMinimumWidth_impl()I

    move-result v0

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 147
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/update/ViewGroupProvider;->measureChildWithMargins_impl(Landroid/view/View;IIII)V

    .line 149
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 54
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->onAttachedToWindow_impl()V

    .line 55
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 59
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->onDetachedFromWindow_impl()V

    .line 60
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 79
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->onFinishInflate_impl()V

    .line 80
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 94
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/update/ViewGroupProvider;->onLayout_impl(ZIIII)V

    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 99
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/ViewGroupProvider;->onMeasure_impl(II)V

    .line 100
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 69
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->onTouchEvent_impl(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 74
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->onTrackballEvent_impl(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 89
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->onVisibilityAggregated_impl(Z)V

    .line 90
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 84
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->setEnabled_impl(Z)V

    .line 85
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 141
    .local p0, "this":Landroid/media/update/ViewGroupHelper;, "Landroid/media/update/ViewGroupHelper<TT;>;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->shouldDelayChildPressedState_impl()Z

    move-result v0

    return v0
.end method
