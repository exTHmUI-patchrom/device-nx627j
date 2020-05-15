.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;,
        Landroid/widget/LinearLayout$DividerMode;,
        Landroid/widget/LinearLayout$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4

.field private static sCompatibilityDone:Z

.field private static sRemeasureWeightedChildren:Z


# instance fields
.field private final mAllowInconsistentMeasurement:Z

.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 224
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 145
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 153
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 159
    const v3, 0x800033

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 218
    iput v1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 246
    sget-boolean v3, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 250
    .local v3, "targetSdkVersion":I
    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    sput-boolean v4, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    .line 252
    sput-boolean v0, Landroid/widget/LinearLayout;->sCompatibilityDone:Z

    .line 255
    .end local v3    # "targetSdkVersion":I
    :cond_1
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 258
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 259
    .local v4, "index":I
    if-ltz v4, :cond_2

    .line 260
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 263
    :cond_2
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 264
    if-ltz v4, :cond_3

    .line 265
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 268
    :cond_3
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 269
    .local v5, "baselineAligned":Z
    if-nez v5, :cond_4

    .line 270
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 273
    :cond_4
    const/4 v6, 0x4

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 275
    const/4 v6, 0x3

    .line 276
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 278
    const/4 v1, 0x6

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 280
    const/4 v1, 0x7

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 281
    const/16 v1, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 282
    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 285
    .local v1, "version":I
    const/16 v6, 0x17

    if-gt v1, v6, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    .line 287
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 288
    return-void
.end method

