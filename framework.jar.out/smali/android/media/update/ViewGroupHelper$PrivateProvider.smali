.class public Landroid/media/update/ViewGroupHelper$PrivateProvider;
.super Ljava/lang/Object;
.source "ViewGroupHelper.java"

# interfaces
.implements Landroid/media/update/ViewGroupProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/update/ViewGroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/update/ViewGroupHelper;


# direct methods
.method public constructor <init>(Landroid/media/update/ViewGroupHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/update/ViewGroupHelper;

    .line 258
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iput-object p1, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLayoutParams_impl(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 331
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent_impl(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 326
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public generateDefaultLayoutParams_impl()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 336
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams_impl(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 341
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams_impl(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 346
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityClassName_impl()Ljava/lang/CharSequence;
    .locals 1

    .line 261
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedMinimumHeight_impl()I
    .locals 1

    .line 316
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->getSuggestedMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getSuggestedMinimumWidth_impl()I
    .locals 1

    .line 311
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->getSuggestedMinimumWidth()I

    move-result v0

    return v0
.end method

.method public measureChildWithMargins_impl(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 358
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/update/ViewGroupHelper;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 360
    return-void
.end method

.method public onAttachedToWindow_impl()V
    .locals 1

    .line 286
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->onAttachedToWindow()V

    .line 287
    return-void
.end method

.method public onDetachedFromWindow_impl()V
    .locals 1

    .line 291
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->onDetachedFromWindow()V

    .line 292
    return-void
.end method

.method public onFinishInflate_impl()V
    .locals 1

    .line 276
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->onFinishInflate()V

    .line 277
    return-void
.end method

.method public onLayout_impl(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 301
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/update/ViewGroupHelper;->onLayout(ZIIII)V

    .line 302
    return-void
.end method

.method public onMeasure_impl(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 306
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1, p2}, Landroid/media/update/ViewGroupHelper;->onMeasure(II)V

    .line 307
    return-void
.end method

.method public onTouchEvent_impl(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 266
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent_impl(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 271
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVisibilityAggregated_impl(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 296
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->onVisibilityAggregated(Z)V

    .line 297
    return-void
.end method

.method public setEnabled_impl(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 281
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->setEnabled(Z)V

    .line 282
    return-void
.end method

.method public setMeasuredDimension_impl(II)V
    .locals 1
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .line 321
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {v0, p1, p2}, Landroid/media/update/ViewGroupHelper;->access$1900(Landroid/media/update/ViewGroupHelper;II)V

    .line 322
    return-void
.end method

.method public shouldDelayChildPressedState_impl()Z
    .locals 1

    .line 351
    .local p0, "this":Landroid/media/update/ViewGroupHelper$PrivateProvider;, "Landroid/media/update/ViewGroupHelper<TT;>.PrivateProvider;"
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method
