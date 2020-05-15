.class public Lcom/android/internal/widget/BackgroundFallback;
.super Ljava/lang/Object;
.source "BackgroundFallback.java"


# instance fields
.field private mBackgroundFallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isOpaque(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "childBg"    # Landroid/graphics/drawable/Drawable;

    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "view1"    # Landroid/view/View;
    .param p2, "view2"    # Landroid/view/View;
    .param p3, "width"    # I

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gtz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 175
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    if-lt v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0
.end method


# virtual methods
.method public draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 18
    .param p1, "boundsView"    # Landroid/view/ViewGroup;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "c"    # Landroid/graphics/Canvas;
    .param p4, "content"    # Landroid/view/View;
    .param p5, "coveringView1"    # Landroid/view/View;
    .param p6, "coveringView2"    # Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 54
    move-object/from16 v3, p6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    return-void

    .line 59
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 60
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 62
    .local v5, "height":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    .line 63
    .local v6, "rootOffsetX":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    .line 65
    .local v7, "rootOffsetY":I
    move v8, v4

    .line 66
    .local v8, "left":I
    move v9, v5

    .line 67
    .local v9, "top":I
    const/4 v10, 0x0

    .line 68
    .local v10, "right":I
    const/4 v11, 0x0

    .line 70
    .local v11, "bottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 71
    .local v12, "childCount":I
    move v14, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v9, "left":I
    .local v14, "top":I
    :goto_0
    if-ge v8, v12, :cond_4

    .line 72
    move-object/from16 v15, p2

    invoke-virtual {v15, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 73
    .local v13, "child":Landroid/view/View;
    move/from16 v16, v12

    invoke-virtual {v13}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 74
    .local v12, "childBg":Landroid/graphics/drawable/Drawable;
    .local v16, "childCount":I
    move-object/from16 v15, p4

    if-ne v13, v15, :cond_1

    .line 77
    if-nez v12, :cond_2

    instance-of v15, v13, Landroid/view/ViewGroup;

    if-eqz v15, :cond_2

    move-object v15, v13

    check-cast v15, Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-nez v15, :cond_2

    .line 79
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-nez v15, :cond_3

    invoke-direct {v0, v12}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 85
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    add-int/2addr v15, v6

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 88
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    add-int/2addr v15, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 89
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    add-int/2addr v15, v6

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 90
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v15, v7

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 71
    .end local v12    # "childBg":Landroid/graphics/drawable/Drawable;
    .end local v13    # "child":Landroid/view/View;
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v12, v16

    goto :goto_0

    .line 95
    .end local v8    # "i":I
    .end local v16    # "childCount":I
    .local v12, "childCount":I
    :cond_4
    move/from16 v16, v12

    .end local v12    # "childCount":I
    .restart local v16    # "childCount":I
    const/4 v8, 0x1

    .line 96
    .local v8, "eachBarCoversTopInY":Z
    move v12, v11

    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v9, "eachBarCoversTopInY":Z
    .local v11, "left":I
    .local v12, "bottom":I
    :goto_2
    const/4 v13, 0x2

    if-ge v8, v13, :cond_d

    .line 97
    if-nez v8, :cond_5

    move-object v13, v2

    goto :goto_3

    :cond_5
    move-object v13, v3

    .line 98
    .local v13, "v":Landroid/view/View;
    :goto_3
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-nez v15, :cond_c

    .line 99
    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v15

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v17

    if-nez v15, :cond_c

    invoke-virtual {v13}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v15

    if-nez v15, :cond_6

    goto/16 :goto_5

    .line 105
    :cond_6
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_7

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v5, :cond_7

    .line 106
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gtz v15, :cond_7

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v11, :cond_7

    .line 107
    const/4 v11, 0x0

    .line 110
    :cond_7
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_8

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v5, :cond_8

    .line 111
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gt v15, v10, :cond_8

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v4, :cond_8

    .line 112
    move v10, v4

    .line 115
    :cond_8
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_9

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v14, :cond_9

    .line 116
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gtz v15, :cond_9

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v4, :cond_9

    .line 117
    const/4 v14, 0x0

    .line 120
    :cond_9
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-gt v15, v12, :cond_a

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v5, :cond_a

    .line 121
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gtz v15, :cond_a

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v4, :cond_a

    .line 122
    move v12, v5

    .line 125
    :cond_a
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_b

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v14, :cond_b

    const/4 v15, 0x1

    goto :goto_4

    :cond_b
    const/4 v15, 0x0

    :goto_4
    and-int/2addr v9, v15

    .end local v13    # "v":Landroid/view/View;
    goto :goto_6

    .line 100
    .restart local v13    # "v":Landroid/view/View;
    :cond_c
    :goto_5
    const/4 v9, 0x0

    .line 101
    nop

    .line 96
    .end local v13    # "v":Landroid/view/View;
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 130
    .end local v8    # "i":I
    :cond_d
    if-eqz v9, :cond_f

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v8

    if-nez v8, :cond_e

    .line 131
    invoke-direct {v0, v3, v2, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 132
    :cond_e
    const/4 v14, 0x0

    .line 135
    :cond_f
    if-ge v11, v10, :cond_15

    if-lt v14, v12, :cond_10

    goto :goto_8

    .line 140
    :cond_10
    if-lez v14, :cond_11

    .line 141
    iget-object v8, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v13, v4, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    iget-object v8, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 144
    :cond_11
    const/4 v13, 0x0

    :goto_7
    if-lez v11, :cond_12

    .line 145
    iget-object v8, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v13, v14, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    iget-object v8, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    :cond_12
    if-ge v10, v4, :cond_13

    .line 149
    iget-object v8, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10, v14, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 150
    iget-object v8, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    :cond_13
    if-ge v12, v5, :cond_14

    .line 153
    iget-object v8, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11, v12, v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v8, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    :cond_14
    return-void

    .line 137
    :cond_15
    :goto_8
    return-void
.end method

.method public hasFallback()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method
