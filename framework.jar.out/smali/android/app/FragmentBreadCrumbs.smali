.class public Landroid/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_GRAVITY:I = 0x800013


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContainer:Landroid/widget/LinearLayout;

.field private mGravity:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResId:I

.field mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field mParentEntry:Landroid/app/BackStackRecord;

.field private mTextColor:I

.field mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 92
    const v0, 0x111003d

    invoke-direct {p0, p1, p2, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 359
    new-instance v0, Landroid/app/FragmentBreadCrumbs$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentBreadCrumbs$1;-><init>(Landroid/app/FragmentBreadCrumbs;)V

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 106
    sget-object v0, Lcom/android/internal/R$styleable;->FragmentBreadCrumbs:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const v2, 0x800013

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    .line 111
    const/4 v2, 0x2

    const v3, 0x1090067

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/app/FragmentBreadCrumbs;

    .line 44
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/app/FragmentBreadCrumbs;

    .line 44
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object v0
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .line 177
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 180
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 181
    .local v0, "entry":Landroid/app/BackStackRecord;
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 182
    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 183
    return-object v0
.end method

.method private getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1, "index"    # I

    .line 298
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_1

    .line 299
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    :goto_0
    return-object v0

    .line 301
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    return-object v0
.end method

.method private getPreEntryCount()I
    .locals 4

    .line 287
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 0

    .line 279
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 280
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 200
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v0

    .line 201
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 202
    return-void

    .line 205
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "child":Landroid/view/View;
    iget v2, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    .line 208
    .local v2, "childTop":I
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    sub-int/2addr v3, v4

    .line 213
    .local v3, "childBottom":I
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getLayoutDirection()I

    move-result v4

    .line 214
    .local v4, "layoutDirection":I
    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    const v6, 0x800007

    and-int/2addr v5, v6

    .line 215
    .local v5, "horizontalGravity":I
    invoke-static {v5, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    .line 228
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    .line 229
    .local v6, "childLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    goto :goto_0

    .line 217
    .end local v6    # "childLeft":I
    :cond_1
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int v7, v6, v7

    .line 218
    .local v7, "childRight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v7, v6

    .line 219
    .restart local v6    # "childLeft":I
    goto :goto_0

    .line 222
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    :cond_2
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 223
    .restart local v6    # "childLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    .line 224
    .restart local v7    # "childRight":I
    nop

    .line 229
    :goto_0
    nop

    .line 233
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    if-ge v6, v8, :cond_3

    .line 234
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    .line 237
    :cond_3
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_4

    .line 238
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int v7, v8, v9

    .line 241
    :cond_4
    invoke-virtual {v1, v6, v2, v7, v3}, Landroid/view/View;->layout(IIII)V

    .line 242
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 246
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v0

    .line 248
    .local v0, "count":I
    const/4 v1, 0x0

    .line 249
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 250
    .local v2, "maxWidth":I
    const/4 v3, 0x0

    .line 253
    .local v3, "measuredChildState":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 254
    invoke-virtual {p0, v4}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 255
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 256
    invoke-virtual {p0, v5, p1, p2}, Landroid/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    .line 257
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 258
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 259
    nop

    .line 260
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    .line 259
    invoke-static {v3, v6}, Landroid/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v3

    .line 253
    .end local v5    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    .end local v4    # "i":I
    :cond_1
    iget v4, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 266
    iget v4, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 269
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 270
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 272
    invoke-static {v2, p1, v3}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v4

    shl-int/lit8 v5, v3, 0x10

    .line 273
    invoke-static {v1, p2, v5}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v5

    .line 272
    invoke-virtual {p0, v4, v5}, Landroid/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    .line 275
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;

    .line 126
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 127
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 128
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 133
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 134
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 135
    return-void
.end method

.method public setMaxVisible(I)V
    .locals 2
    .param p1, "visibleCrumbs"    # I

    .line 142
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 145
    iput p1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 146
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrumbs must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 173
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 174
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 162
    iput-object p3, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    .line 163
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 164
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .line 192
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 193
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 194
    return-void
.end method

.method updateCrumbs()V
    .locals 14

    .line 306
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 307
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 308
    .local v1, "numEntries":I
    invoke-direct {p0}, Landroid/app/FragmentBreadCrumbs;->getPreEntryCount()I

    move-result v2

    .line 309
    .local v2, "numPreEntries":I
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 310
    .local v3, "numViews":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "numViews":I
    :goto_0
    add-int v6, v1, v2

    const v7, 0x10202e0

    const v8, 0x1020016

    const/16 v9, 0x8

    if-ge v3, v6, :cond_5

    .line 311
    if-ge v3, v2, :cond_0

    .line 312
    invoke-direct {p0, v3}, Landroid/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v6

    goto :goto_1

    .line 313
    :cond_0
    sub-int v6, v3, v2

    invoke-virtual {v0, v6}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v6

    .line 314
    .local v6, "bse":Landroid/app/FragmentManager$BackStackEntry;
    :goto_1
    if-ge v3, v5, :cond_2

    .line 315
    iget-object v10, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 316
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 317
    .local v11, "tag":Ljava/lang/Object;
    if-eq v11, v6, :cond_2

    .line 318
    move v12, v3

    .local v12, "j":I
    :goto_2
    if-ge v12, v5, :cond_1

    .line 319
    iget-object v13, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 318
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 321
    .end local v12    # "j":I
    :cond_1
    move v5, v3

    .line 324
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "tag":Ljava/lang/Object;
    :cond_2
    if-lt v3, v5, :cond_4

    .line 325
    iget-object v10, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Landroid/app/FragmentBreadCrumbs;->mLayoutResId:I

    invoke-virtual {v10, v11, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 326
    .local v10, "item":Landroid/view/View;
    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 327
    .local v8, "text":Landroid/widget/TextView;
    invoke-interface {v6}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 329
    iget v11, p0, Landroid/app/FragmentBreadCrumbs;->mTextColor:I

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    if-nez v3, :cond_3

    .line 331
    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_3
    iget-object v7, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    iget-object v7, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .end local v6    # "bse":Landroid/app/FragmentManager$BackStackEntry;
    .end local v8    # "text":Landroid/widget/TextView;
    .end local v10    # "item":Landroid/view/View;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    .end local v3    # "i":I
    :cond_5
    add-int v3, v1, v2

    .line 338
    .local v3, "viewI":I
    iget-object v6, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 339
    :goto_3
    if-le v5, v3, :cond_6

    .line 340
    iget-object v6, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 341
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 344
    :cond_6
    move v6, v4

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_b

    .line 345
    iget-object v10, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 347
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    add-int/lit8 v12, v5, -0x1

    if-ge v6, v12, :cond_7

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    move v12, v4

    :goto_5
    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 348
    iget v11, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    if-lez v11, :cond_a

    .line 350
    iget v11, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    sub-int v11, v5, v11

    if-ge v6, v11, :cond_8

    move v11, v9

    goto :goto_6

    :cond_8
    move v11, v4

    :goto_6
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 353
    .local v11, "leftIcon":Landroid/view/View;
    iget v12, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    sub-int v12, v5, v12

    if-le v6, v12, :cond_9

    if-eqz v6, :cond_9

    move v12, v4

    goto :goto_7

    .line 354
    :cond_9
    nop

    .line 353
    move v12, v9

    :goto_7
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "leftIcon":Landroid/view/View;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 357
    .end local v6    # "i":I
    :cond_b
    return-void
.end method
