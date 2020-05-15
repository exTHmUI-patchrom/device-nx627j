.class public Landroid/view/NotificationHeaderView;
.super Landroid/view/ViewGroup;
.source "NotificationHeaderView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationHeaderView$HeaderTouchListener;
    }
.end annotation


# static fields
.field public static final NO_COLOR:I = 0x1


# instance fields
.field private mAcceptAllTouches:Z

.field private mAppName:Landroid/view/View;

.field private mAppOps:Landroid/view/View;

.field private mAppOpsListener:Landroid/view/View$OnClickListener;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCameraIcon:Landroid/view/View;

.field private final mChildMinWidth:I

.field private final mContentEndMargin:I

.field private mEntireHeaderClickable:Z

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandOnlyOnButton:Z

.field private mExpanded:Z

.field private final mGravity:I

.field private mHeaderText:Landroid/view/View;

.field private mIcon:Lcom/android/internal/widget/CachingIconView;

.field private mIconColor:I

.field private mIsGroup:Z

.field private mMicIcon:Landroid/view/View;

.field private mOriginalNotificationColor:I

.field private mOverlayIcon:Landroid/view/View;

.field private mProfileBadge:Landroid/view/View;

.field mProvider:Landroid/view/ViewOutlineProvider;

.field private mSecondaryHeaderText:Landroid/view/View;

.field private mShowExpandButtonAtEnd:Z

.field private mShowWorkBadgeAtEnd:Z

.field private mSwitchTextView:Landroid/widget/TextView;

.field private mTotalWidth:I

