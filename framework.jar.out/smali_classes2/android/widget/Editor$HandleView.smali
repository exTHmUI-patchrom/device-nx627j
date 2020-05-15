.class public abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field private final mHandlesVisibilityCallback:Landroid/widget/Magnifier$Callback;

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentXOnScreen:I

.field private mLastParentY:I

.field private mLastParentYOnScreen:I

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field protected mPrevLine:I

.field protected mPreviousLineTouched:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 6
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I

    .line 4486
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4487
    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4474
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4476
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4480
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 4484
    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 4547
    const/4 v0, 0x5

    new-array v2, v0, [J

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 4548
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 4549
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4550
    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4907
    new-instance v2, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v2, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mHandlesVisibilityCallback:Landroid/widget/Magnifier$Callback;

    .line 4488
    invoke-virtual {p0, p4}, Landroid/widget/Editor$HandleView;->setId(I)V

    .line 4489
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x10102c8

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 4491
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 4492
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 4493
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4494
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4495
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4496
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4498
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 4499
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 4500
    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 4503
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4505
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v0

    .line 4506
    .local v0, "handleHeight":I
    int-to-float v1, v0

    const v2, -0x41666666    # -0.3f

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4507
    int-to-float v1, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 4508
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/widget/Editor$1;

    .line 4453
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method static synthetic access$5500(Landroid/widget/Editor$HandleView;Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$HandleView;
    .param p1, "x1"    # Landroid/widget/Editor$HandleView;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .line 4453
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/widget/Editor$HandleView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$HandleView;
    .param p1, "x1"    # Z

    .line 4453
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    return-void
.end method

.method static synthetic access$5700(Landroid/widget/Editor$HandleView;)Landroid/widget/Editor$HandleView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$HandleView;

    .line 4453
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v0

    return-object v0
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .line 4558
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4559
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 4560
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4561
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4562
    return-void
.end method

.method private filterOnTouchUp(Z)V
    .locals 10
    .param p1, "fromTouchScreen"    # Z

    .line 4565
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4566
    .local v0, "now":J
    const/4 v2, 0x0

    .line 4567
    .local v2, "i":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4568
    .local v3, "index":I
    iget v4, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4569
    .local v4, "iMax":I
    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v6, v3

    sub-long v6, v0, v6

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 4570
    add-int/lit8 v2, v2, 0x1

    .line 4571
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v6, v2

    add-int/2addr v6, v5

    rem-int/lit8 v3, v6, 0x5

    goto :goto_0

    .line 4574
    :cond_0
    if-lez v2, :cond_1

    if-ge v2, v4, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v3

    sub-long v5, v0, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 4576
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 4578
    :cond_1
    return-void
.end method

.method private getHorizontalOffset()I
    .locals 4

    .line 4773
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    .line 4774
    .local v0, "width":I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 4776
    .local v1, "drawWidth":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 4782
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 4783
    .local v2, "left":I
    goto :goto_0

    .line 4785
    .end local v2    # "left":I
    :cond_0
    sub-int v2, v0, v1

    goto :goto_0

    .line 4778
    :cond_1
    const/4 v2, 0x0

    .line 4779
    .restart local v2    # "left":I
    nop

    .line 4785
    :goto_0
    nop

    .line 4788
    return v2
.end method

.method private getOtherSelectionHandle()Landroid/widget/Editor$HandleView;
    .locals 2

    .line 4898
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 4899
    .local v0, "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4902
    :cond_0
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$4000(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 4903
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$4000(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    goto :goto_0

    .line 4904
    :cond_1
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$5400(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    .line 4902
    :goto_0
    return-object v1

    .line 4900
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPreferredHeight()I
    .locals 2

    .line 4602
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 4598
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "handle"    # Landroid/widget/Editor$HandleView;
    .param p2, "magnifierRect"    # Landroid/graphics/Rect;

    .line 4885
    iget-object v0, p1, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 4886
    .local v0, "window":Landroid/widget/PopupWindow;
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4887
    const/4 v1, 0x0

    return v1

    .line 4889
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 4890
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4891
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4892
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 4893
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4894
    .local v1, "handleRect":Landroid/graphics/Rect;
    invoke-static {v1, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method private obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "showPosInView"    # Landroid/graphics/PointF;

    move-object/from16 v0, p0

    .line 4813
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getMagnifierHandleTrigger()I

    move-result v2

    .line 4816
    .local v2, "trigger":I
    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    .line 4830
    const/4 v4, -0x1

    .line 4831
    .local v4, "offset":I
    move v5, v3

    goto :goto_0

    .line 4826
    .end local v4    # "offset":I
    :pswitch_0
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 4827
    .restart local v4    # "offset":I
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 4828
    .local v5, "otherHandleOffset":I
    goto :goto_0

    .line 4822
    .end local v4    # "offset":I
    .end local v5    # "otherHandleOffset":I
    :pswitch_1
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 4823
    .restart local v4    # "offset":I
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 4824
    .restart local v5    # "otherHandleOffset":I
    goto :goto_0

    .line 4818
    .end local v4    # "offset":I
    .end local v5    # "otherHandleOffset":I
    :pswitch_2
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 4819
    .restart local v4    # "offset":I
    const/4 v5, -0x1

    .line 4820
    .restart local v5    # "otherHandleOffset":I
    nop

    .line 4831
    :goto_0
    nop

    .line 4835
    const/4 v6, 0x0

    if-ne v4, v3, :cond_0

    .line 4836
    return v6

    .line 4839
    :cond_0
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 4840
    .local v7, "layout":Landroid/text/Layout;
    invoke-virtual {v7, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 4843
    .local v8, "lineNumber":I
    const/4 v9, 0x1

    if-eq v5, v3, :cond_1

    .line 4844
    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    if-ne v8, v3, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    move v3, v6

    .line 4845
    .local v3, "sameLineSelection":Z
    :goto_1
    if-eqz v3, :cond_4

    if-ge v4, v5, :cond_2

    move v10, v9

    goto :goto_2

    :cond_2
    move v10, v6

    :goto_2
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4847
    invoke-static {v11}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    iget-object v12, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4848
    invoke-static {v12}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v12

    invoke-virtual {v0, v12, v5}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    move v11, v9

    goto :goto_3

    :cond_3
    move v11, v6

    :goto_3
    if-eq v10, v11, :cond_4

    move v10, v9

    goto :goto_4

    :cond_4
    move v10, v6

    .line 4851
    .local v10, "rtl":Z
    :goto_4
    const/4 v11, 0x2

    new-array v12, v11, [I

    .line 4852
    .local v12, "textViewLocationOnScreen":[I
    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4853
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    aget v14, v12, v6

    int-to-float v14, v14

    sub-float/2addr v13, v14

    .line 4854
    .local v13, "touchXInView":F
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v14

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getScrollX()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 4855
    .local v14, "leftBound":F
    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v15

    iget-object v6, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    sub-int/2addr v15, v6

    int-to-float v6, v15

    .line 4856
    .local v6, "rightBound":F
    if-eqz v3, :cond_6

    if-ne v2, v11, :cond_5

    move v11, v9

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    xor-int/2addr v11, v10

    if-eqz v11, :cond_6

    .line 4857
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v5}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    add-float/2addr v14, v11

    goto :goto_6

    .line 4859
    :cond_6
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    add-float/2addr v14, v11

    .line 4861
    :goto_6
    if-eqz v3, :cond_8

    if-ne v2, v9, :cond_7

    move v11, v9

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    :goto_7
    xor-int/2addr v11, v10

    if-eqz v11, :cond_8

    .line 4862
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v5}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    add-float/2addr v6, v11

    goto :goto_8

    .line 4864
    :cond_8
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    add-float/2addr v6, v11

    .line 4866
    :goto_8
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v11

    invoke-static {v11}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$5300(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Magnifier;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4867
    invoke-static {v15}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v15

    invoke-static {v15}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$5300(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Magnifier;->getZoom()F

    move-result v15

    div-float/2addr v11, v15

    .line 4866
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    .line 4868
    .local v11, "contentWidth":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v16, v11, v15

    sub-float v16, v14, v16

    cmpg-float v16, v13, v16

    if-ltz v16, :cond_a

    div-float v16, v11, v15

    add-float v16, v6, v16

    cmpl-float v16, v13, v16

    if-lez v16, :cond_9

    goto :goto_9

    .line 4873
    :cond_9
    invoke-static {v6, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v1, Landroid/graphics/PointF;->x:F

    .line 4876
    iget-object v9, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4877
    invoke-static {v15}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v15

    add-int/2addr v9, v15

    int-to-float v9, v9

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v9, v15

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4878
    invoke-static {v15}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v9, v15

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getScrollY()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v9, v15

    iput v9, v1, Landroid/graphics/PointF;->y:F

    .line 4880
    const/4 v9, 0x1

    return v9

    .line 4871
    :cond_a
    :goto_9
    const/4 v9, 0x0

    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 4646
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4647
    return-void
.end method

.method private shouldShow()Z
    .locals 3

    .line 4633
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4634
    const/4 v0, 0x1

    return v0

    .line 4637
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4638
    const/4 v0, 0x0

    return v0

    .line 4641
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    .line 4642
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    .line 4641
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 4553
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4554
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4555
    return-void
.end method

.method private tooLargeTextForMagnifier()Z
    .locals 4

    .line 4796
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4797
    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$5300(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Magnifier;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4798
    invoke-static {v1}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$5300(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Magnifier;->getZoom()F

    move-result v1

    div-float/2addr v0, v1

    .line 4796
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 4799
    .local v0, "magnifierContentHeight":F
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 4800
    .local v1, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    .line 4801
    .local v2, "glyphHeight":F
    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .line 4616
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4617
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4618
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4619
    return-void
.end method

.method protected final dismissMagnifier()V
    .locals 2

    .line 4948
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4949
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6100(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    .line 4950
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->access$5802(Landroid/widget/Editor;Z)Z

    .line 4951
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$6200(Landroid/widget/Editor;)V

    .line 4952
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 4953
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v1

    .line 4954
    .local v1, "otherHandle":Landroid/widget/Editor$HandleView;
    if-eqz v1, :cond_0

    .line 4955
    invoke-direct {v1, v0}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 4958
    .end local v1    # "otherHandle":Landroid/widget/Editor$HandleView;
    :cond_0
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 4722
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getCursorOffset()I
    .locals 1

    .line 4792
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4664
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public getIdealVerticalOffset()F
    .locals 1

    .line 4511
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method protected abstract getMagnifierHandleTrigger()I
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .line 4668
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .line 4622
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4624
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4625
    return-void
.end method

.method public invalidate()V
    .locals 3

    .line 4591
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 4592
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4593
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 4595
    :cond_0
    return-void
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 4659
    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 5022
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 4628
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .line 4581
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDetached()V
    .locals 0

    .line 5027
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 4765
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4766
    .local v0, "drawWidth":I
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 4768
    .local v1, "left":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v3, v1, v0

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4769
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4770
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .line 5025
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 4586
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 4587
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 4962
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0, p1}, Landroid/widget/Editor;->access$6300(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 4964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1002

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 4985
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 4986
    .local v0, "xInWindow":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 4989
    .local v3, "yInWindow":F
    iget v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 4990
    .local v4, "previousVerticalOffset":F
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 4992
    .local v5, "currentVerticalOffset":F
    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_0

    .line 4993
    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 4994
    .local v6, "newVerticalOffset":F
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_0

    .line 4996
    .end local v6    # "newVerticalOffset":F
    :cond_0
    iget v6, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 4997
    .restart local v6    # "newVerticalOffset":F
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 4999
    :goto_0
    iget v7, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    iput v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 5001
    iget v7, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v7, v0, v7

    iget v8, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 5002
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 5003
    .local v7, "newPosX":F
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v8, v3, v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v8, v9

    .line 5005
    .local v8, "newPosY":F
    nop

    .line 5006
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    .line 5005
    invoke-virtual {p0, v7, v8, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FFZ)V

    .line 5007
    goto :goto_1

    .line 5011
    .end local v0    # "xInWindow":F
    .end local v3    # "yInWindow":F
    .end local v4    # "previousVerticalOffset":F
    .end local v5    # "currentVerticalOffset":F
    .end local v6    # "newVerticalOffset":F
    .end local v7    # "newPosX":F
    .end local v8    # "newPosY":F
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp(Z)V

    .line 5014
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 5015
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    goto :goto_1

    .line 4966
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 4968
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 4969
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4970
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4971
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionXOnScreen()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    .line 4972
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionYOnScreen()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    .line 4974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 4975
    .local v2, "xInWindow":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 4976
    .restart local v3    # "yInWindow":F
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4977
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4979
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4980
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 4981
    nop

    .line 5018
    .end local v0    # "positionListener":Landroid/widget/Editor$PositionListener;
    .end local v2    # "xInWindow":F
    .end local v3    # "yInWindow":F
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .line 4681
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4682
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 4684
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4685
    return-void

    .line 4687
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4689
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4690
    .local v1, "offsetChanged":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_5

    .line 4691
    :cond_2
    if-eqz v1, :cond_4

    .line 4692
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 4693
    if-eqz p3, :cond_3

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$5200(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4694
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 4696
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4698
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 4699
    .local v3, "line":I
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 4701
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    .line 4702
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4703
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4706
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4707
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4709
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4710
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4712
    .end local v3    # "line":I
    :cond_5
    return-void
.end method

.method public show()V
    .locals 2

    .line 4606
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4608
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4611
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4612
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 4613
    return-void
.end method

.method protected updateDrawable()V
    .locals 7

    .line 4515
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4517
    return-void

    .line 4519
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4520
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 4521
    return-void

    .line 4523
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 4524
    .local v1, "offset":I
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v2

    .line 4525
    .local v2, "isRtlCharAtOffset":Z
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4526
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4527
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4528
    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 4529
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4531
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    .line 4532
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4533
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4534
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4535
    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v6}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 4536
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 4538
    :cond_3
    return-void
.end method

.method protected final updateMagnifier(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 4926
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4927
    return-void

    .line 4930
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 4931
    .local v0, "showPosInView":Landroid/graphics/PointF;
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->tooLargeTextForMagnifier()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 4932
    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$HandleView;->obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4933
    .local v1, "shouldShow":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 4935
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3, v2}, Landroid/widget/Editor;->access$5802(Landroid/widget/Editor;Z)Z

    .line 4936
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 4937
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$5900(Landroid/widget/Editor;)V

    .line 4938
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$5300(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mHandlesVisibilityCallback:Landroid/widget/Magnifier$Callback;

    .line 4939
    invoke-virtual {v2, v3}, Landroid/widget/Magnifier;->setOnOperationCompleteCallback(Landroid/widget/Magnifier$Callback;)V

    .line 4941
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->access$6000(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V

    goto :goto_1

    .line 4943
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    .line 4945
    :goto_1
    return-void
.end method

.method protected abstract updatePosition(FFZ)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .line 4728
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 4729
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_7

    .line 4730
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 4732
    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v0, :cond_2

    .line 4733
    :cond_1
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4734
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4735
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4736
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4739
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4742
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4744
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v3

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 4745
    .local v0, "pts":[I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 4746
    aget v2, v0, v1

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    aput v2, v0, v1

    .line 4748
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4749
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v4, v0, v1

    aget v3, v0, v3

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v3, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 4751
    :cond_4
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    aget v5, v0, v1

    aget v3, v0, v3

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4753
    .end local v0    # "pts":[I
    :goto_0
    goto :goto_1

    .line 4754
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4755
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4759
    :cond_6
    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4761
    :cond_7
    return-void
.end method

.method protected abstract updateSelection(I)V
.end method
