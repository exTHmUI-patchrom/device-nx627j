.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private final mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsible:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private final mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private final mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private final mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    move-object/from16 v0, p0

    .line 159
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 135
    const v1, 0x1040048

    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 139
    new-instance v1, Lcom/android/internal/widget/ActionBarView$1;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v1, Lcom/android/internal/widget/ActionBarView$2;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 164
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual {v11, v12, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 167
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 169
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 170
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 171
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 176
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/16 v4, 0x10

    const v5, 0x109001a

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 180
    .local v13, "homeResId":I
    const v5, 0x109001d

    invoke-virtual {v3, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 182
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3, v13, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 184
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3, v13, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 185
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 186
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 193
    .local v15, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_0

    .line 194
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_0
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v5, v14}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 197
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v5, v14}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 199
    const/16 v5, 0xb

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 200
    const/16 v5, 0xc

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 201
    invoke-virtual {v2, v14, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 202
    const/16 v5, 0xe

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 205
    const/16 v5, 0xf

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 206
    const/16 v5, 0x11

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 208
    const/16 v5, 0x8

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 210
    const/16 v5, 0xa

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 211
    .local v10, "customNavId":I
    if-eqz v10, :cond_1

    .line 212
    invoke-virtual {v3, v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 213
    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 214
    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 217
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 219
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v6, 0x0

    const v7, 0x102002c

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v4, v1

    move-object/from16 v16, v5

    move-object v5, v11

    move/from16 v17, v10

    move-object/from16 v10, v16

    .end local v10    # "customNavId":I
    .local v17, "customNavId":I
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 223
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 225
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 228
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 230
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 9

    .line 571
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_0
    goto :goto_1

    .line 574
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 581
    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 582
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 583
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 585
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 586
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1040047

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v2, v8, v5

    aput-object v0, v8, v4

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "result":Ljava/lang/String;
    goto :goto_2

    .line 590
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1040046

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v0, v4, v5

    invoke-virtual {v3, v7, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .restart local v3    # "result":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 595
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 3
    .param p1, "builder"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 437
    if-eqz p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 446
    :goto_0
    return-void
.end method

.method private initTitle()V
    .locals 4

    .line 810
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 812
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x109001c

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 814
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020184

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 815
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020183

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 817
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v2, :cond_0

    .line 818
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 820
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 821
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    :cond_1
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v2, :cond_2

    .line 825
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 827
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 828
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 834
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 835
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 839
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 837
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 841
    :goto_1
    return-void
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .line 536
    if-eqz p2, :cond_0

    .line 537
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 544
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 550
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 551
    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 500
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 505
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 506
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    .end local v0    # "visible":Z
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 512
    return-void
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .param p1, "homeEnabled"    # Z

    .line 554
    if-nez p1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 559
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    :goto_0
    return-void
.end method


# virtual methods
.method public canSplit()Z
    .locals 1

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 456
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 459
    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 788
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1260
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1265
    if-nez p1, :cond_0

    .line 1266
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1268
    :cond_0
    return-object p1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 776
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 772
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    .line 781
    return-object p0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .line 292
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x1020396

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 297
    return-void
.end method

.method public initProgress()V
    .locals 5

    .line 284
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x1020397

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method public isSplit()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .line 855
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 856
    return v1

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 860
    .local v0, "titleLayout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 861
    return v1

    .line 864
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 865
    .local v2, "lineCount":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 866
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 867
    const/4 v1, 0x1

    return v1

    .line 865
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 870
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 234
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 237
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 238
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    :cond_0
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 242
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 246
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v0, :cond_2

    .line 247
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 252
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_3

    .line 253
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 254
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 258
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 270
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 271
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 272
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 276
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 793
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 795
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 796
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 798
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 800
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 801
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 802
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 807
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v6, p0

    .line 1095
    sub-int v0, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v1

    sub-int v10, v0, v1

    .line 1097
    .local v10, "contentHeight":I
    if-gtz v10, :cond_0

    .line 1099
    return-void

    .line 1102
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->isLayoutRtl()Z

    move-result v11

    .line 1103
    .local v11, "isLayoutRtl":Z
    if-eqz v11, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    move v13, v0

    .line 1104
    .local v13, "direction":I
    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    :cond_2
    sub-int v0, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    move v14, v0

    .line 1107
    .local v14, "menuStart":I
    if-eqz v11, :cond_3

    sub-int v0, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v0

    :goto_2
    move v5, v0

    .line 1108
    .local v5, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v15

    .line 1110
    .local v15, "y":I
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_3

    :cond_4
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    :goto_3
    move-object v4, v0

    .line 1111
    .local v4, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_5

    iget v0, v6, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move/from16 v16, v0

    .line 1113
    .local v16, "showTitle":Z
    const/4 v0, 0x0

    .line 1114
    .local v0, "startOffset":I
    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, v6, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_7

    .line 1115
    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 1116
    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v0

    goto :goto_5

    .line 1117
    :cond_6
    if-eqz v16, :cond_7

    .line 1118
    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v0

    .line 1123
    .end local v0    # "startOffset":I
    .local v2, "startOffset":I
    :cond_7
    :goto_5
    move v2, v0

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 1124
    invoke-static {v5, v2, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v17

    .line 1123
    move-object v0, v6

    move v12, v2

    move/from16 v2, v17

    .end local v2    # "startOffset":I
    .local v12, "startOffset":I
    move v7, v3

    move v3, v15

    move-object/from16 v17, v4

    move v4, v10

    .end local v4    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .local v17, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    move/from16 v19, v5

    move v5, v11

    .end local v5    # "x":I
    .local v19, "x":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int v5, v19, v0

    .line 1125
    .end local v19    # "x":I
    .restart local v5    # "x":I
    invoke-static {v5, v12, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v0

    .line 1127
    .end local v5    # "x":I
    .local v0, "x":I
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_a

    .line 1128
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_6

    .line 1141
    :pswitch_0
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_a

    .line 1142
    if-eqz v16, :cond_8

    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v0, v1, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v0

    .line 1143
    .end local v0    # "x":I
    .restart local v19    # "x":I
    :cond_8
    move/from16 v19, v0

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object v0, v6

    move/from16 v2, v19

    move v3, v15

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int v0, v19, v0

    .line 1144
    .end local v19    # "x":I
    .restart local v0    # "x":I
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v0, v1, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v0

    goto :goto_6

    .line 1132
    :pswitch_1
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    .line 1133
    if-eqz v16, :cond_9

    .line 1134
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v0, v1, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v0

    .line 1136
    .end local v0    # "x":I
    .restart local v19    # "x":I
    :cond_9
    move/from16 v19, v0

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object v0, v6

    move/from16 v2, v19

    move v3, v15

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int v0, v19, v0

    .line 1137
    .end local v19    # "x":I
    .restart local v0    # "x":I
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v0, v1, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v0

    goto :goto_6

    .line 1130
    :pswitch_2
    nop

    .line 1150
    .end local v0    # "x":I
    .restart local v5    # "x":I
    :cond_a
    :goto_6
    move v5, v0

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, v6, :cond_b

    .line 1151
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    xor-int/lit8 v19, v11, 0x1

    move-object v0, v6

    move v2, v14

    move v3, v15

    move v4, v10

    move/from16 v20, v5

    move/from16 v5, v19

    .end local v5    # "x":I
    .local v20, "x":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1152
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v0, v13

    add-int/2addr v14, v0

    goto :goto_7

    .line 1155
    .end local v20    # "x":I
    .restart local v5    # "x":I
    :cond_b
    move/from16 v20, v5

    .end local v5    # "x":I
    .restart local v20    # "x":I
    :goto_7
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 1156
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_c

    .line 1157
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    xor-int/lit8 v5, v11, 0x1

    move-object v0, v6

    move v2, v14

    move v3, v15

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1158
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v0, v13

    add-int/2addr v14, v0

    .line 1161
    :cond_c
    const/4 v0, 0x0

    .line 1162
    .local v0, "customView":Landroid/view/View;
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v2, 0x10

    if-eqz v1, :cond_d

    .line 1163
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    goto :goto_8

    .line 1164
    :cond_d
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 1166
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 1168
    :cond_e
    :goto_8
    if-eqz v0, :cond_22

    .line 1169
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v1

    .line 1170
    .local v1, "layoutDirection":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1171
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/app/ActionBar$LayoutParams;

    if-eqz v4, :cond_f

    .line 1172
    move-object v4, v3

    check-cast v4, Landroid/app/ActionBar$LayoutParams;

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    .line 1173
    .local v4, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_9
    if-eqz v4, :cond_10

    iget v5, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_a

    :cond_10
    const v5, 0x800013

    .line 1174
    .local v5, "gravity":I
    :goto_a
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1176
    .local v7, "navWidth":I
    const/16 v19, 0x0

    .line 1177
    .local v19, "topMargin":I
    const/16 v21, 0x0

    .line 1178
    .local v21, "bottomMargin":I
    if-eqz v4, :cond_11

    .line 1179
    invoke-virtual {v4}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v2

    move-object/from16 v22, v3

    move/from16 v3, v20

    invoke-static {v3, v2, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v2

    .line 1180
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v20    # "x":I
    .local v2, "x":I
    .local v22, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int/2addr v3, v13

    add-int/2addr v14, v3

    .line 1181
    iget v3, v4, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    .line 1182
    .end local v19    # "topMargin":I
    .local v3, "topMargin":I
    move/from16 v23, v2

    iget v2, v4, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    .line 1185
    .end local v21    # "bottomMargin":I
    .local v2, "bottomMargin":I
    .local v23, "x":I
    move/from16 v19, v3

    move/from16 v3, v23

    goto :goto_b

    .end local v2    # "bottomMargin":I
    .end local v22    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "x":I
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "topMargin":I
    .restart local v20    # "x":I
    .restart local v21    # "bottomMargin":I
    :cond_11
    move-object/from16 v22, v3

    move/from16 v3, v20

    move/from16 v2, v21

    .end local v20    # "x":I
    .end local v21    # "bottomMargin":I
    .restart local v2    # "bottomMargin":I
    .local v3, "x":I
    .restart local v22    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_b
    const v20, 0x800007

    move-object/from16 v24, v4

    and-int v4, v5, v20

    .line 1187
    .local v4, "hgravity":I
    .local v24, "ablp":Landroid/app/ActionBar$LayoutParams;
    const/4 v8, 0x1

    if-ne v4, v8, :cond_17

    .line 1188
    iget v8, v6, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move/from16 v25, v4

    iget v4, v6, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    .end local v4    # "hgravity":I
    .local v25, "hgravity":I
    sub-int/2addr v8, v4

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    .line 1189
    .local v8, "centeredLeft":I
    if-eqz v11, :cond_14

    .line 1190
    add-int v4, v8, v7

    .line 1191
    .local v4, "centeredStart":I
    move/from16 v26, v8

    .line 1192
    .local v26, "centeredEnd":I
    if-le v4, v3, :cond_12

    .line 1193
    const/16 v20, 0x5

    .line 1197
    .end local v25    # "hgravity":I
    .local v20, "hgravity":I
    move/from16 v25, v20

    goto :goto_c

    .line 1194
    .end local v20    # "hgravity":I
    .restart local v25    # "hgravity":I
    :cond_12
    move/from16 v27, v4

    move/from16 v4, v26

    if-ge v4, v14, :cond_13

    .line 1195
    .end local v26    # "centeredEnd":I
    .local v4, "centeredEnd":I
    .local v27, "centeredStart":I
    const/4 v4, 0x3

    .line 1197
    .end local v25    # "hgravity":I
    .end local v27    # "centeredStart":I
    .local v4, "hgravity":I
    move/from16 v25, v4

    .end local v4    # "hgravity":I
    .restart local v25    # "hgravity":I
    :cond_13
    :goto_c
    goto :goto_d

    .line 1198
    :cond_14
    move v4, v8

    .line 1199
    .local v4, "centeredStart":I
    add-int v9, v8, v7

    .line 1200
    .local v9, "centeredEnd":I
    if-ge v4, v3, :cond_15

    .line 1201
    const/16 v20, 0x3

    .line 1206
    .end local v25    # "hgravity":I
    .restart local v20    # "hgravity":I
    move/from16 v4, v20

    goto :goto_e

    .line 1202
    .end local v20    # "hgravity":I
    .restart local v25    # "hgravity":I
    :cond_15
    if-le v9, v14, :cond_16

    .line 1203
    const/4 v4, 0x5

    .end local v8    # "centeredLeft":I
    .end local v9    # "centeredEnd":I
    .end local v25    # "hgravity":I
    .local v4, "hgravity":I
    goto :goto_e

    .line 1206
    :cond_16
    :goto_d
    move/from16 v4, v25

    :goto_e
    goto :goto_f

    :cond_17
    move/from16 v25, v4

    .end local v4    # "hgravity":I
    .restart local v25    # "hgravity":I
    if-nez v5, :cond_18

    .line 1207
    const v4, 0x800003

    .end local v25    # "hgravity":I
    .restart local v4    # "hgravity":I
    goto :goto_f

    .line 1210
    .end local v4    # "hgravity":I
    .restart local v25    # "hgravity":I
    :cond_18
    move/from16 v4, v25

    .end local v25    # "hgravity":I
    .restart local v4    # "hgravity":I
    :goto_f
    const/4 v8, 0x0

    .line 1211
    .local v8, "xpos":I
    invoke-static {v4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v9

    move/from16 v28, v1

    const/4 v1, 0x1

    .end local v1    # "layoutDirection":I
    .local v28, "layoutDirection":I
    if-eq v9, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v9, v1, :cond_1b

    const/4 v1, 0x5

    if-eq v9, v1, :cond_19

    goto :goto_12

    .line 1219
    :cond_19
    if-eqz v11, :cond_1a

    sub-int v1, v3, v7

    goto :goto_10

    :cond_1a
    sub-int v1, v14, v7

    :goto_10
    move v8, v1

    goto :goto_12

    .line 1216
    :cond_1b
    if-eqz v11, :cond_1c

    move v1, v14

    goto :goto_11

    :cond_1c
    move v1, v3

    :goto_11
    move v8, v1

    .line 1217
    goto :goto_12

    .line 1213
    :cond_1d
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mRight:I

    iget v9, v6, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v7

    div-int/lit8 v8, v1, 0x2

    .line 1214
    nop

    .line 1223
    :goto_12
    and-int/lit8 v1, v5, 0x70

    .line 1225
    .local v1, "vgravity":I
    if-nez v5, :cond_1e

    .line 1226
    const/16 v1, 0x10

    .line 1229
    :cond_1e
    const/4 v9, 0x0

    .line 1230
    .local v9, "ypos":I
    move/from16 v29, v4

    const/16 v4, 0x10

    .end local v4    # "hgravity":I
    .local v29, "hgravity":I
    if-eq v1, v4, :cond_21

    const/16 v4, 0x30

    if-eq v1, v4, :cond_20

    const/16 v4, 0x50

    if-eq v1, v4, :cond_1f

    .line 1244
    .end local v1    # "vgravity":I
    .end local v2    # "bottomMargin":I
    .local v30, "vgravity":I
    .local v31, "bottomMargin":I
    :goto_13
    move/from16 v30, v1

    move/from16 v31, v2

    goto :goto_14

    .line 1240
    .end local v30    # "vgravity":I
    .end local v31    # "bottomMargin":I
    .restart local v1    # "vgravity":I
    .restart local v2    # "bottomMargin":I
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v18

    sub-int v4, v4, v18

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v4, v4, v18

    sub-int v9, v4, v2

    goto :goto_13

    .line 1237
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    add-int v9, v4, v19

    .line 1238
    goto :goto_13

    .line 1232
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    .line 1233
    .local v4, "paddedTop":I
    move/from16 v30, v1

    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    .end local v1    # "vgravity":I
    .restart local v30    # "vgravity":I
    move/from16 v31, v2

    iget v2, v6, Lcom/android/internal/widget/ActionBarView;->mTop:I

    .end local v2    # "bottomMargin":I
    .restart local v31    # "bottomMargin":I
    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1234
    .local v1, "paddedBottom":I
    sub-int v2, v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v2, v2, v18

    div-int/lit8 v9, v2, 0x2

    .line 1235
    nop

    .line 1244
    .end local v1    # "paddedBottom":I
    .end local v4    # "paddedTop":I
    :goto_14
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1245
    .local v1, "customWidth":I
    add-int v2, v8, v1

    .line 1246
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v9

    .line 1245
    invoke-virtual {v0, v8, v9, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 1247
    invoke-static {v3, v1, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1250
    .end local v1    # "customWidth":I
    .end local v3    # "x":I
    .end local v7    # "navWidth":I
    .end local v8    # "xpos":I
    .end local v9    # "ypos":I
    .end local v19    # "topMargin":I
    .end local v22    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v24    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v28    # "layoutDirection":I
    .end local v29    # "hgravity":I
    .end local v30    # "vgravity":I
    .end local v31    # "bottomMargin":I
    .local v5, "x":I
    move v3, v5

    goto :goto_15

    .end local v5    # "x":I
    .local v20, "x":I
    :cond_22
    move/from16 v3, v20

    .end local v20    # "x":I
    .restart local v3    # "x":I
    :goto_15
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_23

    .line 1251
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1252
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1253
    .local v1, "halfProgressHeight":I
    iget-object v2, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v4, v6, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v5, v1

    iget v7, v6, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    iget-object v8, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 1254
    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 1253
    invoke-virtual {v2, v4, v5, v7, v1}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1256
    .end local v1    # "halfProgressHeight":I
    :cond_23
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 39
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v1

    .line 876
    .local v1, "childCount":I
    iget-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 877
    const/4 v2, 0x0

    .line 878
    .local v2, "visibleChildren":I
    move v5, v2

    move v2, v4

    .local v2, "i":I
    .local v5, "visibleChildren":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 879
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 880
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_1

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-ne v6, v7, :cond_0

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 881
    invoke-virtual {v7}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v6, v7, :cond_1

    .line 883
    add-int/lit8 v5, v5, 0x1

    .line 878
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    .end local v2    # "i":I
    :cond_2
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 888
    .local v2, "upChildCount":I
    move v6, v5

    move v5, v4

    .local v5, "i":I
    .local v6, "visibleChildren":I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 889
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 890
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v3, :cond_3

    .line 891
    add-int/lit8 v6, v6, 0x1

    .line 888
    .end local v7    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 895
    .end local v5    # "i":I
    :cond_4
    if-nez v6, :cond_5

    .line 897
    invoke-virtual {v0, v4, v4}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 898
    return-void

    .line 902
    .end local v2    # "upChildCount":I
    .end local v6    # "visibleChildren":I
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 903
    .local v2, "widthMode":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_27

    .line 908
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 909
    .local v6, "heightMode":I
    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_26

    .line 914
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 916
    .local v8, "contentWidth":I
    iget v9, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    if-ltz v9, :cond_6

    .line 917
    iget v9, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    goto :goto_2

    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 919
    .local v9, "maxHeight":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    .line 920
    .local v10, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v11

    .line 921
    .local v11, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v12

    .line 922
    .local v12, "paddingRight":I
    sub-int v13, v9, v10

    .line 923
    .local v13, "height":I
    invoke-static {v13, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 924
    .local v14, "childSpecHeight":I
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 926
    .local v15, "exactHeightSpec":I
    sub-int v16, v8, v11

    sub-int v4, v16, v12

    .line 927
    .local v4, "availableWidth":I
    div-int/lit8 v16, v4, 0x2

    .line 928
    .local v16, "leftOfCenter":I
    move/from16 v17, v16

    .line 930
    .local v17, "rightOfCenter":I
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_7

    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 933
    .local v5, "showTitle":Z
    :goto_3
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_4

    :cond_8
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 935
    .local v7, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_4
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 937
    .local v3, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v18, v2

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .end local v2    # "widthMode":I
    .local v18, "widthMode":I
    if-gez v2, :cond_9

    .line 938
    const/high16 v2, -0x80000000

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 940
    .local v19, "homeWidthSpec":I
    move-object/from16 v20, v3

    goto :goto_5

    .end local v19    # "homeWidthSpec":I
    :cond_9
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v20, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .end local v3    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "homeWidthSpec":I
    .local v20, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :goto_5
    move/from16 v2, v19

    .line 951
    .end local v19    # "homeWidthSpec":I
    .local v2, "homeWidthSpec":I
    invoke-virtual {v7, v2, v15}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 953
    const/4 v3, 0x0

    .line 954
    .local v3, "homeWidth":I
    move/from16 v21, v2

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    .end local v2    # "homeWidthSpec":I
    .local v21, "homeWidthSpec":I
    move/from16 v22, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    .end local v3    # "homeWidth":I
    .local v22, "homeWidth":I
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_b

    :cond_a
    if-eqz v5, :cond_c

    .line 956
    :cond_b
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v3

    .line 957
    .end local v22    # "homeWidth":I
    .restart local v3    # "homeWidth":I
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v2

    add-int/2addr v2, v3

    .line 958
    .local v2, "homeOffsetWidth":I
    move/from16 v23, v3

    sub-int v3, v4, v2

    .end local v3    # "homeWidth":I
    .local v23, "homeWidth":I
    move/from16 v24, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 959
    .end local v4    # "availableWidth":I
    .local v3, "availableWidth":I
    move/from16 v25, v6

    sub-int v6, v3, v2

    .end local v6    # "heightMode":I
    .local v25, "heightMode":I
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 962
    .end local v2    # "homeOffsetWidth":I
    move/from16 v22, v23

    goto :goto_6

    .end local v3    # "availableWidth":I
    .end local v23    # "homeWidth":I
    .end local v25    # "heightMode":I
    .restart local v4    # "availableWidth":I
    .restart local v6    # "heightMode":I
    .restart local v22    # "homeWidth":I
    :cond_c
    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v3, v24

    .end local v4    # "availableWidth":I
    .end local v6    # "heightMode":I
    .restart local v3    # "availableWidth":I
    .restart local v25    # "heightMode":I
    :goto_6
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_d

    .line 963
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v15, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 964
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v17, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 967
    :cond_d
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 968
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_e

    .line 969
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v14, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 971
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 972
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v17, v2

    .line 971
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 975
    .end local v17    # "rightOfCenter":I
    .local v2, "rightOfCenter":I
    :cond_e
    move/from16 v2, v17

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v4, :cond_11

    .line 976
    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_9

    .line 991
    :pswitch_0
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_11

    .line 992
    if-eqz v5, :cond_f

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_7

    :cond_f
    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 993
    .local v4, "itemPaddingSize":I
    :goto_7
    sub-int v6, v3, v4

    move-object/from16 v26, v7

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 994
    .end local v7    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .local v26, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    sub-int v6, v16, v4

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 995
    .end local v16    # "leftOfCenter":I
    .local v6, "leftOfCenter":I
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 996
    move/from16 v27, v4

    move/from16 v28, v11

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 997
    .end local v4    # "itemPaddingSize":I
    .end local v11    # "paddingLeft":I
    .local v27, "itemPaddingSize":I
    .local v28, "paddingLeft":I
    move/from16 v29, v12

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v13, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 995
    .end local v12    # "paddingRight":I
    .local v29, "paddingRight":I
    invoke-virtual {v7, v11, v12}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 998
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 999
    .local v4, "tabWidth":I
    sub-int v7, v3, v4

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1000
    sub-int v7, v6, v4

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v16

    .end local v4    # "tabWidth":I
    .end local v6    # "leftOfCenter":I
    .end local v27    # "itemPaddingSize":I
    .restart local v16    # "leftOfCenter":I
    goto :goto_a

    .line 978
    .end local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v28    # "paddingLeft":I
    .end local v29    # "paddingRight":I
    .restart local v7    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v11    # "paddingLeft":I
    .restart local v12    # "paddingRight":I
    :pswitch_1
    move-object/from16 v26, v7

    move/from16 v28, v11

    move/from16 v29, v12

    .end local v7    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v11    # "paddingLeft":I
    .end local v12    # "paddingRight":I
    .restart local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v28    # "paddingLeft":I
    .restart local v29    # "paddingRight":I
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_12

    .line 979
    if-eqz v5, :cond_10

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_8

    :cond_10
    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 980
    .local v4, "itemPaddingSize":I
    :goto_8
    sub-int v6, v3, v4

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 981
    sub-int v6, v16, v4

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 982
    .end local v16    # "leftOfCenter":I
    .restart local v6    # "leftOfCenter":I
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 983
    const/high16 v11, -0x80000000

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 984
    move/from16 v30, v4

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 982
    .end local v4    # "itemPaddingSize":I
    .local v30, "itemPaddingSize":I
    invoke-virtual {v7, v12, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 985
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    .line 986
    .local v4, "listNavWidth":I
    sub-int v7, v3, v4

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 987
    sub-int v7, v6, v4

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 988
    .end local v4    # "listNavWidth":I
    .end local v6    # "leftOfCenter":I
    .end local v30    # "itemPaddingSize":I
    .restart local v16    # "leftOfCenter":I
    goto :goto_a

    .line 1006
    .end local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v28    # "paddingLeft":I
    .end local v29    # "paddingRight":I
    .restart local v7    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v11    # "paddingLeft":I
    .restart local v12    # "paddingRight":I
    :cond_11
    :goto_9
    move-object/from16 v26, v7

    move/from16 v28, v11

    move/from16 v29, v12

    .end local v7    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v11    # "paddingLeft":I
    .end local v12    # "paddingRight":I
    .end local v16    # "leftOfCenter":I
    .local v4, "leftOfCenter":I
    .restart local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v28    # "paddingLeft":I
    .restart local v29    # "paddingRight":I
    :cond_12
    :goto_a
    move/from16 v4, v16

    const/4 v6, 0x0

    .line 1007
    .local v6, "customView":Landroid/view/View;
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v7, :cond_13

    .line 1008
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    goto :goto_b

    .line 1009
    :cond_13
    iget v7, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_14

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v7, :cond_14

    .line 1011
    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 1014
    :cond_14
    :goto_b
    if-eqz v6, :cond_1f

    .line 1015
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1016
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v11, v7, Landroid/app/ActionBar$LayoutParams;

    if-eqz v11, :cond_15

    .line 1017
    move-object v11, v7

    check-cast v11, Landroid/app/ActionBar$LayoutParams;

    goto :goto_c

    :cond_15
    const/4 v11, 0x0

    .line 1019
    .local v11, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_c
    const/4 v12, 0x0

    .line 1020
    .local v12, "horizontalMargin":I
    const/16 v16, 0x0

    .line 1021
    .local v16, "verticalMargin":I
    if-eqz v11, :cond_16

    .line 1022
    move/from16 v31, v5

    iget v5, v11, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    .end local v5    # "showTitle":Z
    .local v31, "showTitle":Z
    move/from16 v32, v12

    iget v12, v11, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    .end local v12    # "horizontalMargin":I
    .local v32, "horizontalMargin":I
    add-int/2addr v12, v5

    .line 1023
    .end local v32    # "horizontalMargin":I
    .restart local v12    # "horizontalMargin":I
    iget v5, v11, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v33, v12

    iget v12, v11, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    .end local v12    # "horizontalMargin":I
    .local v33, "horizontalMargin":I
    add-int v16, v5, v12

    .line 1029
    move/from16 v32, v33

    goto :goto_d

    .end local v31    # "showTitle":Z
    .end local v33    # "horizontalMargin":I
    .restart local v5    # "showTitle":Z
    .restart local v12    # "horizontalMargin":I
    :cond_16
    move/from16 v31, v5

    move/from16 v32, v12

    .end local v5    # "showTitle":Z
    .end local v12    # "horizontalMargin":I
    .restart local v31    # "showTitle":Z
    .restart local v32    # "horizontalMargin":I
    :goto_d
    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    const/4 v12, -0x2

    if-gtz v5, :cond_17

    .line 1030
    const/high16 v5, -0x80000000

    .local v5, "customNavHeightMode":I
    goto :goto_e

    .line 1032
    .end local v5    # "customNavHeightMode":I
    :cond_17
    iget v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v12, :cond_18

    .line 1033
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_e

    :cond_18
    const/high16 v5, -0x80000000

    .line 1035
    .restart local v5    # "customNavHeightMode":I
    :goto_e
    nop

    .line 1036
    iget v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v12, :cond_19

    iget v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_f

    :cond_19
    move v12, v13

    :goto_f
    sub-int v12, v12, v16

    .line 1035
    move/from16 v34, v13

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1038
    .end local v13    # "height":I
    .local v12, "customNavHeight":I
    .local v34, "height":I
    iget v13, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v35, v14

    const/4 v14, -0x2

    if-eq v13, v14, :cond_1a

    .line 1039
    .end local v14    # "childSpecHeight":I
    .local v35, "childSpecHeight":I
    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_10

    :cond_1a
    const/high16 v13, -0x80000000

    .line 1040
    .local v13, "customNavWidthMode":I
    :goto_10
    nop

    .line 1041
    iget v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v14, :cond_1b

    iget v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_11

    :cond_1b
    move v14, v3

    :goto_11
    sub-int v14, v14, v32

    .line 1040
    move/from16 v36, v15

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1043
    .end local v15    # "exactHeightSpec":I
    .local v14, "customNavWidth":I
    .local v36, "exactHeightSpec":I
    if-eqz v11, :cond_1c

    iget v15, v11, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_12

    :cond_1c
    const v15, 0x800013

    :goto_12
    and-int/lit8 v15, v15, 0x7

    .line 1048
    .local v15, "hgrav":I
    move-object/from16 v37, v11

    const/4 v11, 0x1

    if-ne v15, v11, :cond_1d

    .end local v11    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .local v37, "ablp":Landroid/app/ActionBar$LayoutParams;
    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v38, v7

    const/4 v7, -0x1

    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v38, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-ne v11, v7, :cond_1e

    .line 1049
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/lit8 v14, v7, 0x2

    goto :goto_13

    .line 1052
    .end local v38    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1d
    move-object/from16 v38, v7

    .line 1053
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v38    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1e
    :goto_13
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1054
    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1052
    invoke-virtual {v6, v7, v11}, Landroid/view/View;->measure(II)V

    .line 1055
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v7, v32, v7

    sub-int/2addr v3, v7

    .end local v5    # "customNavHeightMode":I
    .end local v12    # "customNavHeight":I
    .end local v13    # "customNavWidthMode":I
    .end local v14    # "customNavWidth":I
    .end local v15    # "hgrav":I
    .end local v16    # "verticalMargin":I
    .end local v32    # "horizontalMargin":I
    .end local v37    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v38    # "lp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_14

    .line 1062
    .end local v31    # "showTitle":Z
    .end local v34    # "height":I
    .end local v35    # "childSpecHeight":I
    .end local v36    # "exactHeightSpec":I
    .local v5, "showTitle":Z
    .local v13, "height":I
    .local v14, "childSpecHeight":I
    .local v15, "exactHeightSpec":I
    :cond_1f
    move/from16 v31, v5

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    .end local v5    # "showTitle":Z
    .end local v13    # "height":I
    .end local v14    # "childSpecHeight":I
    .end local v15    # "exactHeightSpec":I
    .restart local v31    # "showTitle":Z
    .restart local v34    # "height":I
    .restart local v35    # "childSpecHeight":I
    .restart local v36    # "exactHeightSpec":I
    :goto_14
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    add-int v7, v3, v22

    iget v11, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 1063
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1062
    const/4 v12, 0x0

    invoke-virtual {v0, v5, v7, v11, v12}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 1064
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_20

    .line 1065
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1068
    :cond_20
    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v5, :cond_23

    .line 1069
    const/4 v5, 0x0

    .line 1070
    .local v5, "measuredHeight":I
    nop

    .local v12, "i":I
    :goto_15
    move v7, v12

    .end local v12    # "i":I
    .local v7, "i":I
    if-ge v7, v1, :cond_22

    .line 1071
    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1072
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v10

    .line 1073
    .local v12, "paddedViewHeight":I
    if-le v12, v5, :cond_21

    .line 1074
    move v5, v12

    .line 1070
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "paddedViewHeight":I
    :cond_21
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "i":I
    .local v12, "i":I
    goto :goto_15

    .line 1077
    .end local v12    # "i":I
    :cond_22
    invoke-virtual {v0, v8, v5}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1078
    .end local v5    # "measuredHeight":I
    goto :goto_16

    .line 1079
    :cond_23
    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1082
    :goto_16
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v5, :cond_24

    .line 1083
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1086
    :cond_24
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_25

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_25

    .line 1087
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v7, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v8, v7

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1087
    invoke-virtual {v5, v7, v11}, Landroid/widget/ProgressBar;->measure(II)V

    .line 1091
    :cond_25
    return-void

    .line 910
    .end local v3    # "availableWidth":I
    .end local v4    # "leftOfCenter":I
    .end local v8    # "contentWidth":I
    .end local v9    # "maxHeight":I
    .end local v10    # "verticalPadding":I
    .end local v18    # "widthMode":I
    .end local v20    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "homeWidthSpec":I
    .end local v22    # "homeWidth":I
    .end local v25    # "heightMode":I
    .end local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v28    # "paddingLeft":I
    .end local v29    # "paddingRight":I
    .end local v31    # "showTitle":Z
    .end local v34    # "height":I
    .end local v35    # "childSpecHeight":I
    .end local v36    # "exactHeightSpec":I
    .local v2, "widthMode":I
    .local v6, "heightMode":I
    :cond_26
    move/from16 v18, v2

    move/from16 v25, v6

    .end local v2    # "widthMode":I
    .end local v6    # "heightMode":I
    .restart local v18    # "widthMode":I
    .restart local v25    # "heightMode":I
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 904
    .end local v18    # "widthMode":I
    .end local v25    # "heightMode":I
    .restart local v2    # "widthMode":I
    :cond_27
    move/from16 v18, v2

    .end local v2    # "widthMode":I
    .restart local v18    # "widthMode":I
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcelable;

    .line 1287
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1289
    .local v0, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1291
    iget v1, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1294
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 1295
    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1299
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v1, :cond_1

    .line 1300
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1302
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1273
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1274
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1276
    .local v1, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1277
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1280
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1282
    return-object v1
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .line 848
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    .line 849
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;

    .line 844
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 845
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 462
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 463
    .local v0, "showCustom":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 464
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 466
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 467
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 468
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 470
    :cond_2
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .line 1330
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    if-ne v0, p1, :cond_0

    .line 1331
    return-void

    .line 1333
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 1334
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1335
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1310
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1311
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 8
    .param p1, "options"    # I

    .line 599
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v1, p1, v0

    :goto_0
    move v0, v1

    .line 600
    .local v0, "flagsChanged":I
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 602
    and-int/lit8 v1, v0, 0x3f

    if-eqz v1, :cond_11

    .line 604
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 605
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 606
    .local v1, "setUp":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 612
    if-eqz v1, :cond_2

    .line 613
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 617
    .end local v1    # "setUp":Z
    :cond_2
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_5

    .line 618
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 619
    .local v1, "logoVis":Z
    :goto_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 622
    .end local v1    # "logoVis":Z
    :cond_5
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    .line 623
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6

    .line 624
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    goto :goto_4

    .line 626
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 630
    :cond_7
    :goto_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, v2

    .line 631
    .local v1, "showHome":Z
    :goto_5
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_6

    :cond_9
    move v4, v2

    .line 632
    .local v4, "homeAsUp":Z
    :goto_6
    if-nez v1, :cond_a

    if-eqz v4, :cond_a

    move v5, v3

    goto :goto_7

    :cond_a
    move v5, v2

    .line 633
    .local v5, "titleUp":Z
    :goto_7
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 635
    if-nez v1, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v6, :cond_c

    .line 636
    move v6, v2

    goto :goto_8

    :cond_c
    const/16 v6, 0x8

    .line 637
    .local v6, "homeVis":I
    :goto_8
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 639
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v7, :cond_e

    .line 640
    and-int/lit8 v7, p1, 0x10

    if-eqz v7, :cond_d

    .line 641
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_9

    .line 643
    :cond_d
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 647
    :cond_e
    :goto_9
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_10

    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_10

    .line 649
    and-int/lit8 v7, p1, 0x20

    if-eqz v7, :cond_f

    .line 650
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 651
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_a

    .line 653
    :cond_f
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 654
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 658
    :cond_10
    :goto_a
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 659
    .end local v1    # "showHome":Z
    .end local v4    # "homeAsUp":Z
    .end local v5    # "titleUp":Z
    .end local v6    # "homeVis":I
    goto :goto_b

    .line 660
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    .line 664
    :goto_b
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 665
    return-void
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 747
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 748
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 751
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 753
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 760
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 761
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 3
    .param p1, "tabs"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 354
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 357
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 358
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 359
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 360
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 361
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 362
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 363
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 366
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 532
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 533
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 679
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 680
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 668
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 669
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 676
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 694
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 695
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .line 687
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 688
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 691
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 380
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 381
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 382
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 384
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 385
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 388
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v1, :cond_3

    .line 389
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 390
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 391
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v2, 0x1020188

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    .line 392
    new-instance v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 396
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 398
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_5

    .line 399
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 399
    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 402
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 403
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    .line 404
    .local v2, "menuView":Landroid/widget/ActionMenuView;
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 405
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    if-eq v3, p0, :cond_4

    .line 406
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 408
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    goto :goto_0

    .line 410
    .end local v2    # "menuView":Landroid/widget/ActionMenuView;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 412
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    .line 412
    invoke-virtual {v4, v5, v6}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 415
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 417
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 418
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 419
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 420
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    .line 421
    .restart local v2    # "menuView":Landroid/widget/ActionMenuView;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    .line 422
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 423
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_6

    .line 424
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 426
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    .line 427
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    goto :goto_0

    .line 430
    :cond_7
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    :goto_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 434
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "presenterCallback"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 1340
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 1344
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1346
    :cond_1
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    .line 370
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1323
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 1324
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1325
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1326
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1318
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1319
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1320
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1314
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1315
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 1305
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1306
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 702
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 703
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_4

    .line 704
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 711
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 706
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 716
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 736
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_3

    .line 737
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 718
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    .line 719
    new-instance v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v3, 0x10102d7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 721
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    const v2, 0x1020182

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setId(I)V

    .line 722
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v3, 0x10102f4

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 724
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 726
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 727
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v1, v2, :cond_2

    .line 730
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 732
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 733
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 734
    nop

    .line 741
    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 742
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 744
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 3
    .param p1, "splitActionBar"    # Z

    .line 301
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_8

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 304
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    :cond_0
    if-eqz p1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 316
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->requestLayout()V

    .line 318
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7

    .line 323
    if-nez p1, :cond_6

    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_2

    .line 328
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 336
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 338
    :cond_8
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 519
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 520
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 521
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 525
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 526
    .local v0, "visible":Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    .end local v0    # "visible":Z
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 529
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 484
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 485
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .line 265
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 266
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 494
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 495
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 497
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 280
    const/4 v0, 0x0

    return v0
.end method