.field private mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance v0, Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    .line 81
    new-instance v0, Landroid/view/NotificationHeaderView$1;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$1;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 107
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    .line 109
    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    .line 110
    const v1, 0x112008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    .line 112
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100af

    aput v3, v1, v2

    .line 113
    .local v1, "attrIds":[I
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 114
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/NotificationHeaderView;->mGravity:I

    .line 115
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/view/NotificationHeaderView;

    .line 46
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;
    .locals 1
    .param p0, "x0"    # Landroid/view/NotificationHeaderView;

    .line 46
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/view/NotificationHeaderView;

    .line 46
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/NotificationHeaderView;

    .line 46
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mAppOps:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/NotificationHeaderView;

    .line 46
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/NotificationHeaderView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/NotificationHeaderView;

    .line 46
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    return v0
.end method

.method static synthetic access$600(Landroid/view/NotificationHeaderView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/NotificationHeaderView;

    .line 46
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    return v0
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .locals 4

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 536
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 537
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 538
    return-object v1

    .line 535
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method private shrinkViewForOverflow(IILandroid/view/View;I)I
    .locals 4
    .param p1, "heightSpec"    # I
    .param p2, "overFlow"    # I
    .param p3, "targetView"    # Landroid/view/View;
    .param p4, "minimumWidth"    # I

    .line 178
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 179
    .local v0, "oldWidth":I
    if-lez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    if-le v0, p4, :cond_0

    .line 181
    sub-int v1, v0, p2

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 182
    .local v1, "newSize":I
    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 183
    .local v2, "childWidthSpec":I
    invoke-virtual {p3, v2, p1}, Landroid/view/View;->measure(II)V

    .line 184
    sub-int v3, v0, v1

    sub-int/2addr p2, v3

    .line 186
    .end local v1    # "newSize":I
    .end local v2    # "childWidthSpec":I
    :cond_0
    return p2
.end method

.method private updateExpandButton()V
    .locals 4

    .line 370
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 371
    const v0, 0x1080328

    .line 372
    .local v0, "drawableId":I
    const v1, 0x10401e7

    .local v1, "contentDescriptionId":I
    goto :goto_0

    .line 374
    .end local v0    # "drawableId":I
    .end local v1    # "contentDescriptionId":I
    :cond_0
    const v0, 0x1080361

    .line 375
    .restart local v0    # "drawableId":I
    const v1, 0x10401e6

    .line 377
    .restart local v1    # "contentDescriptionId":I
    :goto_0
    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget v3, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 379
    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/view/NotificationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 380
    return-void
.end method

.method private updateTouchListener()V
    .locals 1

    .line 300
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->bindTouchRects()V

    .line 306
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 291
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 294
    :cond_0
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 256
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getExpandButton()Landroid/widget/ImageView;
    .locals 1

    .line 545
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIcon()Lcom/android/internal/widget/CachingIconView;
    .locals 1

    .line 406
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object v0
.end method

.method public getOriginalIconColor()I
    .locals 1

    .line 333
    iget v0, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    return v0
.end method

.method public getOriginalNotificationColor()I
    .locals 1

    .line 342
    iget v0, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    return v0
.end method

.method public getWorkProfileIcon()Landroid/view/View;
    .locals 1

    .line 402
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchRect(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 554
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 555
    const/4 v0, 0x0

    return v0

    .line 557
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->access$700(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 278
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 282
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 121
    const v0, 0x10201af

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    .line 122
    const v0, 0x102028a

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    .line 123
    const v0, 0x102028c

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mSecondaryHeaderText:Landroid/view/View;

    .line 124
    const v0, 0x102023e

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    .line 125
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 126
    const v0, 0x1020393

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    .line 127
    const v0, 0x10201eb

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mCameraIcon:Landroid/view/View;

    .line 128
    const v0, 0x102030a

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mMicIcon:Landroid/view/View;

    .line 129
    const v0, 0x1020362

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mOverlayIcon:Landroid/view/View;

    .line 130
    const v0, 0x10201b0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAppOps:Landroid/view/View;

    .line 132
    const v0, 0x1020436

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mSwitchTextView:Landroid/widget/TextView;

    .line 134
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v0, p0

    .line 192
    iget-boolean v1, v0, Landroid/view/NotificationHeaderView;->mIsGroup:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    .line 194
    .local v1, "showInRight":Landroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v2

    .line 195
    .local v2, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v3

    .line 196
    .local v3, "end":I
    iget v4, v0, Landroid/view/NotificationHeaderView;->mGravity:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    .line 197
    .local v4, "centerAligned":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget v8, v0, Landroid/view/NotificationHeaderView;->mTotalWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 200
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v7

    .line 201
    .local v7, "childCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 202
    .local v8, "ownHeight":I
    nop

    .local v6, "i":I
    :goto_2
    if-ge v6, v7, :cond_a

    .line 203
    invoke-virtual {v0, v6}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 204
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3

    .line 205
    nop

    .line 202
    move-object/from16 v18, v1

    goto/16 :goto_4

    .line 207
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 208
    .local v10, "childHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 209
    .local v11, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v12

    add-int/2addr v2, v12

    .line 210
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v2

    .line 211
    .local v12, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v13

    int-to-float v13, v13

    sub-int v14, v8, v10

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    .line 212
    .local v13, "top":I
    add-int v14, v13, v10

    .line 213
    .local v14, "bottom":I
    move v15, v2

    .line 214
    .local v15, "layoutLeft":I
    move/from16 v16, v12

    .line 215
    .local v16, "layoutRight":I
    iget-object v5, v0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    if-ne v9, v5, :cond_4

    iget-boolean v5, v0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    if-eqz v5, :cond_4

    .line 216
    iget v5, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    sub-int v16, v3, v5

    .line 217
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v16, v5

    move v15, v5

    move v3, v5

    .line 223
    :cond_4
    if-ne v9, v1, :cond_6

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v5

    .line 226
    .local v5, "paddingEnd":I
    move-object/from16 v18, v1

    iget-boolean v1, v0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    .end local v1    # "showInRight":Landroid/view/View;
    .local v18, "showInRight":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 227
    iget v5, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    .line 229
    :cond_5
    sub-int v16, v3, v5

    .line 230
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v16, v1

    move v15, v1

    move v3, v1

    .end local v5    # "paddingEnd":I
    goto :goto_3

    .line 232
    .end local v18    # "showInRight":Landroid/view/View;
    .restart local v1    # "showInRight":Landroid/view/View;
    :cond_6
    move-object/from16 v18, v1

    .end local v1    # "showInRight":Landroid/view/View;
    .restart local v18    # "showInRight":Landroid/view/View;
    :goto_3
    iget-object v1, v0, Landroid/view/NotificationHeaderView;->mAppOps:Landroid/view/View;

    if-ne v9, v1, :cond_7

    .line 233
    iget v1, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    .line 234
    .local v1, "paddingEnd":I
    sub-int v16, v3, v1

    .line 235
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v16, v5

    move v15, v5

    move v3, v5

    .line 238
    .end local v1    # "paddingEnd":I
    :cond_7
    iget-object v1, v0, Landroid/view/NotificationHeaderView;->mSwitchTextView:Landroid/widget/TextView;

    if-ne v9, v1, :cond_8

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v1, v5

    add-int/lit8 v15, v1, -0x1e

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    add-int/lit8 v16, v1, -0x1e

    .line 243
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getLayoutDirection()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_9

    .line 244
    move v1, v15

    .line 245
    .local v1, "ltrLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v17

    sub-int v15, v17, v16

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v17

    sub-int v16, v17, v1

    .line 248
    .end local v16    # "layoutRight":I
    .local v1, "layoutRight":I
    :cond_9
    move/from16 v1, v16

    invoke-virtual {v9, v15, v13, v1, v14}, Landroid/view/View;->layout(IIII)V

    .line 249
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v16

    add-int v12, v12, v16

    .line 202
    .end local v1    # "layoutRight":I
    .end local v2    # "left":I
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childHeight":I
    .end local v11    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v13    # "top":I
    .end local v14    # "bottom":I
    .end local v15    # "layoutLeft":I
    .local v12, "left":I
    move v2, v12

    .end local v12    # "left":I
    .restart local v2    # "left":I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    goto/16 :goto_2

    .line 251
    .end local v6    # "i":I
    .end local v18    # "showInRight":Landroid/view/View;
    .local v1, "showInRight":Landroid/view/View;
    :cond_a
    move-object/from16 v18, v1

    .end local v1    # "showInRight":Landroid/view/View;
    .restart local v18    # "showInRight":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    .line 252
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 138
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 139
    .local v0, "givenWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 140
    .local v1, "givenHeight":I
    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 142
    .local v3, "wrapContentWidthSpec":I
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 144
    .local v2, "wrapContentHeightSpec":I
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v5

    add-int/2addr v4, v5

    .line 145
    .local v4, "totalWidth":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "i":I
    .local v6, "totalWidth":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 146
    invoke-virtual {p0, v4}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 147
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 149
    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 152
    .local v8, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v3, v9, v10}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    move-result v9

    .line 154
    .local v9, "childWidthSpec":I
    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v10, v11}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    move-result v10

    .line 156
    .local v10, "childHeightSpec":I
    invoke-virtual {v7, v9, v10}, Landroid/view/View;->measure(II)V

    .line 157
    iget v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    .line 145
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "childWidthSpec":I
    .end local v10    # "childHeightSpec":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    .end local v4    # "i":I
    :cond_1
    if-le v6, v0, :cond_2

    .line 160
    sub-int v4, v6, v0

    .line 162
    .local v4, "overFlow":I
    iget-object v7, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    iget v8, p0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    invoke-direct {p0, v2, v4, v7, v8}, Landroid/view/NotificationHeaderView;->shrinkViewForOverflow(IILandroid/view/View;I)I

    move-result v4

    .line 166
    iget-object v7, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-direct {p0, v2, v4, v7, v5}, Landroid/view/NotificationHeaderView;->shrinkViewForOverflow(IILandroid/view/View;I)I

    move-result v4

    .line 169
    iget-object v7, p0, Landroid/view/NotificationHeaderView;->mSecondaryHeaderText:Landroid/view/View;

    invoke-direct {p0, v2, v4, v7, v5}, Landroid/view/NotificationHeaderView;->shrinkViewForOverflow(IILandroid/view/View;I)I

    .line 172
    .end local v4    # "overFlow":I
    :cond_2
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/view/NotificationHeaderView;->mTotalWidth:I

    .line 173
    invoke-virtual {p0, v0, v1}, Landroid/view/NotificationHeaderView;->setMeasuredDimension(II)V

    .line 174
    return-void
.end method

.method public setAcceptAllTouches(Z)V
    .locals 1
    .param p1, "acceptAllTouches"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 567
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    .line 568
    return-void
.end method

.method public setAppOpsOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 312
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    .line 313
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mAppOps:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mCameraIcon:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mMicIcon:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mOverlayIcon:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    .line 318
    return-void
.end method

.method public setExpandOnlyOnButton(Z)V
    .locals 0
    .param p1, "expandOnlyOnButton"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 575
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    .line 576
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 347
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    .line 348
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateExpandButton()V

    .line 349
    return-void
.end method

.method public setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 263
    if-eqz p1, :cond_0

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    .line 265
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 266
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 267
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 269
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 271
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 273
    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    .line 274
    return-void
.end method

.method public setIsGroup(Z)V
    .locals 0
    .param p1, "isGroup"    # Z

    .line 411
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mIsGroup:Z

    .line 412
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->requestLayout()V

    .line 413
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 322
    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    .line 323
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    .line 325
    return-void
.end method

.method public setOriginalIconColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 329
    iput p1, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    .line 330
    return-void
.end method

.method public setOriginalNotificationColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 338
    iput p1, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    .line 339
    return-void
.end method

.method public setShowExpandButtonAtEnd(Z)V
    .locals 1
    .param p1, "showExpandButtonAtEnd"    # Z

    .line 395
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    if-eq p1, v0, :cond_0

    .line 396
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    .line 397
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    .line 399
    :cond_0
    return-void
.end method

.method public setShowWorkBadgeAtEnd(Z)V
    .locals 1
    .param p1, "showWorkBadgeAtEnd"    # Z

    .line 383
    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    if-eq p1, v0, :cond_0

    .line 384
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    .line 385
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    .line 387
    :cond_0
    return-void
.end method

.method public setSwitchTextVisible(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .line 418
    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mSwitchTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mSwitchTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mSwitchTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    :goto_0
    return-void
.end method

.method public showAppOpsIcons(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p1, "appOps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mOverlayIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mCameraIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mMicIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mOverlayIcon:Landroid/view/View;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 360
    nop

    .line 359
    move v1, v3

    goto :goto_0

    .line 360
    :cond_1
    nop

    .line 359
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mCameraIcon:Landroid/view/View;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    nop

    .line 361
    move v1, v3

    goto :goto_1

    .line 362
    :cond_2
    nop

    .line 361
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mMicIcon:Landroid/view/View;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 364
    nop

    .line 363
    move v2, v3

    goto :goto_2

    .line 364
    :cond_3
    nop

    .line 363
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    return-void

    .line 356
    :cond_4
    :goto_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 286
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
