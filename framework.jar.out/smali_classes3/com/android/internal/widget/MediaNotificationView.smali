.class public Lcom/android/internal/widget/MediaNotificationView;
.super Landroid/widget/FrameLayout;
.source "MediaNotificationView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mActions:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mImagePushIn:I

.field private mMainColumn:Landroid/view/View;

.field private final mNotificationContentImageMarginEnd:I

.field private final mNotificationContentMarginEnd:I

.field private mRightIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    .line 148
    return-void
.end method

.method private resetHeaderIndention()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    iget-object v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    .line 130
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 127
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    .local v0, "headerParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 135
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 153
    const v0, 0x10203b8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    .line 154
    const v0, 0x10202fc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    .line 155
    const v0, 0x102033d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    .line 156
    const v0, 0x102033e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    .line 157
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 118
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 119
    iget v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    .line 120
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 58
    iget-object v1, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 59
    .local v1, "hasIcon":Z
    :goto_0
    if-nez v1, :cond_1

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MediaNotificationView;->resetHeaderIndention()V

    .line 62
    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 63
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 64
    .local v3, "mode":I
    const/4 v4, 0x0

    .line 65
    .local v4, "reMeasure":Z
    iput v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    .line 66
    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    .line 67
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 68
    .local v5, "size":I
    iget-object v6, v0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    .line 69
    iget-object v6, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 71
    .local v6, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    .line 72
    .local v7, "imageEndMargin":I
    sub-int/2addr v5, v7

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MediaNotificationView;->getMeasuredHeight()I

    move-result v8

    .line 74
    .local v8, "fullHeight":I
    if-le v5, v8, :cond_2

    .line 75
    move v5, v8

    goto :goto_1

    .line 76
    :cond_2
    if-ge v5, v8, :cond_3

    .line 77
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 78
    sub-int v2, v8, v5

    iput v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    .line 80
    :cond_3
    :goto_1
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v2, v8, :cond_4

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v2, v8, :cond_5

    .line 81
    :cond_4
    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 82
    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 83
    iget-object v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    const/4 v4, 0x1

    .line 88
    :cond_5
    iget-object v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    add-int v9, v5, v7

    iget v10, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    add-int/2addr v9, v10

    .line 91
    .local v9, "marginEnd":I
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 92
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 93
    iget-object v10, v0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const/4 v4, 0x1

    .line 96
    :cond_6
    add-int v10, v5, v7

    .line 97
    .local v10, "headerMarginEnd":I
    iget-object v11, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v2, v11

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v11

    if-eq v11, v10, :cond_7

    .line 99
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 100
    iget-object v11, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/4 v4, 0x1

    .line 103
    :cond_7
    iget-object v11, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v11

    iget v12, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    if-eq v11, v12, :cond_8

    .line 104
    iget-object v11, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    iget-object v12, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingStart()I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    .line 105
    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    iget v14, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    iget-object v15, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    .line 107
    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    .line 104
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 108
    const/4 v4, 0x1

    .line 111
    .end local v2    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "size":I
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "imageEndMargin":I
    .end local v8    # "fullHeight":I
    .end local v9    # "marginEnd":I
    .end local v10    # "headerMarginEnd":I
    :cond_8
    if-eqz v4, :cond_9

    .line 112
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 114
    :cond_9
    return-void
.end method