.method private allViewsAreGoneBefore(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 735
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 736
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 737
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 738
    const/4 v2, 0x0

    return v2

    .line 735
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 741
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private forceUniformHeight(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1475
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1477
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1478
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1479
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1480
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1482
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1485
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1486
    .local v10, "oldWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1489
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1490
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1477
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "oldWidth":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1494
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 11
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1053
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1055
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1056
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1057
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1058
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1060
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1063
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1064
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1067
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1068
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1055
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1072
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private getLastNonGoneChild()Landroid/view/View;
    .locals 4

    .line 453
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 454
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 455
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 456
    return-object v1

    .line 453
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 459
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isShowingDividers()Z
    .locals 1

    .line 295
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1827
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1828
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1947
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 463
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 464
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    .line 465
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 466
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 467
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 468
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 471
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_1

    .line 474
    .end local v5    # "position":I
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 476
    .restart local v5    # "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 465
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 482
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v2

    .line 484
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_4

    .line 485
    if-eqz v1, :cond_3

    .line 486
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    :goto_2
    goto :goto_3

    .line 488
    .end local v3    # "position":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    goto :goto_2

    .line 491
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 492
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_5

    .line 493
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int/2addr v4, v5

    .line 495
    .local v4, "position":I
    move v3, v4

    goto :goto_3

    .end local v4    # "position":I
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v3, v4, v5

    .line 498
    .local v3, "position":I
    :goto_3
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 500
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 423
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    .line 424
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 425
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 426
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 427
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 429
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 430
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 424
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "top":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v1

    .line 437
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 438
    .local v2, "bottom":I
    if-nez v1, :cond_2

    .line 439
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int/2addr v3, v4

    .end local v2    # "bottom":I
    .local v3, "bottom":I
    goto :goto_1

    .line 441
    .end local v3    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 442
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v3, v4, v5

    .line 444
    .end local v2    # "bottom":I
    .local v3, "bottom":I
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 446
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 503
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 504
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 503
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 505
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 506
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 509
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 510
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 509
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 511
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 512
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1958
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1959
    const-string v0, "layout:baselineAligned"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1960
    const-string v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1961
    const-string/jumbo v0, "measurement:baselineChildTop"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1962
    const-string/jumbo v0, "measurement:orientation"

    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1963
    const-string/jumbo v0, "measurement:gravity"

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1964
    const-string/jumbo v0, "measurement:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1965
    const-string v0, "layout:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1966
    const-string v0, "layout:useLargestChild"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1967
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1923
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1924
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1925
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1926
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1928
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1910
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1933
    sget-boolean v0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    .line 1934
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1935
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 1936
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1937
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1940
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1952
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 6

    .line 571
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 572
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 575
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    .line 580
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 583
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 584
    iget v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_1

    .line 586
    return v2

    .line 590
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    :cond_2
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 602
    .local v2, "childTop":I
    iget v3, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 603
    iget v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 604
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    .line 605
    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    .line 605
    .end local v3    # "majorGravity":I
    goto :goto_0

    .line 607
    .restart local v3    # "majorGravity":I
    :cond_3
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v4, v5

    .line 608
    goto :goto_0

    .line 611
    :cond_4
    iget v4, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v5, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 618
    .end local v3    # "majorGravity":I
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 619
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 576
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 628
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1505
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 337
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 397
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 406
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1887
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1547
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1559
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1851
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 326
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 657
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .line 670
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 681
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 718
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 720
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 722
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result v0

    .line 723
    .local v0, "allViewsAreGoneBefore":Z
    if-eqz v0, :cond_3

    .line 725
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 727
    :cond_3
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1
.end method

.method public isBaselineAligned()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .line 549
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 31
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    move-object/from16 v6, p0

    .line 1704
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v9

    .line 1705
    .local v9, "isLayoutRtl":Z
    iget v10, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    .line 1711
    .local v10, "paddingTop":I
    sub-int v13, p4, p2

    .line 1712
    .local v13, "height":I
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v14, v13, v0

    .line 1715
    .local v14, "childBottom":I
    sub-int v0, v13, v10

    iget v1, v6, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v15, v0, v1

    .line 1717
    .local v15, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v5

    .line 1719
    .local v5, "count":I
    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v4, v0, v1

    .line 1720
    .local v4, "majorGravity":I
    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v16, v0, 0x70

    .line 1722
    .local v16, "minorGravity":I
    iget-boolean v2, v6, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1724
    .local v2, "baselineAligned":Z
    iget-object v1, v6, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1725
    .local v1, "maxAscent":[I
    iget-object v0, v6, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1727
    .local v0, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    .line 1728
    .local v3, "layoutDirection":I
    invoke-static {v4, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    const/16 v17, 0x2

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    const/4 v12, 0x5

    if-eq v11, v12, :cond_0

    .line 1741
    iget v11, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .end local v3    # "layoutDirection":I
    .local v11, "childLeft":I
    .local v18, "layoutDirection":I
    :goto_0
    move/from16 v18, v3

    goto :goto_1

    .line 1731
    .end local v11    # "childLeft":I
    .end local v18    # "layoutDirection":I
    .restart local v3    # "layoutDirection":I
    :cond_0
    iget v11, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v11, v11, p3

    sub-int v11, v11, p1

    iget v12, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v11, v12

    .line 1732
    .restart local v11    # "childLeft":I
    goto :goto_0

    .line 1736
    .end local v11    # "childLeft":I
    :cond_1
    iget v11, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v12, p3, p1

    move/from16 v18, v3

    iget v3, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    .end local v3    # "layoutDirection":I
    .restart local v18    # "layoutDirection":I
    sub-int/2addr v12, v3

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 1737
    .restart local v11    # "childLeft":I
    nop

    .line 1741
    :goto_1
    move v3, v11

    .line 1745
    .end local v11    # "childLeft":I
    .local v3, "childLeft":I
    const/4 v11, 0x0

    .line 1746
    .local v11, "start":I
    const/4 v12, 0x1

    .line 1748
    .local v12, "dir":I
    if-eqz v9, :cond_2

    .line 1749
    add-int/lit8 v11, v5, -0x1

    .line 1750
    const/4 v12, -0x1

    .line 1753
    :cond_2
    const/16 v19, 0x0

    move/from16 v20, v3

    .end local v3    # "childLeft":I
    .local v19, "i":I
    .local v20, "childLeft":I
    :goto_2
    move/from16 v3, v19

    .end local v19    # "i":I
    .local v3, "i":I
    if-ge v3, v5, :cond_d

    .line 1754
    mul-int v19, v12, v3

    add-int v7, v11, v19

    .line 1755
    .local v7, "childIndex":I
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1756
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_3

    .line 1757
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v19

    add-int v20, v20, v19

    .line 1753
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v30, v9

    goto/16 :goto_5

    .line 1758
    :cond_3
    move/from16 v21, v3

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    .end local v3    # "i":I
    .local v21, "i":I
    move/from16 v22, v4

    const/16 v4, 0x8

    .end local v4    # "majorGravity":I
    .local v22, "majorGravity":I
    if-eq v3, v4, :cond_c

    .line 1759
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1760
    .local v19, "childWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    .line 1761
    .local v23, "childHeight":I
    const/4 v3, -0x1

    .line 1763
    .local v3, "childBaseline":I
    nop

    .line 1764
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1766
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v24, v3

    const/4 v3, -0x1

    .end local v3    # "childBaseline":I
    .local v24, "childBaseline":I
    if-eqz v2, :cond_4

    move/from16 v25, v2

    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .end local v2    # "baselineAligned":Z
    .local v25, "baselineAligned":Z
    if-eq v2, v3, :cond_5

    .line 1767
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v2

    .end local v24    # "childBaseline":I
    .local v2, "childBaseline":I
    goto :goto_3

    .line 1770
    .end local v25    # "baselineAligned":Z
    .local v2, "baselineAligned":Z
    .restart local v24    # "childBaseline":I
    :cond_4
    move/from16 v25, v2

    .end local v2    # "baselineAligned":Z
    .restart local v25    # "baselineAligned":Z
    :cond_5
    move/from16 v2, v24

    .end local v24    # "childBaseline":I
    .local v2, "childBaseline":I
    :goto_3
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1771
    .local v3, "gravity":I
    if-gez v3, :cond_6

    .line 1772
    move/from16 v3, v16

    .line 1775
    .end local v3    # "gravity":I
    .local v24, "gravity":I
    :cond_6
    move/from16 v24, v3

    and-int/lit8 v3, v24, 0x70

    move/from16 v27, v5

    .end local v5    # "count":I
    .local v27, "count":I
    const/16 v5, 0x10

    if-eq v3, v5, :cond_9

    const/16 v5, 0x30

    if-eq v3, v5, :cond_8

    const/16 v5, 0x50

    if-eq v3, v5, :cond_7

    .line 1807
    move v3, v10

    goto :goto_4

    .line 1800
    :cond_7
    sub-int v3, v14, v23

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    .line 1801
    .local v3, "childTop":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    .line 1802
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v2

    .line 1803
    .local v5, "descent":I
    aget v26, v0, v17

    sub-int v26, v26, v5

    sub-int v3, v3, v26

    .line 1804
    .end local v5    # "descent":I
    goto :goto_4

    .line 1777
    .end local v3    # "childTop":I
    :cond_8
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    .line 1778
    .restart local v3    # "childTop":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_a

    .line 1779
    const/4 v5, 0x1

    aget v26, v1, v5

    sub-int v26, v26, v2

    add-int v3, v3, v26

    goto :goto_4

    .line 1795
    .end local v3    # "childTop":I
    :cond_9
    sub-int v3, v15, v23

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v10

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    .line 1797
    .restart local v3    # "childTop":I
    nop

    .line 1807
    :cond_a
    :goto_4
    nop

    .line 1811
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1812
    iget v5, v6, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int v20, v20, v5

    .line 1815
    :cond_b
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v20, v20, v5

    .line 1816
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int v5, v20, v5

    move-object/from16 v26, v0

    move-object v0, v6

    .end local v0    # "maxDescent":[I
    .local v26, "maxDescent":[I
    move-object/from16 v28, v1

    move-object v1, v8

    .end local v1    # "maxAscent":[I
    .local v28, "maxAscent":[I
    move/from16 v29, v2

    move v2, v5

    .end local v2    # "childBaseline":I
    .local v29, "childBaseline":I
    move-object v5, v4

    move/from16 v4, v19

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v30, v9

    move-object v9, v5

    move/from16 v5, v23

    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v30, "isLayoutRtl":Z
    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1818
    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v0, v19, v0

    .line 1819
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 1821
    invoke-virtual {v6, v8, v7}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v21, v0

    .end local v7    # "childIndex":I
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "childWidth":I
    .end local v21    # "i":I
    .end local v23    # "childHeight":I
    .end local v24    # "gravity":I
    .end local v29    # "childBaseline":I
    .local v3, "i":I
    goto :goto_5

    .line 1753
    .end local v3    # "i":I
    .end local v25    # "baselineAligned":Z
    .end local v26    # "maxDescent":[I
    .end local v27    # "count":I
    .end local v28    # "maxAscent":[I
    .end local v30    # "isLayoutRtl":Z
    .restart local v0    # "maxDescent":[I
    .restart local v1    # "maxAscent":[I
    .local v2, "baselineAligned":Z
    .local v5, "count":I
    .local v9, "isLayoutRtl":Z
    .restart local v21    # "i":I
    :cond_c
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v27, v5

    move/from16 v30, v9

    move/from16 v3, v21

    .end local v0    # "maxDescent":[I
    .end local v1    # "maxAscent":[I
    .end local v2    # "baselineAligned":Z
    .end local v5    # "count":I
    .end local v9    # "isLayoutRtl":Z
    .end local v21    # "i":I
    .restart local v3    # "i":I
    .restart local v25    # "baselineAligned":Z
    .restart local v26    # "maxDescent":[I
    .restart local v27    # "count":I
    .restart local v28    # "maxAscent":[I
    .restart local v30    # "isLayoutRtl":Z
    :goto_5
    const/4 v0, 0x1

    add-int/lit8 v19, v3, 0x1

    .end local v3    # "i":I
    .local v19, "i":I
    move/from16 v4, v22

    move/from16 v2, v25

    move-object/from16 v0, v26

    move/from16 v5, v27

    move-object/from16 v1, v28

    move/from16 v9, v30

    goto/16 :goto_2

    .line 1824
    .end local v19    # "i":I
    .end local v22    # "majorGravity":I
    .end local v25    # "baselineAligned":Z
    .end local v26    # "maxDescent":[I
    .end local v27    # "count":I
    .end local v28    # "maxAscent":[I
    .end local v30    # "isLayoutRtl":Z
    .restart local v0    # "maxDescent":[I
    .restart local v1    # "maxAscent":[I
    .restart local v2    # "baselineAligned":Z
    .local v4, "majorGravity":I
    .restart local v5    # "count":I
    .restart local v9    # "isLayoutRtl":Z
    :cond_d
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v25, v2

    move/from16 v22, v4

    move/from16 v27, v5

    move/from16 v30, v9

    .end local v0    # "maxDescent":[I
    .end local v1    # "maxAscent":[I
    .end local v2    # "baselineAligned":Z
    .end local v4    # "majorGravity":I
    .end local v5    # "count":I
    .end local v9    # "isLayoutRtl":Z
    .restart local v22    # "majorGravity":I
    .restart local v25    # "baselineAligned":Z
    .restart local v26    # "maxDescent":[I
    .restart local v27    # "count":I
    .restart local v28    # "maxAscent":[I
    .restart local v30    # "isLayoutRtl":Z
    return-void
.end method

.method layoutVertical(IIII)V
    .locals 27
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    move-object/from16 v6, p0

    .line 1584
    iget v9, v6, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 1590
    .local v9, "paddingLeft":I
    sub-int v10, p3, p1

    .line 1591
    .local v10, "width":I
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v11, v10, v0

    .line 1594
    .local v11, "childRight":I
    sub-int v0, v10, v9

    iget v1, v6, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v12, v0, v1

    .line 1596
    .local v12, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v13

    .line 1598
    .local v13, "count":I
    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v5, v0, 0x70

    .line 1599
    .local v5, "majorGravity":I
    iget v0, v6, Landroid/widget/LinearLayout;->mGravity:I

    const v1, 0x800007

    and-int v14, v0, v1

    .line 1601
    .local v14, "minorGravity":I
    const/16 v0, 0x10

    if-eq v5, v0, :cond_1

    const/16 v0, 0x50

    if-eq v5, v0, :cond_0

    .line 1614
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    goto :goto_0

    .line 1604
    :cond_0
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1605
    .local v0, "childTop":I
    goto :goto_0

    .line 1609
    .end local v0    # "childTop":I
    :cond_1
    iget v0, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1610
    .restart local v0    # "childTop":I
    nop

    .line 1614
    :goto_0
    nop

    .line 1618
    move v1, v0

    const/4 v0, 0x0

    .line 1618
    .local v0, "i":I
    .local v1, "childTop":I
    :goto_1
    move v3, v0

    .line 1618
    .end local v0    # "i":I
    .local v3, "i":I
    if-ge v3, v13, :cond_a

    .line 1619
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1620
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_2

    .line 1621
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v15

    add-int/2addr v1, v15

    .line 1618
    move/from16 v21, v5

    move/from16 v26, v9

    const/16 v16, 0x0

    const/16 v20, 0x1

    goto/16 :goto_4

    .line 1622
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v2, 0x8

    if-eq v4, v2, :cond_9

    .line 1623
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1624
    .local v15, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 1626
    .local v18, "childHeight":I
    nop

    .line 1627
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1629
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1630
    .local v2, "gravity":I
    if-gez v2, :cond_3

    .line 1631
    move v2, v14

    .line 1633
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v7

    .line 1634
    .local v7, "layoutDirection":I
    invoke-static {v2, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v19

    .line 1635
    .local v19, "absoluteGravity":I
    move/from16 v20, v2

    and-int/lit8 v2, v19, 0x7

    .line 1635
    .end local v2    # "gravity":I
    .local v20, "gravity":I
    move/from16 v21, v5

    const/4 v5, 0x1

    .line 1635
    .end local v5    # "majorGravity":I
    .local v21, "majorGravity":I
    if-eq v2, v5, :cond_5

    const/4 v5, 0x5

    if-eq v2, v5, :cond_4

    .line 1647
    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    goto :goto_2

    .line 1642
    :cond_4
    sub-int v2, v11, v15

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1643
    .local v2, "childLeft":I
    goto :goto_2

    .line 1637
    .end local v2    # "childLeft":I
    :cond_5
    sub-int v2, v12, v15

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1639
    .restart local v2    # "childLeft":I
    nop

    .line 1647
    :goto_2
    move/from16 v17, v20

    const/16 v20, 0x1

    .line 1651
    .end local v20    # "gravity":I
    .local v17, "gravity":I
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1652
    iget v5, v6, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v1, v5

    .line 1655
    :cond_6
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v5

    .line 1657
    const-string v5, "com.tencent.mm"

    move/from16 v22, v3

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1657
    .end local v3    # "i":I
    .local v22, "i":I
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1658
    const/16 v3, 0x7e

    if-ne v1, v3, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1659
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1660
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_8

    .line 1661
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1662
    .local v3, "desc":Ljava/lang/CharSequence;
    const-string v5, "LinearLayout"

    move/from16 v23, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 1662
    .end local v1    # "childTop":I
    .local v23, "childTop":I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    const-string v4, "game pip "

    .line 1662
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v24, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    if-eqz v3, :cond_7

    const-string/jumbo v1, "weixinContentRoot"

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1664
    const/4 v4, 0x0

    iput v4, v6, Landroid/widget/LinearLayout;->mPaddingTop:I

    .line 1665
    const/4 v1, 0x0

    .line 1671
    .end local v3    # "desc":Ljava/lang/CharSequence;
    .end local v23    # "childTop":I
    .restart local v1    # "childTop":I
    move/from16 v23, v1

    goto :goto_3

    .line 1671
    .end local v1    # "childTop":I
    .restart local v23    # "childTop":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 1671
    .end local v23    # "childTop":I
    .end local v24    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "childTop":I
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    move/from16 v23, v1

    move-object/from16 v24, v4

    const/4 v4, 0x0

    .line 1671
    .end local v1    # "childTop":I
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v23    # "childTop":I
    .restart local v24    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_3
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v3, v23, v1

    move-object v5, v0

    move-object v0, v6

    .line 1671
    .end local v0    # "child":Landroid/view/View;
    .local v5, "child":Landroid/view/View;
    move-object v1, v5

    move/from16 v25, v7

    move/from16 v7, v22

    .line 1671
    .end local v22    # "i":I
    .local v7, "i":I
    .local v25, "layoutDirection":I
    move/from16 v16, v4

    move-object/from16 v8, v24

    move v4, v15

    .line 1671
    .end local v24    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v26, v9

    move-object v9, v5

    move/from16 v5, v18

    .line 1671
    .end local v5    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    .local v26, "paddingLeft":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1673
    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v18, v0

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v23, v23, v0

    .line 1675
    invoke-virtual {v6, v9, v7}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v7, v0

    .line 1618
    .end local v2    # "childLeft":I
    .end local v7    # "i":I
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "child":Landroid/view/View;
    .end local v15    # "childWidth":I
    .end local v17    # "gravity":I
    .end local v18    # "childHeight":I
    .end local v19    # "absoluteGravity":I
    .end local v25    # "layoutDirection":I
    .local v3, "i":I
    move/from16 v1, v23

    goto :goto_4

    .line 1618
    .end local v21    # "majorGravity":I
    .end local v23    # "childTop":I
    .end local v26    # "paddingLeft":I
    .restart local v1    # "childTop":I
    .local v5, "majorGravity":I
    .local v9, "paddingLeft":I
    :cond_9
    move v7, v3

    move/from16 v21, v5

    move/from16 v26, v9

    const/16 v16, 0x0

    const/16 v20, 0x1

    .line 1618
    .end local v5    # "majorGravity":I
    .end local v9    # "paddingLeft":I
    .restart local v21    # "majorGravity":I
    .restart local v26    # "paddingLeft":I
    :goto_4
    add-int/lit8 v0, v3, 0x1

    .line 1618
    .end local v3    # "i":I
    .local v0, "i":I
    move/from16 v5, v21

    move/from16 v9, v26

    goto/16 :goto_1

    .line 1678
    .end local v0    # "i":I
    .end local v21    # "majorGravity":I
    .end local v26    # "paddingLeft":I
    .restart local v5    # "majorGravity":I
    .restart local v9    # "paddingLeft":I
    :cond_a
    move/from16 v21, v5

    move/from16 v26, v9

    .line 1678
    .end local v5    # "majorGravity":I
    .end local v9    # "paddingLeft":I
    .restart local v21    # "majorGravity":I
    .restart local v26    # "paddingLeft":I
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1535
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1537
    return-void
.end method

.method measureHorizontal(II)V
    .locals 67
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 1086
    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1087
    const/4 v0, 0x0

    .line 1088
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 1089
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 1090
    .local v2, "alternativeMaxHeight":I
    const/4 v3, 0x0

    .line 1091
    .local v3, "weightedMaxHeight":I
    const/4 v4, 0x1

    .line 1092
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 1094
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1096
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1097
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 1099
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 1100
    .local v6, "matchHeight":Z
    const/4 v14, 0x0

    .line 1102
    .local v14, "skippedMeasure":Z
    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v15, :cond_0

    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v15, :cond_1

    .line 1103
    :cond_0
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1104
    new-array v10, v15, [I

    iput-object v10, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1107
    :cond_1
    iget-object v10, v7, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 1108
    .local v10, "maxAscent":[I
    iget-object v15, v7, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 1110
    .local v15, "maxDescent":[I
    const/16 v17, 0x3

    move/from16 v18, v6

    const/4 v6, -0x1

    .end local v6    # "matchHeight":Z
    .local v18, "matchHeight":Z
    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 1111
    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    .line 1113
    iget-boolean v6, v7, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1114
    .local v6, "baselineAligned":Z
    move/from16 v22, v14

    iget-boolean v14, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 1116
    .local v14, "useLargestChild":Z
    .local v22, "skippedMeasure":Z
    move-object/from16 v23, v15

    const/high16 v15, 0x40000000    # 2.0f

    .end local v15    # "maxDescent":[I
    .local v23, "maxDescent":[I
    if-ne v12, v15, :cond_2

    move/from16 v24, v20

    goto :goto_0

    :cond_2
    const/16 v24, 0x0

    .line 1118
    .local v24, "isExactly":Z
    :goto_0
    const/high16 v25, -0x80000000

    .line 1119
    .local v25, "largestChildWidth":I
    const/16 v26, 0x0

    .line 1121
    .local v26, "usedExcessSpace":I
    const/16 v27, 0x0

    .line 1124
    .local v27, "nonSkippedChildCount":I
    move/from16 v28, v1

    move v1, v3

    move v3, v0

    const/4 v0, 0x0

    move/from16 v66, v25

    move/from16 v25, v4

    move/from16 v4, v66

    .local v0, "i":I
    .local v1, "weightedMaxHeight":I
    .local v3, "maxHeight":I
    .local v4, "largestChildWidth":I
    .local v25, "allFillParent":Z
    .local v28, "childState":I
    :goto_1
    const/16 v30, 0x0

    if-ge v0, v11, :cond_16

    .line 1125
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1126
    .local v15, "child":Landroid/view/View;
    if-nez v15, :cond_3

    .line 1127
    move/from16 v32, v1

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .end local v1    # "weightedMaxHeight":I
    .local v32, "weightedMaxHeight":I
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v29

    add-int v1, v1, v29

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1128
    nop

    .line 1124
    move/from16 v21, v6

    move/from16 v1, v32

    goto/16 :goto_f

    .line 1131
    .end local v32    # "weightedMaxHeight":I
    .restart local v1    # "weightedMaxHeight":I
    :cond_3
    move/from16 v32, v1

    .end local v1    # "weightedMaxHeight":I
    .restart local v32    # "weightedMaxHeight":I
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v33, v2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 1132
    .end local v2    # "alternativeMaxHeight":I
    .local v33, "alternativeMaxHeight":I
    invoke-virtual {v7, v15, v0}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1133
    nop

    .line 1124
    move/from16 v21, v6

    move/from16 v1, v32

    move/from16 v2, v33

    goto/16 :goto_f

    .line 1136
    :cond_4
    add-int/lit8 v27, v27, 0x1

    .line 1137
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1138
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1141
    :cond_5
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1143
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v31, v5, v1

    .line 1145
    .end local v5    # "totalWeight":F
    .local v31, "totalWeight":F
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v1, :cond_6

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v30

    if-lez v1, :cond_6

    move/from16 v1, v20

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    move/from16 v34, v1

    .line 1146
    .local v34, "useExcessSpace":Z
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v12, v1, :cond_9

    if-eqz v34, :cond_9

    .line 1150
    if-eqz v24, :cond_7

    .line 1151
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v35, v0

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .end local v0    # "i":I
    .local v35, "i":I
    add-int/2addr v5, v0

    add-int/2addr v1, v5

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_3

    .line 1153
    .end local v35    # "i":I
    .restart local v0    # "i":I
    :cond_7
    move/from16 v35, v0

    .end local v0    # "i":I
    .restart local v35    # "i":I
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1154
    .local v0, "totalLength":I
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1163
    .end local v0    # "totalLength":I
    :goto_3
    if-eqz v6, :cond_8

    .line 1164
    nop

    .line 1165
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1164
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 1166
    .local v0, "freeWidthSpec":I
    nop

    .line 1167
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1166
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    .line 1168
    .local v5, "freeHeightSpec":I
    invoke-virtual {v15, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1169
    .end local v0    # "freeWidthSpec":I
    .end local v5    # "freeHeightSpec":I
    nop

    .line 1213
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "maxHeight":I
    .end local v6    # "baselineAligned":Z
    .end local v32    # "weightedMaxHeight":I
    .end local v33    # "alternativeMaxHeight":I
    .end local v35    # "i":I
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v21, "baselineAligned":Z
    .local v37, "i":I
    .local v38, "weightedMaxHeight":I
    .local v40, "alternativeMaxHeight":I
    .local v41, "maxHeight":I
    :goto_4
    move-object v1, v2

    move/from16 v41, v3

    move/from16 v21, v6

    move/from16 v38, v32

    move/from16 v40, v33

    move/from16 v37, v35

    const/4 v9, -0x1

    goto/16 :goto_8

    .line 1170
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "baselineAligned":Z
    .end local v37    # "i":I
    .end local v38    # "weightedMaxHeight":I
    .end local v40    # "alternativeMaxHeight":I
    .end local v41    # "maxHeight":I
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "maxHeight":I
    .restart local v6    # "baselineAligned":Z
    .restart local v32    # "weightedMaxHeight":I
    .restart local v33    # "alternativeMaxHeight":I
    .restart local v35    # "i":I
    :cond_8
    const/16 v22, 0x1

    goto :goto_4

    .line 1173
    .end local v35    # "i":I
    .local v0, "i":I
    :cond_9
    move/from16 v35, v0

    .end local v0    # "i":I
    .restart local v35    # "i":I
    if-eqz v34, :cond_a

    .line 1179
    const/4 v0, -0x2

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1186
    :cond_a
    cmpl-float v0, v31, v30

    if-nez v0, :cond_b

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    move v5, v4

    move v4, v0

    .line 1187
    .local v4, "usedWidth":I
    .local v5, "largestChildWidth":I
    const/16 v36, 0x0

    move/from16 v1, v35

    move-object v0, v7

    .end local v35    # "i":I
    .local v1, "i":I
    move/from16 v37, v1

    move/from16 v38, v32

    move-object v1, v15

    .end local v1    # "i":I
    .end local v32    # "weightedMaxHeight":I
    .restart local v37    # "i":I
    .restart local v38    # "weightedMaxHeight":I
    move-object/from16 v39, v2

    move/from16 v40, v33

    move/from16 v2, v37

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "alternativeMaxHeight":I
    .local v39, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v40    # "alternativeMaxHeight":I
    move/from16 v41, v3

    move v3, v8

    .end local v3    # "maxHeight":I
    .restart local v41    # "maxHeight":I
    move v8, v5

    move v5, v9

    .end local v5    # "largestChildWidth":I
    .local v8, "largestChildWidth":I
    move/from16 v21, v6

    const/4 v9, -0x1

    move/from16 v6, v36

    .end local v6    # "baselineAligned":Z
    .restart local v21    # "baselineAligned":Z
    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1190
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1191
    .local v0, "childWidth":I
    if-eqz v34, :cond_c

    .line 1195
    move-object/from16 v1, v39

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1196
    .end local v39    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    add-int v26, v26, v0

    goto :goto_6

    .line 1199
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v39    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    move-object/from16 v1, v39

    .end local v39    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_6
    if-eqz v24, :cond_d

    .line 1200
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v0

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 1201
    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_7

    .line 1203
    :cond_d
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1204
    .local v2, "totalLength":I
    add-int v3, v2, v0

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 1205
    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1204
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1208
    .end local v2    # "totalLength":I
    :goto_7
    if-eqz v14, :cond_e

    .line 1209
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .end local v0    # "childWidth":I
    .end local v8    # "largestChildWidth":I
    .local v4, "largestChildWidth":I
    goto :goto_8

    .line 1213
    .end local v4    # "largestChildWidth":I
    .restart local v8    # "largestChildWidth":I
    :cond_e
    move v4, v8

    .end local v8    # "largestChildWidth":I
    .restart local v4    # "largestChildWidth":I
    :goto_8
    const/4 v0, 0x0

    .line 1214
    .local v0, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_f

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v2, v9, :cond_f

    .line 1218
    const/16 v18, 0x1

    .line 1219
    const/4 v0, 0x1

    .line 1222
    :cond_f
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1223
    .local v2, "margin":I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1224
    .local v3, "childHeight":I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v28

    invoke-static {v6, v5}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    .line 1226
    .end local v28    # "childState":I
    .local v5, "childState":I
    if-eqz v21, :cond_11

    .line 1227
    invoke-virtual {v15}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1228
    .local v6, "childBaseline":I
    if-eq v6, v9, :cond_11

    .line 1231
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v8, :cond_10

    iget v8, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_9

    :cond_10
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_9
    and-int/lit8 v8, v8, 0x70

    .line 1233
    .local v8, "gravity":I
    shr-int/lit8 v28, v8, 0x4

    const/16 v29, -0x2

    and-int/lit8 v28, v28, -0x2

    shr-int/lit8 v28, v28, 0x1

    .line 1236
    .local v28, "index":I
    aget v9, v10, v28

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v10, v28

    .line 1237
    aget v9, v23, v28

    move/from16 v42, v2

    sub-int v2, v3, v6

    .end local v2    # "margin":I
    .local v42, "margin":I
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v23, v28

    .end local v6    # "childBaseline":I
    .end local v8    # "gravity":I
    .end local v28    # "index":I
    goto :goto_a

    .line 1241
    .end local v42    # "margin":I
    .restart local v2    # "margin":I
    :cond_11
    move/from16 v42, v2

    .end local v2    # "margin":I
    .restart local v42    # "margin":I
    :goto_a
    move/from16 v2, v41

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1243
    .end local v41    # "maxHeight":I
    .local v2, "maxHeight":I
    if-eqz v25, :cond_12

    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_12

    move/from16 v6, v20

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    .line 1244
    .end local v25    # "allFillParent":Z
    .local v6, "allFillParent":Z
    :goto_b
    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v8, v8, v30

    if-lez v8, :cond_14

    .line 1249
    nop

    .line 1250
    if-eqz v0, :cond_13

    .line 1249
    move/from16 v8, v42

    goto :goto_c

    :cond_13
    move v8, v3

    :goto_c
    move/from16 v9, v38

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1256
    .end local v38    # "weightedMaxHeight":I
    .local v8, "weightedMaxHeight":I
    move/from16 v43, v0

    move/from16 v0, v40

    goto :goto_e

    .line 1252
    .end local v8    # "weightedMaxHeight":I
    .restart local v38    # "weightedMaxHeight":I
    :cond_14
    move/from16 v9, v38

    .line 1253
    .end local v38    # "weightedMaxHeight":I
    .local v9, "weightedMaxHeight":I
    if-eqz v0, :cond_15

    .line 1252
    move/from16 v8, v42

    goto :goto_d

    :cond_15
    move v8, v3

    :goto_d
    move/from16 v43, v0

    move/from16 v0, v40

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1256
    .end local v40    # "alternativeMaxHeight":I
    .local v0, "alternativeMaxHeight":I
    .local v43, "matchHeightLocally":Z
    move v8, v9

    .end local v9    # "weightedMaxHeight":I
    .restart local v8    # "weightedMaxHeight":I
    :goto_e
    move/from16 v9, v37

    invoke-virtual {v7, v15, v9}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v25

    .end local v37    # "i":I
    .local v9, "i":I
    add-int v1, v9, v25

    .line 1124
    .end local v3    # "childHeight":I
    .end local v9    # "i":I
    .end local v15    # "child":Landroid/view/View;
    .end local v34    # "useExcessSpace":Z
    .end local v42    # "margin":I
    .end local v43    # "matchHeightLocally":Z
    .local v1, "i":I
    move v3, v2

    move/from16 v28, v5

    move/from16 v25, v6

    move/from16 v5, v31

    move v2, v0

    move v0, v1

    move v1, v8

    .end local v6    # "allFillParent":Z
    .end local v8    # "weightedMaxHeight":I
    .end local v31    # "totalWeight":F
    .local v0, "i":I
    .local v1, "weightedMaxHeight":I
    .local v2, "alternativeMaxHeight":I
    .local v3, "maxHeight":I
    .local v5, "totalWeight":F
    .restart local v25    # "allFillParent":Z
    .local v28, "childState":I
    :goto_f
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v21

    move/from16 v8, p1

    move/from16 v9, p2

    const/high16 v15, 0x40000000    # 2.0f

    goto/16 :goto_1

    .line 1259
    .end local v0    # "i":I
    .end local v21    # "baselineAligned":Z
    .local v6, "baselineAligned":Z
    :cond_16
    move v9, v1

    move v0, v2

    move v2, v3

    move v8, v4

    move/from16 v21, v6

    move/from16 v6, v28

    .end local v1    # "weightedMaxHeight":I
    .end local v3    # "maxHeight":I
    .end local v4    # "largestChildWidth":I
    .end local v28    # "childState":I
    .local v0, "alternativeMaxHeight":I
    .local v2, "maxHeight":I
    .local v6, "childState":I
    .local v8, "largestChildWidth":I
    .local v9, "weightedMaxHeight":I
    .restart local v21    # "baselineAligned":Z
    if-lez v27, :cond_17

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1260
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v7, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v1, v3

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1265
    :cond_17
    aget v1, v10, v20

    const/4 v3, -0x1

    if-ne v1, v3, :cond_19

    const/4 v1, 0x0

    aget v4, v10, v1

    if-ne v4, v3, :cond_19

    aget v1, v10, v19

    if-ne v1, v3, :cond_19

    aget v1, v10, v17

    if-eq v1, v3, :cond_18

    goto :goto_10

    .line 1278
    :cond_18
    move/from16 v44, v6

    goto :goto_11

    .line 1269
    :cond_19
    :goto_10
    aget v1, v10, v17

    const/4 v3, 0x0

    aget v4, v10, v3

    aget v15, v10, v20

    aget v3, v10, v19

    .line 1271
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1270
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1269
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1272
    .local v1, "ascent":I
    aget v3, v23, v17

    const/4 v4, 0x0

    aget v15, v23, v4

    aget v4, v23, v20

    move/from16 v44, v6

    aget v6, v23, v19

    .line 1274
    .end local v6    # "childState":I
    .local v44, "childState":I
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1273
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1272
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1275
    .local v3, "descent":I
    add-int v4, v1, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1278
    .end local v1    # "ascent":I
    .end local v2    # "maxHeight":I
    .local v3, "maxHeight":I
    move v2, v3

    .end local v3    # "maxHeight":I
    .restart local v2    # "maxHeight":I
    :goto_11
    if-eqz v14, :cond_1e

    const/high16 v1, -0x80000000

    if-eq v12, v1, :cond_1a

    if-nez v12, :cond_1e

    .line 1280
    :cond_1a
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1282
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v11, :cond_1e

    .line 1283
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1284
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_1b

    .line 1285
    iget v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1286
    nop

    .line 1282
    move/from16 v45, v1

    goto :goto_13

    .line 1289
    :cond_1b
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_1c

    .line 1290
    invoke-virtual {v7, v3, v1}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v1, v4

    .line 1291
    goto :goto_14

    .line 1294
    :cond_1c
    nop

    .line 1295
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1296
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v24, :cond_1d

    .line 1297
    iget v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v15, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v15, v8

    move/from16 v45, v1

    iget v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .end local v1    # "i":I
    .local v45, "i":I
    add-int/2addr v15, v1

    .line 1298
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v6, v15

    iput v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_13

    .line 1300
    .end local v45    # "i":I
    .restart local v1    # "i":I
    :cond_1d
    move/from16 v45, v1

    .end local v1    # "i":I
    .restart local v45    # "i":I
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1301
    .local v1, "totalLength":I
    add-int v6, v1, v8

    iget v15, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v15

    iget v15, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v15

    .line 1302
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v15

    add-int/2addr v6, v15

    .line 1301
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1282
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v45    # "i":I
    .local v1, "i":I
    :goto_13
    move/from16 v1, v45

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1308
    .end local v1    # "i":I
    :cond_1e
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v4, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1310
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1313
    .local v1, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1316
    move v4, v8

    move/from16 v3, p1

    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v8

    .line 1317
    .local v4, "largestChildWidth":I
    .local v8, "widthSizeAndState":I
    const v6, 0xffffff

    and-int v1, v8, v6

    .line 1322
    iget v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v6, v1, v6

    .line 1323
    iget-boolean v15, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v15, :cond_1f

    const/4 v15, 0x0

    goto :goto_15

    :cond_1f
    move/from16 v15, v26

    :goto_15
    add-int/2addr v6, v15

    .line 1324
    .local v6, "remainingExcess":I
    if-nez v22, :cond_26

    sget-boolean v28, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v28, :cond_20

    if-eqz v6, :cond_21

    :cond_20
    cmpl-float v28, v5, v30

    if-lez v28, :cond_21

    .line 1326
    move/from16 v47, v1

    move/from16 v48, v2

    move/from16 v51, v5

    goto/16 :goto_18

    .line 1428
    :cond_21
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1432
    if-eqz v14, :cond_25

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v12, v15, :cond_25

    .line 1433
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_16
    move/from16 v15, v16

    .end local v16    # "i":I
    .local v15, "i":I
    if-ge v15, v11, :cond_25

    .line 1434
    move/from16 v46, v0

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1435
    .local v0, "child":Landroid/view/View;
    .local v46, "alternativeMaxHeight":I
    if-eqz v0, :cond_24

    move/from16 v47, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .end local v1    # "widthSize":I
    .local v47, "widthSize":I
    move/from16 v48, v2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_22

    .line 1436
    .end local v2    # "maxHeight":I
    .local v48, "maxHeight":I
    nop

    .line 1433
    move/from16 v51, v5

    goto :goto_17

    .line 1439
    :cond_22
    nop

    .line 1440
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1442
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1443
    .local v2, "childExtra":F
    cmpl-float v16, v2, v30

    if-lez v16, :cond_23

    .line 1444
    nop

    .line 1445
    move-object/from16 v49, v1

    move/from16 v50, v2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1446
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "childExtra":F
    .local v49, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v50, "childExtra":F
    move/from16 v51, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .end local v5    # "totalWeight":F
    .local v51, "totalWeight":F
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1444
    invoke-virtual {v0, v2, v5}, Landroid/view/View;->measure(II)V

    .end local v0    # "child":Landroid/view/View;
    .end local v49    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v50    # "childExtra":F
    goto :goto_17

    .line 1433
    .end local v51    # "totalWeight":F
    .restart local v5    # "totalWeight":F
    :cond_23
    move/from16 v51, v5

    .end local v5    # "totalWeight":F
    .restart local v51    # "totalWeight":F
    goto :goto_17

    .end local v47    # "widthSize":I
    .end local v48    # "maxHeight":I
    .end local v51    # "totalWeight":F
    .local v1, "widthSize":I
    .local v2, "maxHeight":I
    .restart local v5    # "totalWeight":F
    :cond_24
    move/from16 v47, v1

    move/from16 v48, v2

    move/from16 v51, v5

    .end local v1    # "widthSize":I
    .end local v2    # "maxHeight":I
    .end local v5    # "totalWeight":F
    .restart local v47    # "widthSize":I
    .restart local v48    # "maxHeight":I
    .restart local v51    # "totalWeight":F
    :goto_17
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .restart local v16    # "i":I
    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v5, v51

    goto :goto_16

    .line 1453
    .end local v16    # "i":I
    .end local v46    # "alternativeMaxHeight":I
    .end local v47    # "widthSize":I
    .end local v48    # "maxHeight":I
    .end local v51    # "totalWeight":F
    .local v0, "alternativeMaxHeight":I
    .restart local v1    # "widthSize":I
    .restart local v2    # "maxHeight":I
    .restart local v5    # "totalWeight":F
    :cond_25
    move/from16 v46, v0

    move/from16 v47, v1

    move/from16 v48, v2

    move/from16 v51, v5

    .end local v0    # "alternativeMaxHeight":I
    .end local v1    # "widthSize":I
    .end local v2    # "maxHeight":I
    .end local v5    # "totalWeight":F
    .restart local v46    # "alternativeMaxHeight":I
    .restart local v47    # "widthSize":I
    .restart local v48    # "maxHeight":I
    .restart local v51    # "totalWeight":F
    move/from16 v57, v4

    move v3, v6

    move/from16 v52, v9

    move/from16 v54, v11

    move/from16 v53, v14

    move/from16 v2, v46

    move/from16 v15, v48

    move/from16 v6, p2

    goto/16 :goto_26

    .line 1326
    .end local v46    # "alternativeMaxHeight":I
    .end local v47    # "widthSize":I
    .end local v48    # "maxHeight":I
    .end local v51    # "totalWeight":F
    .restart local v0    # "alternativeMaxHeight":I
    .restart local v1    # "widthSize":I
    .restart local v2    # "maxHeight":I
    .restart local v5    # "totalWeight":F
    :cond_26
    move/from16 v47, v1

    move/from16 v48, v2

    move/from16 v51, v5

    .end local v1    # "widthSize":I
    .end local v2    # "maxHeight":I
    .end local v5    # "totalWeight":F
    .restart local v47    # "widthSize":I
    .restart local v48    # "maxHeight":I
    .restart local v51    # "totalWeight":F
    :goto_18
    iget v1, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v1, v1, v30

    if-lez v1, :cond_27

    iget v5, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    goto :goto_19

    :cond_27
    move/from16 v5, v51

    :goto_19
    move v1, v5

    .line 1328
    .local v1, "remainingWeightSum":F
    const/4 v2, -0x1

    aput v2, v10, v17

    aput v2, v10, v19

    aput v2, v10, v20

    const/4 v5, 0x0

    aput v2, v10, v5

    .line 1329
    aput v2, v23, v17

    aput v2, v23, v19

    aput v2, v23, v20

    aput v2, v23, v5

    .line 1330
    const/4 v15, -0x1

    .line 1332
    .end local v48    # "maxHeight":I
    .local v15, "maxHeight":I
    iput v5, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1334
    move v2, v0

    move/from16 v5, v44

    const/4 v0, 0x0

    .end local v44    # "childState":I
    .local v0, "i":I
    .local v2, "alternativeMaxHeight":I
    .local v5, "childState":I
    :goto_1a
    if-ge v0, v11, :cond_36

    .line 1335
    move/from16 v52, v9

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1336
    .local v9, "child":Landroid/view/View;
    .local v52, "weightedMaxHeight":I
    if-eqz v9, :cond_35

    move/from16 v53, v14

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v14

    .end local v14    # "useLargestChild":Z
    .local v53, "useLargestChild":Z
    const/16 v3, 0x8

    if-ne v14, v3, :cond_28

    .line 1337
    nop

    .line 1334
    move/from16 v57, v4

    move v3, v6

    move/from16 v54, v11

    move/from16 v6, p2

    const/16 v28, -0x2

    goto/16 :goto_24

    .line 1340
    :cond_28
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1341
    .local v14, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1342
    .local v3, "childWeight":F
    cmpl-float v28, v3, v30

    if-lez v28, :cond_2c

    .line 1343
    move/from16 v54, v11

    int-to-float v11, v6

    .end local v11    # "count":I
    .local v54, "count":I
    mul-float/2addr v11, v3

    div-float/2addr v11, v1

    float-to-int v11, v11

    .line 1344
    .local v11, "share":I
    sub-int/2addr v6, v11

    .line 1345
    sub-float/2addr v1, v3

    .line 1348
    move/from16 v55, v1

    iget-boolean v1, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .end local v1    # "remainingWeightSum":F
    .local v55, "remainingWeightSum":F
    if-eqz v1, :cond_29

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_29

    .line 1349
    move v1, v4

    .local v1, "childWidth":I
    :goto_1b
    goto :goto_1c

    .line 1350
    .end local v1    # "childWidth":I
    :cond_29
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v1, :cond_2b

    iget-boolean v1, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v1, :cond_2a

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v12, v1, :cond_2b

    .line 1354
    :cond_2a
    move v1, v11

    goto :goto_1b

    .line 1358
    :cond_2b
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v11

    .line 1361
    .restart local v1    # "childWidth":I
    :goto_1c
    nop

    .line 1362
    move/from16 v56, v3

    move/from16 v57, v4

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1361
    .end local v3    # "childWeight":F
    .end local v4    # "largestChildWidth":I
    .local v56, "childWeight":F
    .local v57, "largestChildWidth":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1363
    .local v4, "childWidthMeasureSpec":I
    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v58, v1

    iget v1, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    .end local v1    # "childWidth":I
    .local v58, "childWidth":I
    add-int/2addr v3, v1

    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v1

    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v1

    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v59, v6

    move/from16 v60, v11

    move/from16 v6, p2

    const/4 v11, -0x1

    invoke-static {v6, v3, v1}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 1366
    .end local v6    # "remainingExcess":I
    .end local v11    # "share":I
    .local v1, "childHeightMeasureSpec":I
    .local v59, "remainingExcess":I
    .local v60, "share":I
    invoke-virtual {v9, v4, v1}, Landroid/view/View;->measure(II)V

    .line 1369
    nop

    .line 1370
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v28, -0x1000000

    and-int v3, v3, v28

    .line 1369
    invoke-static {v5, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v5

    .line 1373
    .end local v1    # "childHeightMeasureSpec":I
    .end local v4    # "childWidthMeasureSpec":I
    .end local v58    # "childWidth":I
    .end local v60    # "share":I
    move/from16 v3, v59

    goto :goto_1d

    .end local v54    # "count":I
    .end local v55    # "remainingWeightSum":F
    .end local v56    # "childWeight":F
    .end local v57    # "largestChildWidth":I
    .end local v59    # "remainingExcess":I
    .local v1, "remainingWeightSum":F
    .restart local v3    # "childWeight":F
    .local v4, "largestChildWidth":I
    .restart local v6    # "remainingExcess":I
    .local v11, "count":I
    :cond_2c
    move/from16 v56, v3

    move/from16 v57, v4

    move v3, v6

    move/from16 v54, v11

    move/from16 v6, p2

    const/4 v11, -0x1

    move/from16 v55, v1

    .end local v1    # "remainingWeightSum":F
    .end local v4    # "largestChildWidth":I
    .end local v6    # "remainingExcess":I
    .end local v11    # "count":I
    .local v3, "remainingExcess":I
    .restart local v54    # "count":I
    .restart local v55    # "remainingWeightSum":F
    .restart local v56    # "childWeight":F
    .restart local v57    # "largestChildWidth":I
    :goto_1d
    if-eqz v24, :cond_2d

    .line 1374
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v11

    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v11

    .line 1375
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int/2addr v4, v11

    add-int/2addr v1, v4

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1e

    .line 1377
    :cond_2d
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1378
    .local v1, "totalLength":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v11

    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v11

    .line 1379
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int/2addr v4, v11

    .line 1378
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1382
    .end local v1    # "totalLength":I
    :goto_1e
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v13, v1, :cond_2e

    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2e

    move/from16 v1, v20

    goto :goto_1f

    :cond_2e
    const/4 v1, 0x0

    .line 1385
    .local v1, "matchHeightLocally":Z
    :goto_1f
    iget v4, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v11, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v11

    .line 1386
    .local v4, "margin":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v4

    .line 1387
    .local v11, "childHeight":I
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1388
    nop

    .line 1389
    if-eqz v1, :cond_2f

    .line 1388
    move/from16 v61, v1

    move v1, v4

    goto :goto_20

    :cond_2f
    move/from16 v61, v1

    move v1, v11

    .end local v1    # "matchHeightLocally":Z
    .local v61, "matchHeightLocally":Z
    :goto_20
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1391
    .end local v2    # "alternativeMaxHeight":I
    .local v1, "alternativeMaxHeight":I
    if-eqz v25, :cond_30

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v62, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_31

    .end local v1    # "alternativeMaxHeight":I
    .local v62, "alternativeMaxHeight":I
    move/from16 v1, v20

    goto :goto_21

    .end local v62    # "alternativeMaxHeight":I
    .restart local v1    # "alternativeMaxHeight":I
    :cond_30
    move/from16 v62, v1

    .end local v1    # "alternativeMaxHeight":I
    .restart local v62    # "alternativeMaxHeight":I
    :cond_31
    const/4 v1, 0x0

    .line 1393
    .end local v25    # "allFillParent":Z
    .local v1, "allFillParent":Z
    :goto_21
    if-eqz v21, :cond_34

    .line 1394
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 1395
    .local v2, "childBaseline":I
    move/from16 v63, v1

    const/4 v1, -0x1

    if-eq v2, v1, :cond_33

    .line 1397
    .end local v1    # "allFillParent":Z
    .local v63, "allFillParent":Z
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v1, :cond_32

    iget v1, v7, Landroid/widget/LinearLayout;->mGravity:I

    goto :goto_22

    :cond_32
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_22
    and-int/lit8 v1, v1, 0x70

    .line 1399
    .local v1, "gravity":I
    shr-int/lit8 v25, v1, 0x4

    const/16 v28, -0x2

    and-int/lit8 v25, v25, -0x2

    shr-int/lit8 v25, v25, 0x1

    .line 1402
    .local v25, "index":I
    move/from16 v64, v1

    aget v1, v10, v25

    .end local v1    # "gravity":I
    .local v64, "gravity":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v10, v25

    .line 1403
    aget v1, v23, v25

    move/from16 v65, v3

    sub-int v3, v11, v2

    .end local v3    # "remainingExcess":I
    .local v65, "remainingExcess":I
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v23, v25

    .end local v2    # "childBaseline":I
    .end local v4    # "margin":I
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "childHeight":I
    .end local v14    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "index":I
    .end local v56    # "childWeight":F
    .end local v61    # "matchHeightLocally":Z
    .end local v64    # "gravity":I
    goto :goto_23

    .line 1334
    .end local v65    # "remainingExcess":I
    .restart local v3    # "remainingExcess":I
    :cond_33
    move/from16 v65, v3

    const/16 v28, -0x2

    .end local v3    # "remainingExcess":I
    .restart local v65    # "remainingExcess":I
    goto :goto_23

    .end local v63    # "allFillParent":Z
    .end local v65    # "remainingExcess":I
    .local v1, "allFillParent":Z
    .restart local v3    # "remainingExcess":I
    :cond_34
    move/from16 v63, v1

    move/from16 v65, v3

    const/16 v28, -0x2

    .end local v1    # "allFillParent":Z
    .end local v3    # "remainingExcess":I
    .restart local v63    # "allFillParent":Z
    .restart local v65    # "remainingExcess":I
    :goto_23
    move/from16 v1, v55

    move/from16 v2, v62

    move/from16 v25, v63

    goto :goto_25

    .end local v53    # "useLargestChild":Z
    .end local v54    # "count":I
    .end local v55    # "remainingWeightSum":F
    .end local v57    # "largestChildWidth":I
    .end local v62    # "alternativeMaxHeight":I
    .end local v63    # "allFillParent":Z
    .end local v65    # "remainingExcess":I
    .local v1, "remainingWeightSum":F
    .local v2, "alternativeMaxHeight":I
    .local v4, "largestChildWidth":I
    .restart local v6    # "remainingExcess":I
    .local v11, "count":I
    .local v14, "useLargestChild":Z
    .local v25, "allFillParent":Z
    :cond_35
    move/from16 v57, v4

    move v3, v6

    move/from16 v54, v11

    move/from16 v53, v14

    move/from16 v6, p2

    const/16 v28, -0x2

    .end local v4    # "largestChildWidth":I
    .end local v6    # "remainingExcess":I
    .end local v11    # "count":I
    .end local v14    # "useLargestChild":Z
    .restart local v3    # "remainingExcess":I
    .restart local v53    # "useLargestChild":Z
    .restart local v54    # "count":I
    .restart local v57    # "largestChildWidth":I
    :goto_24
    move/from16 v65, v3

    .end local v3    # "remainingExcess":I
    .restart local v65    # "remainingExcess":I
    :goto_25
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v52

    move/from16 v14, v53

    move/from16 v11, v54

    move/from16 v4, v57

    move/from16 v6, v65

    move/from16 v3, p1

    goto/16 :goto_1a

    .line 1410
    .end local v0    # "i":I
    .end local v52    # "weightedMaxHeight":I
    .end local v53    # "useLargestChild":Z
    .end local v54    # "count":I
    .end local v57    # "largestChildWidth":I
    .end local v65    # "remainingExcess":I
    .restart local v4    # "largestChildWidth":I
    .restart local v6    # "remainingExcess":I
    .local v9, "weightedMaxHeight":I
    .restart local v11    # "count":I
    .restart local v14    # "useLargestChild":Z
    :cond_36
    move/from16 v57, v4

    move v3, v6

    move/from16 v52, v9

    move/from16 v54, v11

    move/from16 v53, v14

    move/from16 v6, p2

    .end local v4    # "largestChildWidth":I
    .end local v6    # "remainingExcess":I
    .end local v9    # "weightedMaxHeight":I
    .end local v11    # "count":I
    .end local v14    # "useLargestChild":Z
    .restart local v3    # "remainingExcess":I
    .restart local v52    # "weightedMaxHeight":I
    .restart local v53    # "useLargestChild":Z
    .restart local v54    # "count":I
    .restart local v57    # "largestChildWidth":I
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v4, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v9, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v4, v9

    add-int/2addr v0, v4

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1415
    aget v0, v10, v20

    const/4 v4, -0x1

    if-ne v0, v4, :cond_37

    const/4 v0, 0x0

    aget v9, v10, v0

    if-ne v9, v4, :cond_37

    aget v0, v10, v19

    if-ne v0, v4, :cond_37

    aget v0, v10, v17

    if-eq v0, v4, :cond_38

    .line 1419
    :cond_37
    aget v0, v10, v17

    const/4 v4, 0x0

    aget v9, v10, v4

    aget v11, v10, v20

    aget v14, v10, v19

    .line 1421
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1420
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1419
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1422
    .local v0, "ascent":I
    aget v9, v23, v17

    aget v4, v23, v4

    aget v11, v23, v20

    aget v14, v23, v19

    .line 1424
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1423
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1422
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1425
    .local v4, "descent":I
    add-int v9, v0, v4

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1427
    .end local v1    # "remainingWeightSum":F
    .end local v4    # "descent":I
    .end local v15    # "maxHeight":I
    .local v0, "maxHeight":I
    move v15, v0

    .line 1453
    .end local v0    # "maxHeight":I
    .restart local v15    # "maxHeight":I
    :cond_38
    move/from16 v44, v5

    .end local v5    # "childState":I
    .restart local v44    # "childState":I
    :goto_26
    if-nez v25, :cond_39

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_39

    .line 1454
    move v15, v2

    .line 1457
    :cond_39
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v1, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 1460
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1462
    .end local v15    # "maxHeight":I
    .restart local v0    # "maxHeight":I
    const/high16 v1, -0x1000000

    and-int v1, v44, v1

    or-int/2addr v1, v8

    shl-int/lit8 v4, v44, 0x10

    .line 1463
    invoke-static {v0, v6, v4}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 1462
    invoke-virtual {v7, v1, v4}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1466
    if-eqz v18, :cond_3a

    .line 1467
    move/from16 v4, v54

    move/from16 v1, p1

    invoke-direct {v7, v4, v1}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    goto :goto_27

    .line 1469
    :cond_3a
    move/from16 v4, v54

    move/from16 v1, p1

    .end local v54    # "count":I
    .local v4, "count":I
    :goto_27
    return-void
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 1516
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 63
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 756
    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 759
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 760
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 761
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 762
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 764
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 766
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 767
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 769
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 770
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 772
    .local v14, "skippedMeasure":Z
    iget v15, v7, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 773
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 775
    .local v10, "useLargestChild":Z
    const/high16 v17, -0x80000000

    .line 776
    .local v17, "largestChildHeight":I
    const/16 v18, 0x0

    .line 778
    .local v18, "consumedExcessSpace":I
    const/16 v19, 0x0

    .line 781
    .local v19, "nonSkippedChildCount":I
    move/from16 v20, v6

    move v6, v1

    move v1, v0

    const/4 v0, 0x0

    move/from16 v61, v3

    move v3, v2

    move/from16 v2, v61

    move/from16 v62, v17

    move/from16 v17, v4

    move/from16 v4, v62

    .local v0, "i":I
    .local v1, "maxWidth":I
    .local v2, "weightedMaxWidth":I
    .local v3, "alternativeMaxWidth":I
    .local v4, "largestChildHeight":I
    .local v6, "childState":I
    .local v17, "allFillParent":Z
    .local v20, "matchWidth":Z
    :goto_0
    move/from16 v21, v4

    .end local v4    # "largestChildHeight":I
    .local v21, "largestChildHeight":I
    const/16 v23, 0x0

    const/16 v25, 0x1

    if-ge v0, v11, :cond_13

    .line 782
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 783
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    .line 784
    move/from16 v27, v1

    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .end local v1    # "maxWidth":I
    .local v27, "maxWidth":I
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v22

    add-int v1, v1, v22

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 785
    nop

    .line 781
    move/from16 v36, v11

    move/from16 v35, v13

    move/from16 v4, v21

    move/from16 v1, v27

    goto/16 :goto_c

    .line 788
    .end local v27    # "maxWidth":I
    .restart local v1    # "maxWidth":I
    :cond_0
    move/from16 v27, v1

    .end local v1    # "maxWidth":I
    .restart local v27    # "maxWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v28, v2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 789
    .end local v2    # "weightedMaxWidth":I
    .local v28, "weightedMaxWidth":I
    invoke-virtual {v7, v4, v0}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 790
    nop

    .line 781
    move/from16 v36, v11

    move/from16 v35, v13

    move/from16 v4, v21

    move/from16 v1, v27

    move/from16 v2, v28

    goto/16 :goto_c

    .line 793
    :cond_1
    add-int/lit8 v19, v19, 0x1

    .line 794
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 795
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v2, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v1, v2

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 798
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 800
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v24, v5, v1

    .line 802
    .end local v5    # "totalWeight":F
    .local v24, "totalWeight":F
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v1, :cond_3

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v1, v1, v23

    if-lez v1, :cond_3

    move/from16 v1, v25

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    move/from16 v29, v1

    .line 803
    .local v29, "useExcessSpace":Z
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v13, v5, :cond_4

    if-eqz v29, :cond_4

    .line 807
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 808
    .local v1, "totalLength":I
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v1

    move/from16 v30, v0

    iget v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .end local v0    # "i":I
    .local v30, "i":I
    add-int/2addr v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 809
    const/4 v14, 0x1

    .line 810
    .end local v1    # "totalLength":I
    nop

    .line 850
    move-object v1, v2

    move/from16 v37, v3

    move-object v8, v4

    move/from16 v38, v6

    move/from16 v36, v11

    move/from16 v35, v13

    move/from16 v32, v14

    move/from16 v11, v21

    move/from16 v14, v27

    move/from16 v34, v28

    move/from16 v31, v30

    const/high16 v13, 0x40000000    # 2.0f

    goto/16 :goto_4

    .line 811
    .end local v30    # "i":I
    .restart local v0    # "i":I
    :cond_4
    move/from16 v30, v0

    .end local v0    # "i":I
    .restart local v30    # "i":I
    if-eqz v29, :cond_5

    .line 817
    const/4 v0, -0x2

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 824
    :cond_5
    cmpl-float v0, v24, v23

    if-nez v0, :cond_6

    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    move v5, v6

    move v6, v0

    .line 825
    .local v5, "childState":I
    .local v6, "usedHeight":I
    const/16 v26, 0x0

    move/from16 v1, v30

    move-object v0, v7

    .end local v30    # "i":I
    .local v1, "i":I
    move/from16 v31, v1

    move/from16 v32, v14

    move/from16 v14, v27

    move-object v1, v4

    .end local v1    # "i":I
    .end local v27    # "maxWidth":I
    .local v14, "maxWidth":I
    .local v31, "i":I
    .local v32, "skippedMeasure":Z
    move-object/from16 v33, v2

    move/from16 v34, v28

    move/from16 v2, v31

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "weightedMaxWidth":I
    .local v33, "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v34, "weightedMaxWidth":I
    move/from16 v35, v13

    move v13, v3

    move v3, v8

    .end local v3    # "alternativeMaxWidth":I
    .local v13, "alternativeMaxWidth":I
    .local v35, "heightMode":I
    move-object v8, v4

    move/from16 v36, v11

    move/from16 v37, v13

    move/from16 v11, v21

    const/high16 v13, 0x40000000    # 2.0f

    move/from16 v4, v26

    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "alternativeMaxWidth":I
    .end local v21    # "largestChildHeight":I
    .local v8, "child":Landroid/view/View;
    .local v11, "largestChildHeight":I
    .local v36, "count":I
    .local v37, "alternativeMaxWidth":I
    move/from16 v38, v5

    move v5, v9

    .end local v5    # "childState":I
    .local v38, "childState":I
    invoke-virtual/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 828
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 829
    .local v0, "childHeight":I
    if-eqz v29, :cond_7

    .line 833
    move-object/from16 v1, v33

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 834
    .end local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    add-int v18, v18, v0

    goto :goto_3

    .line 837
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    move-object/from16 v1, v33

    .end local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_3
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 838
    .local v2, "totalLength":I
    add-int v3, v2, v0

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 839
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    .line 838
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 841
    if-eqz v10, :cond_8

    .line 842
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 850
    .end local v0    # "childHeight":I
    .end local v2    # "totalLength":I
    .end local v6    # "usedHeight":I
    .end local v11    # "largestChildHeight":I
    .local v4, "largestChildHeight":I
    move v11, v4

    .end local v4    # "largestChildHeight":I
    .restart local v11    # "largestChildHeight":I
    :cond_8
    :goto_4
    if-ltz v15, :cond_9

    move/from16 v0, v31

    add-int/lit8 v2, v0, 0x1

    .end local v31    # "i":I
    .local v0, "i":I
    if-ne v15, v2, :cond_a

    .line 851
    iget v2, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iput v2, v7, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    goto :goto_5

    .line 857
    .end local v0    # "i":I
    .restart local v31    # "i":I
    :cond_9
    move/from16 v0, v31

    .end local v31    # "i":I
    .restart local v0    # "i":I
    :cond_a
    :goto_5
    if-ge v0, v15, :cond_c

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v2, v2, v23

    if-gtz v2, :cond_b

    goto :goto_6

    .line 858
    :cond_b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 864
    :cond_c
    :goto_6
    const/4 v2, 0x0

    .line 865
    .local v2, "matchWidthLocally":Z
    if-eq v12, v13, :cond_d

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    .line 870
    const/16 v20, 0x1

    .line 871
    const/4 v2, 0x1

    goto :goto_7

    .line 874
    :cond_d
    const/4 v4, -0x1

    :cond_e
    :goto_7
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 875
    .local v3, "margin":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 876
    .local v5, "measuredWidth":I
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 877
    .end local v14    # "maxWidth":I
    .local v6, "maxWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v13

    move/from16 v14, v38

    invoke-static {v14, v13}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v13

    .line 879
    .end local v38    # "childState":I
    .local v13, "childState":I
    if-eqz v17, :cond_f

    iget v14, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v14, v4, :cond_f

    move/from16 v4, v25

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    .line 880
    .end local v17    # "allFillParent":Z
    .local v4, "allFillParent":Z
    :goto_8
    iget v14, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v14, v14, v23

    if-lez v14, :cond_11

    .line 885
    nop

    .line 886
    if-eqz v2, :cond_10

    .line 885
    move v14, v3

    goto :goto_9

    :cond_10
    move v14, v5

    :goto_9
    move/from16 v39, v4

    move/from16 v4, v34

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 892
    .end local v34    # "weightedMaxWidth":I
    .local v4, "weightedMaxWidth":I
    .local v39, "allFillParent":Z
    move/from16 v40, v13

    move/from16 v13, v37

    goto :goto_b

    .line 888
    .end local v39    # "allFillParent":Z
    .local v4, "allFillParent":Z
    .restart local v34    # "weightedMaxWidth":I
    :cond_11
    move/from16 v39, v4

    move/from16 v4, v34

    .line 889
    .end local v34    # "weightedMaxWidth":I
    .local v4, "weightedMaxWidth":I
    .restart local v39    # "allFillParent":Z
    if-eqz v2, :cond_12

    .line 888
    move v14, v3

    goto :goto_a

    :cond_12
    move v14, v5

    :goto_a
    move/from16 v40, v13

    move/from16 v13, v37

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 892
    .end local v37    # "alternativeMaxWidth":I
    .local v13, "alternativeMaxWidth":I
    .local v40, "childState":I
    :goto_b
    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v14

    add-int/2addr v0, v14

    .line 781
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "matchWidthLocally":Z
    .end local v3    # "margin":I
    .end local v5    # "measuredWidth":I
    .end local v8    # "child":Landroid/view/View;
    .end local v29    # "useExcessSpace":Z
    move v2, v4

    move v1, v6

    move v4, v11

    move v3, v13

    move/from16 v5, v24

    move/from16 v14, v32

    move/from16 v17, v39

    move/from16 v6, v40

    .end local v11    # "largestChildHeight":I
    .end local v13    # "alternativeMaxWidth":I
    .end local v24    # "totalWeight":F
    .end local v32    # "skippedMeasure":Z
    .end local v39    # "allFillParent":Z
    .end local v40    # "childState":I
    .local v1, "maxWidth":I
    .local v2, "weightedMaxWidth":I
    .local v3, "alternativeMaxWidth":I
    .local v4, "largestChildHeight":I
    .local v5, "totalWeight":F
    .local v6, "childState":I
    .local v14, "skippedMeasure":Z
    .restart local v17    # "allFillParent":Z
    :goto_c
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, v35

    move/from16 v11, v36

    move/from16 v8, p1

    goto/16 :goto_0

    .line 895
    .end local v0    # "i":I
    .end local v4    # "largestChildHeight":I
    .end local v35    # "heightMode":I
    .end local v36    # "count":I
    .local v11, "count":I
    .local v13, "heightMode":I
    .restart local v21    # "largestChildHeight":I
    :cond_13
    move v4, v2

    move/from16 v36, v11

    move/from16 v35, v13

    move/from16 v32, v14

    move/from16 v11, v21

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, -0x1

    move v14, v1

    move v13, v3

    move v1, v6

    .end local v2    # "weightedMaxWidth":I
    .end local v3    # "alternativeMaxWidth":I
    .end local v6    # "childState":I
    .end local v21    # "largestChildHeight":I
    .local v1, "childState":I
    .local v4, "weightedMaxWidth":I
    .local v11, "largestChildHeight":I
    .local v13, "alternativeMaxWidth":I
    .local v14, "maxWidth":I
    .restart local v32    # "skippedMeasure":Z
    .restart local v35    # "heightMode":I
    .restart local v36    # "count":I
    if-lez v19, :cond_14

    move/from16 v3, v36

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    .end local v36    # "count":I
    .local v3, "count":I
    if-eqz v6, :cond_15

    .line 896
    iget v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v8, v7, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v6, v8

    iput v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 899
    .end local v3    # "count":I
    .restart local v36    # "count":I
    :cond_14
    move/from16 v3, v36

    .end local v36    # "count":I
    .restart local v3    # "count":I
    :cond_15
    :goto_d
    if-eqz v10, :cond_1b

    const/high16 v6, -0x80000000

    move/from16 v8, v35

    if-eq v8, v6, :cond_17

    .end local v35    # "heightMode":I
    .local v8, "heightMode":I
    if-nez v8, :cond_16

    goto :goto_e

    .line 925
    :cond_16
    move/from16 v41, v1

    goto :goto_12

    .line 901
    :cond_17
    :goto_e
    const/4 v6, 0x0

    iput v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 903
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_f
    if-ge v6, v3, :cond_1a

    .line 904
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 905
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_18

    .line 906
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 907
    nop

    .line 903
    move/from16 v41, v1

    goto :goto_10

    .line 910
    :cond_18
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    move/from16 v41, v1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_19

    .line 911
    .end local v1    # "childState":I
    .local v41, "childState":I
    invoke-virtual {v7, v2, v6}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v6, v0

    .line 912
    nop

    .line 903
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "i":I
    .local v42, "i":I
    :goto_10
    move/from16 v42, v6

    goto :goto_11

    .line 915
    .end local v42    # "i":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v6    # "i":I
    :cond_19
    nop

    .line 916
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 918
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 919
    .local v1, "totalLength":I
    add-int v21, v1, v11

    move/from16 v42, v6

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .end local v6    # "i":I
    .restart local v42    # "i":I
    add-int v21, v21, v6

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v21, v21, v6

    .line 920
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int v6, v21, v6

    .line 919
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 903
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "totalLength":I
    .end local v2    # "child":Landroid/view/View;
    :goto_11
    add-int/lit8 v6, v42, 0x1

    .end local v42    # "i":I
    .restart local v6    # "i":I
    move/from16 v1, v41

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, -0x1

    goto :goto_f

    .line 925
    .end local v6    # "i":I
    .end local v41    # "childState":I
    .local v1, "childState":I
    :cond_1a
    move/from16 v41, v1

    .end local v1    # "childState":I
    .restart local v41    # "childState":I
    goto :goto_12

    .end local v8    # "heightMode":I
    .end local v41    # "childState":I
    .restart local v1    # "childState":I
    .restart local v35    # "heightMode":I
    :cond_1b
    move/from16 v41, v1

    move/from16 v8, v35

    .end local v1    # "childState":I
    .end local v35    # "heightMode":I
    .restart local v8    # "heightMode":I
    .restart local v41    # "childState":I
    :goto_12
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v1, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v2, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 927
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 930
    .local v0, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 933
    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 934
    .local v2, "heightSizeAndState":I
    const v1, 0xffffff

    and-int v0, v2, v1

    .line 938
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v1, v0, v1

    .line 939
    iget-boolean v6, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v6, :cond_1c

    const/4 v6, 0x0

    goto :goto_13

    :cond_1c
    move/from16 v6, v18

    :goto_13
    add-int/2addr v1, v6

    .line 940
    .local v1, "remainingExcess":I
    if-nez v32, :cond_23

    sget-boolean v6, Landroid/widget/LinearLayout;->sRemeasureWeightedChildren:Z

    if-nez v6, :cond_1d

    if-eqz v1, :cond_1e

    :cond_1d
    cmpl-float v6, v5, v23

    if-lez v6, :cond_1e

    .line 942
    move/from16 v43, v0

    move/from16 v44, v1

    move/from16 v45, v4

    move/from16 v48, v5

    goto/16 :goto_16

    .line 1006
    :cond_1e
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1012
    .end local v13    # "alternativeMaxWidth":I
    .local v6, "alternativeMaxWidth":I
    if-eqz v10, :cond_22

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v8, v13, :cond_22

    .line 1013
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_14
    move/from16 v13, v16

    .end local v16    # "i":I
    .local v13, "i":I
    if-ge v13, v3, :cond_22

    .line 1014
    move/from16 v43, v0

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1015
    .local v0, "child":Landroid/view/View;
    .local v43, "heightSize":I
    if-eqz v0, :cond_21

    move/from16 v44, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .end local v1    # "remainingExcess":I
    .local v44, "remainingExcess":I
    move/from16 v45, v4

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1f

    .line 1016
    .end local v4    # "weightedMaxWidth":I
    .local v45, "weightedMaxWidth":I
    nop

    .line 1013
    move/from16 v48, v5

    goto :goto_15

    .line 1019
    :cond_1f
    nop

    .line 1020
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1022
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1023
    .local v4, "childExtra":F
    cmpl-float v16, v4, v23

    if-lez v16, :cond_20

    .line 1024
    nop

    .line 1025
    move-object/from16 v46, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .local v46, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v47, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1027
    .end local v4    # "childExtra":F
    .local v47, "childExtra":F
    move/from16 v48, v5

    invoke-static {v11, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1024
    .end local v5    # "totalWeight":F
    .local v48, "totalWeight":F
    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    .end local v0    # "child":Landroid/view/View;
    .end local v46    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v47    # "childExtra":F
    goto :goto_15

    .line 1013
    .end local v48    # "totalWeight":F
    .restart local v5    # "totalWeight":F
    :cond_20
    move/from16 v48, v5

    .end local v5    # "totalWeight":F
    .restart local v48    # "totalWeight":F
    goto :goto_15

    .end local v44    # "remainingExcess":I
    .end local v45    # "weightedMaxWidth":I
    .end local v48    # "totalWeight":F
    .local v1, "remainingExcess":I
    .local v4, "weightedMaxWidth":I
    .restart local v5    # "totalWeight":F
    :cond_21
    move/from16 v44, v1

    move/from16 v45, v4

    move/from16 v48, v5

    .end local v1    # "remainingExcess":I
    .end local v4    # "weightedMaxWidth":I
    .end local v5    # "totalWeight":F
    .restart local v44    # "remainingExcess":I
    .restart local v45    # "weightedMaxWidth":I
    .restart local v48    # "totalWeight":F
    :goto_15
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "i":I
    .restart local v16    # "i":I
    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v4, v45

    move/from16 v5, v48

    goto :goto_14

    .line 1034
    .end local v16    # "i":I
    .end local v43    # "heightSize":I
    .end local v44    # "remainingExcess":I
    .end local v45    # "weightedMaxWidth":I
    .end local v48    # "totalWeight":F
    .local v0, "heightSize":I
    .restart local v1    # "remainingExcess":I
    .restart local v4    # "weightedMaxWidth":I
    .restart local v5    # "totalWeight":F
    :cond_22
    move/from16 v43, v0

    move/from16 v44, v1

    move/from16 v45, v4

    move/from16 v48, v5

    .end local v0    # "heightSize":I
    .end local v1    # "remainingExcess":I
    .end local v4    # "weightedMaxWidth":I
    .end local v5    # "totalWeight":F
    .restart local v43    # "heightSize":I
    .restart local v44    # "remainingExcess":I
    .restart local v45    # "weightedMaxWidth":I
    .restart local v48    # "totalWeight":F
    move/from16 v51, v3

    move/from16 v56, v8

    move/from16 v49, v10

    move/from16 v50, v15

    move/from16 v4, v41

    move/from16 v8, p1

    goto/16 :goto_20

    .line 942
    .end local v6    # "alternativeMaxWidth":I
    .end local v43    # "heightSize":I
    .end local v44    # "remainingExcess":I
    .end local v45    # "weightedMaxWidth":I
    .end local v48    # "totalWeight":F
    .restart local v0    # "heightSize":I
    .restart local v1    # "remainingExcess":I
    .restart local v4    # "weightedMaxWidth":I
    .restart local v5    # "totalWeight":F
    .local v13, "alternativeMaxWidth":I
    :cond_23
    move/from16 v43, v0

    move/from16 v44, v1

    move/from16 v45, v4

    move/from16 v48, v5

    .end local v0    # "heightSize":I
    .end local v1    # "remainingExcess":I
    .end local v4    # "weightedMaxWidth":I
    .end local v5    # "totalWeight":F
    .restart local v43    # "heightSize":I
    .restart local v44    # "remainingExcess":I
    .restart local v45    # "weightedMaxWidth":I
    .restart local v48    # "totalWeight":F
    :goto_16
    iget v0, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_24

    iget v5, v7, Landroid/widget/LinearLayout;->mWeightSum:F

    goto :goto_17

    :cond_24
    move/from16 v5, v48

    :goto_17
    move v0, v5

    .line 944
    .local v0, "remainingWeightSum":F
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 946
    move v1, v0

    move v6, v13

    move/from16 v4, v41

    move/from16 v5, v44

    const/4 v0, 0x0

    .end local v13    # "alternativeMaxWidth":I
    .end local v41    # "childState":I
    .end local v44    # "remainingExcess":I
    .local v0, "i":I
    .local v1, "remainingWeightSum":F
    .local v4, "childState":I
    .local v5, "remainingExcess":I
    .restart local v6    # "alternativeMaxWidth":I
    :goto_18
    if-ge v0, v3, :cond_30

    .line 947
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 948
    .local v13, "child":Landroid/view/View;
    if-eqz v13, :cond_2f

    move/from16 v49, v10

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v10

    .end local v10    # "useLargestChild":Z
    .local v49, "useLargestChild":Z
    move/from16 v50, v15

    const/16 v15, 0x8

    if-ne v10, v15, :cond_25

    .line 949
    .end local v15    # "baselineChildIndex":I
    .local v50, "baselineChildIndex":I
    nop

    .line 946
    move/from16 v51, v3

    move/from16 v56, v8

    move/from16 v8, p1

    goto/16 :goto_1f

    .line 952
    :cond_25
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 953
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v15, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 954
    .local v15, "childWeight":F
    cmpl-float v21, v15, v23

    if-lez v21, :cond_29

    .line 955
    move/from16 v51, v3

    int-to-float v3, v5

    .end local v3    # "count":I
    .local v51, "count":I
    mul-float/2addr v3, v15

    div-float/2addr v3, v1

    float-to-int v3, v3

    .line 956
    .local v3, "share":I
    sub-int/2addr v5, v3

    .line 957
    sub-float/2addr v1, v15

    .line 960
    move/from16 v52, v1

    iget-boolean v1, v7, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .end local v1    # "remainingWeightSum":F
    .local v52, "remainingWeightSum":F
    if-eqz v1, :cond_26

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v8, v1, :cond_26

    .line 961
    move v1, v11

    .local v1, "childHeight":I
    :goto_19
    goto :goto_1a

    .line 962
    .end local v1    # "childHeight":I
    :cond_26
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v1, :cond_28

    iget-boolean v1, v7, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v1, :cond_27

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v8, v1, :cond_28

    .line 966
    :cond_27
    move v1, v3

    goto :goto_19

    .line 970
    :cond_28
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    .line 973
    .restart local v1    # "childHeight":I
    :goto_1a
    nop

    .line 974
    move/from16 v53, v3

    move/from16 v54, v5

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 973
    .end local v3    # "share":I
    .end local v5    # "remainingExcess":I
    .local v53, "share":I
    .local v54, "remainingExcess":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 975
    .local v5, "childHeightMeasureSpec":I
    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v55, v1

    iget v1, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    .end local v1    # "childHeight":I
    .local v55, "childHeight":I
    add-int/2addr v3, v1

    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v56, v8

    move/from16 v8, p1

    invoke-static {v8, v3, v1}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 978
    .end local v8    # "heightMode":I
    .local v1, "childWidthMeasureSpec":I
    .local v56, "heightMode":I
    invoke-virtual {v13, v1, v5}, Landroid/view/View;->measure(II)V

    .line 981
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    invoke-static {v4, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v4

    .line 985
    .end local v1    # "childWidthMeasureSpec":I
    .end local v5    # "childHeightMeasureSpec":I
    .end local v53    # "share":I
    .end local v55    # "childHeight":I
    move/from16 v1, v52

    goto :goto_1b

    .end local v51    # "count":I
    .end local v52    # "remainingWeightSum":F
    .end local v54    # "remainingExcess":I
    .end local v56    # "heightMode":I
    .local v1, "remainingWeightSum":F
    .local v3, "count":I
    .local v5, "remainingExcess":I
    .restart local v8    # "heightMode":I
    :cond_29
    move/from16 v51, v3

    move/from16 v56, v8

    move/from16 v8, p1

    move/from16 v54, v5

    .end local v3    # "count":I
    .end local v5    # "remainingExcess":I
    .end local v8    # "heightMode":I
    .restart local v51    # "count":I
    .restart local v54    # "remainingExcess":I
    .restart local v56    # "heightMode":I
    :goto_1b
    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v5, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 986
    .local v3, "margin":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 987
    .local v5, "measuredWidth":I
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 989
    move/from16 v57, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_2a

    .end local v1    # "remainingWeightSum":F
    .local v57, "remainingWeightSum":F
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v58, v3

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2b

    .end local v3    # "margin":I
    .local v58, "margin":I
    move/from16 v1, v25

    goto :goto_1c

    .end local v58    # "margin":I
    .restart local v3    # "margin":I
    :cond_2a
    move/from16 v58, v3

    .end local v3    # "margin":I
    .restart local v58    # "margin":I
    :cond_2b
    const/4 v1, 0x0

    .line 992
    .local v1, "matchWidthLocally":Z
    :goto_1c
    nop

    .line 993
    if-eqz v1, :cond_2c

    .line 992
    move/from16 v3, v58

    goto :goto_1d

    :cond_2c
    move v3, v5

    :goto_1d
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 995
    .end local v6    # "alternativeMaxWidth":I
    .local v3, "alternativeMaxWidth":I
    if-eqz v17, :cond_2d

    iget v6, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v59, v1

    const/4 v1, -0x1

    if-ne v6, v1, :cond_2e

    .end local v1    # "matchWidthLocally":Z
    .local v59, "matchWidthLocally":Z
    move/from16 v6, v25

    goto :goto_1e

    .end local v59    # "matchWidthLocally":Z
    .restart local v1    # "matchWidthLocally":Z
    :cond_2d
    move/from16 v59, v1

    const/4 v1, -0x1

    .end local v1    # "matchWidthLocally":Z
    .restart local v59    # "matchWidthLocally":Z
    :cond_2e
    const/4 v6, 0x0

    .line 997
    .end local v17    # "allFillParent":Z
    .local v6, "allFillParent":Z
    :goto_1e
    iget v1, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 998
    .local v1, "totalLength":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v1, v16

    move/from16 v60, v3

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .end local v3    # "alternativeMaxWidth":I
    .local v60, "alternativeMaxWidth":I
    add-int v16, v16, v3

    iget v3, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v16, v16, v3

    .line 999
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v3, v16, v3

    .line 998
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 946
    .end local v1    # "totalLength":I
    .end local v5    # "measuredWidth":I
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "child":Landroid/view/View;
    .end local v15    # "childWeight":F
    .end local v58    # "margin":I
    .end local v59    # "matchWidthLocally":Z
    move/from16 v17, v6

    move/from16 v5, v54

    move/from16 v1, v57

    move/from16 v6, v60

    goto :goto_1f

    .end local v49    # "useLargestChild":Z
    .end local v50    # "baselineChildIndex":I
    .end local v51    # "count":I
    .end local v54    # "remainingExcess":I
    .end local v56    # "heightMode":I
    .end local v57    # "remainingWeightSum":F
    .end local v60    # "alternativeMaxWidth":I
    .local v1, "remainingWeightSum":F
    .local v3, "count":I
    .local v5, "remainingExcess":I
    .local v6, "alternativeMaxWidth":I
    .restart local v8    # "heightMode":I
    .local v10, "useLargestChild":Z
    .local v15, "baselineChildIndex":I
    .restart local v17    # "allFillParent":Z
    :cond_2f
    move/from16 v51, v3

    move/from16 v56, v8

    move/from16 v49, v10

    move/from16 v50, v15

    move/from16 v8, p1

    .end local v3    # "count":I
    .end local v8    # "heightMode":I
    .end local v10    # "useLargestChild":Z
    .end local v15    # "baselineChildIndex":I
    .restart local v49    # "useLargestChild":Z
    .restart local v50    # "baselineChildIndex":I
    .restart local v51    # "count":I
    .restart local v56    # "heightMode":I
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v49

    move/from16 v15, v50

    move/from16 v3, v51

    move/from16 v8, v56

    goto/16 :goto_18

    .line 1003
    .end local v0    # "i":I
    .end local v49    # "useLargestChild":Z
    .end local v50    # "baselineChildIndex":I
    .end local v51    # "count":I
    .end local v56    # "heightMode":I
    .restart local v3    # "count":I
    .restart local v8    # "heightMode":I
    .restart local v10    # "useLargestChild":Z
    .restart local v15    # "baselineChildIndex":I
    :cond_30
    move/from16 v51, v3

    move/from16 v56, v8

    move/from16 v49, v10

    move/from16 v50, v15

    move/from16 v8, p1

    .end local v3    # "count":I
    .end local v8    # "heightMode":I
    .end local v10    # "useLargestChild":Z
    .end local v15    # "baselineChildIndex":I
    .restart local v49    # "useLargestChild":Z
    .restart local v50    # "baselineChildIndex":I
    .restart local v51    # "count":I
    .restart local v56    # "heightMode":I
    iget v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    iget v3, v7, Landroid/widget/LinearLayout;->mPaddingTop:I

    iget v10, v7, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v10

    add-int/2addr v0, v3

    iput v0, v7, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1005
    .end local v1    # "remainingWeightSum":F
    nop

    .line 1034
    move/from16 v44, v5

    .end local v5    # "remainingExcess":I
    .restart local v44    # "remainingExcess":I
    :goto_20
    if-nez v17, :cond_31

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_31

    .line 1035
    move v14, v6

    .line 1038
    :cond_31
    iget v0, v7, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v1, v7, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    .line 1041
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1043
    .end local v14    # "maxWidth":I
    .local v0, "maxWidth":I
    invoke-static {v0, v8, v4}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v7, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1046
    if-eqz v20, :cond_32

    .line 1047
    move/from16 v1, v51

    invoke-direct {v7, v1, v9}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    goto :goto_21

    .line 1049
    :cond_32
    move/from16 v1, v51

    .end local v51    # "count":I
    .local v1, "count":I
    :goto_21
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 411
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 412
    return-void

    .line 415
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 416
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 420
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1564
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1565
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    goto :goto_0

    .line 1567
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    .line 1569
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 703
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 704
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 708
    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 1682
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 1683
    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 1684
    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    .line 1685
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 1686
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1689
    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 535
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 536
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 639
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 643
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 644
    return-void

    .line 640
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 350
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 351
    return-void

    .line 353
    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 354
    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 356
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_0

    .line 358
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 359
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 362
    :goto_0
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 363
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 364
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .line 378
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    if-ne p1, v0, :cond_0

    .line 379
    return-void

    .line 381
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 383
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 385
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 387
    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1866
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1867
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1868
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1871
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1872
    or-int/lit8 p1, p1, 0x30

    .line 1875
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1876
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1878
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1892
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1893
    .local v1, "gravity":I
    iget v2, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    .line 1894
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1895
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1897
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 566
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 567
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 1838
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1839
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1840
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1842
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .line 306
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-ne p1, v0, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 311
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 312
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 313
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1901
    and-int/lit8 v0, p1, 0x70

    .line 1902
    .local v0, "gravity":I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1903
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1904
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1906
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 698
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 699
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 317
    const/4 v0, 0x0

    return v0
.end method
