.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ScaleType;,
        Landroid/widget/ImageView$ImageDrawableCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageView"

.field private static sCompatAdjustViewBounds:Z

.field private static sCompatDone:Z

.field private static sCompatDrawableVisibilityDispatch:Z

.field private static sCompatUseCorrectStreamDensity:Z

.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mAdjustViewBounds:Z

.field private mAlpha:I

.field private mBaseline:I

.field private mBaselineAlignBottom:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableTintList:Landroid/content/res/ColorStateList;

.field private mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mDrawableWidth:I

.field private mHasColorFilter:Z

.field private mHasDrawableTint:Z

.field private mHasDrawableTintMode:Z

.field private mHaveFrame:Z

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private final mTempDst:Landroid/graphics/RectF;

.field private final mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private final mViewAlphaScale:I

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 151
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 1042
    new-array v0, v6, [Landroid/graphics/Matrix$ScaleToFit;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 103
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 104
    iput-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 105
    const v1, 0x7fffffff

    iput v1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 106
    iput v1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 110
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 112
    const/16 v2, 0xff

    iput v2, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 113
    const/16 v2, 0x100

    iput v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 114
    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 116
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 118
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 119
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 120
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 121
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 123
    iput-object v1, p0, Landroid/widget/ImageView;->mState:[I

    .line 124
    iput-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 125
    iput v0, p0, Landroid/widget/ImageView;->mLevel:I

    .line 128
    iput-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 131
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 132
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 136
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 137
    iput-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 164
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 103
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 104
    iput-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 105
    const v1, 0x7fffffff

    iput v1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 106
    iput v1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 109
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 110
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 112
    const/16 v3, 0xff

    iput v3, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 113
    const/16 v4, 0x100

    iput v4, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 114
    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 116
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 118
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 119
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 120
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 121
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 123
    iput-object v2, p0, Landroid/widget/ImageView;->mState:[I

    .line 124
    iput-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 125
    iput v0, p0, Landroid/widget/ImageView;->mLevel:I

    .line 128
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 131
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 132
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 136
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 137
    iput-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 179
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 182
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImportantForAutofill()I

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_0

    .line 183
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImportantForAutofill(I)V

    .line 186
    :cond_0
    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 189
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 190
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 191
    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :cond_1
    const/4 v7, 0x6

    invoke-virtual {v4, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 195
    const/16 v7, 0x8

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 197
    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 198
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 199
    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 201
    const/4 v1, 0x1

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 202
    .local v5, "index":I
    if-ltz v5, :cond_2

    .line 203
    sget-object v7, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v7, v7, v5

    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 206
    :cond_2
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 207
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 208
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 212
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v7, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 213
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 216
    :cond_3
    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 217
    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget-object v7, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 219
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 222
    :cond_4
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 224
    const/16 v1, 0xa

    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 225
    .local v1, "alpha":I
    if-eq v1, v3, :cond_5

    .line 226
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 229
    :cond_5
    const/4 v2, 0x7

    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 232
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    return-void
.end method

.method static synthetic access$002(Landroid/widget/ImageView;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 95
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$102(Landroid/widget/ImageView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    return p1
.end method

.method private applyColorMod()V
    .locals 2

    .line 1548
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    if-eqz v0, :cond_1

    .line 1549
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1550
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1553
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 1554
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v1, v1, 0x100

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1556
    :cond_1
    return-void
.end method

.method private applyImageTint()V
    .locals 2

    .line 671
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    if-eqz v0, :cond_3

    .line 672
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 674
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 678
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    if-eqz v0, :cond_2

    .line 679
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 684
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 685
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 688
    :cond_3
    return-void
.end method

.method private configureBounds()V
    .locals 11

    .line 1208
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 1212
    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1213
    .local v0, "dwidth":I
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1215
    .local v1, "dheight":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 1216
    .local v2, "vwidth":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    .line 1218
    .local v3, "vheight":I
    const/4 v4, 0x0

    if-ltz v0, :cond_1

    if-ne v2, v0, :cond_2

    :cond_1
    if-ltz v1, :cond_3

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x1

    .line 1221
    .local v5, "fits":Z
    :goto_1
    const/4 v6, 0x0

    if-lez v0, :cond_d

    if-lez v1, :cond_d

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v8, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v7, v8, :cond_4

    goto/16 :goto_4

    .line 1230
    :cond_4
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1232
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v7, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v7, :cond_6

    .line 1234
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1235
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_5

    .line 1237
    :cond_5
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_5

    .line 1239
    :cond_6
    if-eqz v5, :cond_7

    .line 1241
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_5

    .line 1242
    :cond_7
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne v4, v6, :cond_8

    .line 1244
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1245
    iget-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v6, v2, v0

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    sub-int v8, v3, v1

    int-to-float v8, v8

    mul-float/2addr v8, v7

    .line 1246
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 1245
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_5

    .line 1247
    :cond_8
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v6, :cond_a

    .line 1248
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1251
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v6, 0x0

    .line 1253
    .local v6, "dy":F
    mul-int v8, v0, v3

    mul-int v9, v2, v1

    if-le v8, v9, :cond_9

    .line 1254
    int-to-float v8, v3

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 1255
    .local v8, "scale":F
    int-to-float v9, v2

    int-to-float v10, v0

    mul-float/2addr v10, v8

    sub-float/2addr v9, v10

    mul-float v4, v9, v7

    goto :goto_2

    .line 1257
    .end local v8    # "scale":F
    :cond_9
    int-to-float v8, v2

    int-to-float v9, v0

    div-float/2addr v8, v9

    .line 1258
    .restart local v8    # "scale":F
    int-to-float v9, v3

    int-to-float v10, v1

    mul-float/2addr v10, v8

    sub-float/2addr v9, v10

    mul-float v6, v9, v7

    .line 1261
    :goto_2
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1262
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1263
    .end local v4    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "scale":F
    goto :goto_5

    :cond_a
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v6, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v6, :cond_c

    .line 1264
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1269
    if-gt v0, v2, :cond_b

    if-gt v1, v3, :cond_b

    .line 1270
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "scale":F
    goto :goto_3

    .line 1272
    .end local v4    # "scale":F
    :cond_b
    int-to-float v4, v2

    int-to-float v6, v0

    div-float/2addr v4, v6

    int-to-float v6, v3

    int-to-float v8, v1

    div-float/2addr v6, v8

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1276
    .restart local v4    # "scale":F
    :goto_3
    int-to-float v6, v2

    int-to-float v8, v0

    mul-float/2addr v8, v4

    sub-float/2addr v6, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 1277
    .local v6, "dx":F
    int-to-float v8, v3

    int-to-float v9, v1

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 1279
    .local v7, "dy":F
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1280
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1281
    .end local v4    # "scale":F
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    goto :goto_5

    .line 1283
    :cond_c
    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v6, v0

    int-to-float v7, v1

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1284
    iget-object v4, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1286
    iget-object v4, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1287
    iget-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v7, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iget-object v8, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v8}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_5

    .line 1225
    :cond_d
    :goto_4
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1226
    iput-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1290
    :goto_5
    return-void

    .line 1209
    .end local v0    # "dwidth":I
    .end local v1    # "dheight":I
    .end local v2    # "vwidth":I
    .end local v3    # "vheight":I
    .end local v5    # "fits":Z
    :cond_e
    :goto_6
    return-void
.end method

.method private getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 936
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 940
    :try_start_0
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 941
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v1

    .line 942
    .local v1, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v3, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v4, v1, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 943
    .end local v1    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :catch_0
    move-exception v1

    .line 944
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 946
    :cond_0
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file"

    .line 947
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 959
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 949
    :cond_2
    :goto_0
    :try_start_1
    sget-boolean v1, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 950
    .local v1, "res":Landroid/content/res/Resources;
    :goto_1
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v3

    .line 952
    .local v3, "src":Landroid/graphics/ImageDecoder$Source;
    sget-object v4, Landroid/widget/-$$Lambda$ImageView$GWf2-Z-LHjSbTbrF-I3WzfR0LeM;->INSTANCE:Landroid/widget/-$$Lambda$ImageView$GWf2-Z-LHjSbTbrF-I3WzfR0LeM;

    invoke-static {v3, v4}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 955
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v3    # "src":Landroid/graphics/ImageDecoder$Source;
    :catch_1
    move-exception v1

    .line 956
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 961
    :goto_2
    return-object v2
.end method

.method private initImageView()V
    .locals 4

    .line 238
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 239
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 241
    sget-boolean v0, Landroid/widget/ImageView;->sCompatDone:Z

    if-nez v0, :cond_3

    .line 242
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 243
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    .line 244
    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    .line 245
    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    move v2, v3

    nop

    :cond_2
    sput-boolean v2, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    .line 246
    sput-boolean v3, Landroid/widget/ImageView;->sCompatDone:Z

    .line 248
    .end local v0    # "targetSdkVersion":I
    :cond_3
    return-void
.end method

.method private isFilledByImage()Z
    .locals 8

    .line 1567
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1568
    return v1

    .line 1571
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1572
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1573
    .local v2, "matrix":Landroid/graphics/Matrix;
    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1574
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gtz v4, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1575
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 1574
    move v1, v3

    goto :goto_0

    .line 1575
    :cond_1
    nop

    .line 1574
    :goto_0
    return v1

    .line 1576
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1577
    iget-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 1578
    .local v4, "boundsSrc":Landroid/graphics/RectF;
    iget-object v5, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 1579
    .local v5, "boundsDst":Landroid/graphics/RectF;
    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1580
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1581
    iget v6, v5, Landroid/graphics/RectF;->left:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    iget v6, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    iget v6, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 1582
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 1581
    move v1, v3

    goto :goto_1

    .line 1582
    :cond_3
    nop

    .line 1581
    :goto_1
    return v1

    .line 1585
    .end local v4    # "boundsSrc":Landroid/graphics/RectF;
    .end local v5    # "boundsDst":Landroid/graphics/RectF;
    :cond_4
    return v1
.end method

.method static synthetic lambda$getDrawableFromUri$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1
    .param p0, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p1, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p2, "s"    # Landroid/graphics/ImageDecoder$Source;

    .line 953
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 954
    return-void
.end method

.method private resizeFromDrawable()V
    .locals 4

    .line 1019
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1020
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 1021
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1022
    .local v1, "w":I
    if-gez v1, :cond_0

    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1023
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1024
    .local v2, "h":I
    if-gez v2, :cond_1

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1025
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v2, v3, :cond_3

    .line 1026
    :cond_2
    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1027
    iput v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1028
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1031
    .end local v1    # "w":I
    .end local v2    # "h":I
    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .param p1, "desiredSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "measureSpec"    # I

    .line 1175
    move v0, p1

    .line 1176
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1177
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1178
    .local v2, "specSize":I
    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 1193
    :cond_0
    move v0, v2

    goto :goto_0

    .line 1183
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1184
    goto :goto_0

    .line 1189
    :cond_2
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1190
    nop

    .line 1196
    :goto_0
    return v0
.end method

.method private resolveUri()V
    .locals 5

    .line 902
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 903
    return-void

    .line 906
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    .line 907
    return-void

    .line 910
    :cond_1
    const/4 v0, 0x0

    .line 912
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/widget/ImageView;->mResource:I

    if-eqz v1, :cond_2

    .line 914
    :try_start_0
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 915
    :catch_0
    move-exception v1

    .line 916
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/ImageView;->mResource:I

    .line 919
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 920
    :cond_2
    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 921
    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 923
    if-nez v0, :cond_3

    .line 924
    const-string v1, "ImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 932
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 933
    return-void

    .line 929
    :cond_4
    return-void
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 2
    .param p0, "st"    # Landroid/widget/ImageView$ScaleType;

    .line 1051
    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 977
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 981
    :cond_0
    const/4 v0, 0x0

    .line 983
    .local v0, "sameDrawable":Z
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 984
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, p1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    move v0, v2

    .line 985
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 986
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 987
    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 988
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 992
    :cond_2
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 994
    if-eqz p1, :cond_9

    .line 995
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 996
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 997
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 998
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1000
    :cond_3
    if-eqz v0, :cond_4

    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v1, :cond_8

    .line 1001
    :cond_4
    sget-boolean v1, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v1, :cond_6

    .line 1002
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1003
    :goto_1
    move v4, v3

    goto :goto_2

    .line 1002
    :cond_5
    goto :goto_2

    .line 1003
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    move v1, v4

    .line 1004
    .local v1, "visible":Z
    invoke-virtual {p1, v1, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1006
    .end local v1    # "visible":Z
    :cond_8
    iget v1, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1007
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1008
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1009
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 1010
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1012
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    goto :goto_3

    .line 1014
    :cond_9
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1016
    :goto_3
    return-void
.end method


# virtual methods
.method public animateTransform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 1314
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1315
    return-void

    .line 1317
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1318
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1320
    :cond_1
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1321
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 1322
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1324
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1326
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1327
    return-void
.end method

.method public final clearColorFilter()V
    .locals 1

    .line 1456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1457
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1305
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1307
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1310
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1294
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1296
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1297
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1301
    :cond_0
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 1634
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1635
    const-string v0, "layout:baseline"

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBaseline()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1636
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1628
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdjustViewBounds()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    return v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .line 1375
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 1378
    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    return v0
.end method

.method public getBaselineAlignBottom()Z
    .locals 1

    .line 1421
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1479
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getCropToPadding()Z
    .locals 1

    .line 881
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 428
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-ne v0, v1, :cond_0

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 432
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageAlpha()I
    .locals 1

    .line 1509
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 843
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 844
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0

    .line 846
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 638
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 667
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 392
    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 354
    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 832
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 290
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 263
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 264
    if-eqz p1, :cond_1

    .line 266
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 267
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 268
    .local v1, "h":I
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_1

    .line 269
    :cond_0
    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 270
    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 272
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 282
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 284
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    :goto_0
    return-void
.end method

.method public isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foreground"    # Landroid/graphics/drawable/Drawable;

    .line 1642
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1643
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 1644
    .local v0, "lackFocusState":Z
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public isOpaque()Z
    .locals 2

    .line 1560
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1561
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v0, v0, 0x100

    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 1563
    invoke-direct {p0}, Landroid/widget/ImageView;->isFilledByImage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1560
    :goto_1
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 257
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 258
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 259
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1610
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1612
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_1

    .line 1613
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1615
    :cond_1
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 966
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_0

    .line 967
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 968
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v0, :cond_1

    .line 969
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    return-object v0

    .line 971
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    .line 972
    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mState:[I

    .line 971
    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1619
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1621
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1624
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1331
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1333
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1334
    return-void

    .line 1337
    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 1341
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/ImageView;->mPaddingTop:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    if-nez v0, :cond_2

    .line 1342
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1344
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1345
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1347
    iget-boolean v1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v1, :cond_3

    .line 1348
    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    .line 1349
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    .line 1350
    .local v2, "scrollY":I
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ImageView;->mRight:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/ImageView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/ImageView;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1355
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_3
    iget v1, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ImageView;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1357
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_4

    .line 1358
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1360
    :cond_4
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1361
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1363
    .end local v0    # "saveCount":I
    :goto_0
    return-void

    .line 1338
    :cond_5
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1056
    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 1061
    const/4 v3, 0x0

    .line 1064
    .local v3, "desiredAspect":F
    const/4 v4, 0x0

    .line 1067
    .local v4, "resizeWidth":Z
    const/4 v5, 0x0

    .line 1069
    .local v5, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 1070
    .local v6, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1072
    .local v7, "heightSpecMode":I
    iget-object v8, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 1074
    const/4 v8, -0x1

    iput v8, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1075
    iput v8, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1076
    move v8, v9

    .local v8, "h":I
    move v10, v9

    .line 1093
    .local v10, "w":I
    move/from16 v23, v10

    move v10, v8

    move/from16 v8, v23

    goto :goto_2

    .line 1078
    .end local v8    # "h":I
    .end local v10    # "w":I
    :cond_0
    iget v8, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1079
    .local v8, "w":I
    iget v10, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1080
    .local v10, "h":I
    if-gtz v8, :cond_1

    const/4 v8, 0x1

    .line 1081
    :cond_1
    if-gtz v10, :cond_2

    const/4 v10, 0x1

    .line 1085
    :cond_2
    iget-boolean v11, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    if-eqz v11, :cond_5

    .line 1086
    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v6, v12, :cond_3

    move v13, v11

    goto :goto_0

    :cond_3
    move v13, v9

    :goto_0
    move v4, v13

    .line 1087
    if-eq v7, v12, :cond_4

    goto :goto_1

    :cond_4
    move v11, v9

    :goto_1
    move v5, v11

    .line 1089
    int-to-float v11, v8

    int-to-float v12, v10

    div-float v3, v11, v12

    .line 1093
    :cond_5
    :goto_2
    iget v11, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    .line 1094
    .local v11, "pleft":I
    iget v12, v0, Landroid/widget/ImageView;->mPaddingRight:I

    .line 1095
    .local v12, "pright":I
    iget v13, v0, Landroid/widget/ImageView;->mPaddingTop:I

    .line 1096
    .local v13, "ptop":I
    iget v14, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    .line 1101
    .local v14, "pbottom":I
    if-nez v4, :cond_7

    if-eqz v5, :cond_6

    goto :goto_3

    .line 1160
    :cond_6
    add-int v15, v11, v12

    add-int/2addr v8, v15

    .line 1161
    add-int v15, v13, v14

    add-int/2addr v10, v15

    .line 1163
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v15

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1164
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v15

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1166
    invoke-static {v8, v1, v9}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v15

    .line 1167
    .local v15, "widthSize":I
    invoke-static {v10, v2, v9}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v9

    move/from16 v16, v6

    move/from16 v18, v7

    goto/16 :goto_6

    .line 1108
    .end local v15    # "widthSize":I
    :cond_7
    :goto_3
    add-int v9, v8, v11

    add-int/2addr v9, v12

    iget v15, v0, Landroid/widget/ImageView;->mMaxWidth:I

    invoke-direct {v0, v9, v15, v1}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v15

    .line 1111
    .restart local v15    # "widthSize":I
    add-int v9, v10, v13

    add-int/2addr v9, v14

    move/from16 v16, v6

    iget v6, v0, Landroid/widget/ImageView;->mMaxHeight:I

    .end local v6    # "widthSpecMode":I
    .local v16, "widthSpecMode":I
    invoke-direct {v0, v9, v6, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v9

    .line 1113
    .local v9, "heightSize":I
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_d

    .line 1115
    sub-int v6, v15, v11

    sub-int/2addr v6, v12

    int-to-float v6, v6

    sub-int v17, v9, v13

    move/from16 v18, v7

    sub-int v7, v17, v14

    .end local v7    # "heightSpecMode":I
    .local v18, "heightSpecMode":I
    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 1118
    .local v6, "actualAspect":F
    sub-float v7, v6, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v19, v6

    float-to-double v6, v7

    .end local v6    # "actualAspect":F
    .local v19, "actualAspect":F
    const-wide v20, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v6, v6, v20

    if-lez v6, :cond_c

    .line 1120
    const/4 v6, 0x0

    .line 1123
    .local v6, "done":Z
    if-eqz v4, :cond_9

    .line 1124
    sub-int v7, v9, v13

    sub-int/2addr v7, v14

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    add-int/2addr v7, v11

    add-int/2addr v7, v12

    .line 1128
    .local v7, "newWidth":I
    if-nez v5, :cond_8

    sget-boolean v17, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    if-nez v17, :cond_8

    .line 1129
    move/from16 v22, v6

    iget v6, v0, Landroid/widget/ImageView;->mMaxWidth:I

    .end local v6    # "done":Z
    .local v22, "done":Z
    invoke-direct {v0, v7, v6, v1}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v15

    goto :goto_4

    .line 1132
    .end local v22    # "done":Z
    .restart local v6    # "done":Z
    :cond_8
    move/from16 v22, v6

    .end local v6    # "done":Z
    .restart local v22    # "done":Z
    :goto_4
    if-gt v7, v15, :cond_a

    .line 1133
    move v15, v7

    .line 1134
    const/4 v6, 0x1

    .line 1139
    .end local v7    # "newWidth":I
    .end local v22    # "done":Z
    .restart local v6    # "done":Z
    move/from16 v22, v6

    goto :goto_5

    :cond_9
    move/from16 v22, v6

    .end local v6    # "done":Z
    .restart local v22    # "done":Z
    :cond_a
    :goto_5
    if-nez v22, :cond_c

    if-eqz v5, :cond_c

    .line 1140
    sub-int v6, v15, v11

    sub-int/2addr v6, v12

    int-to-float v6, v6

    div-float/2addr v6, v3

    float-to-int v6, v6

    add-int/2addr v6, v13

    add-int/2addr v6, v14

    .line 1144
    .local v6, "newHeight":I
    if-nez v4, :cond_b

    sget-boolean v7, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    if-nez v7, :cond_b

    .line 1145
    iget v7, v0, Landroid/widget/ImageView;->mMaxHeight:I

    invoke-direct {v0, v6, v7, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v9

    .line 1149
    :cond_b
    if-gt v6, v9, :cond_c

    .line 1150
    nop

    .line 1154
    .end local v9    # "heightSize":I
    .end local v19    # "actualAspect":F
    .end local v22    # "done":Z
    .local v6, "heightSize":I
    move v9, v6

    .end local v6    # "heightSize":I
    .restart local v9    # "heightSize":I
    :cond_c
    goto :goto_6

    .line 1167
    .end local v18    # "heightSpecMode":I
    .local v7, "heightSpecMode":I
    :cond_d
    move/from16 v18, v7

    .end local v7    # "heightSpecMode":I
    .restart local v18    # "heightSpecMode":I
    :goto_6
    move v6, v9

    .line 1170
    .end local v9    # "heightSize":I
    .restart local v6    # "heightSize":I
    invoke-virtual {v0, v15, v6}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 1171
    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 296
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 298
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 299
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 1035
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 1037
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1040
    :cond_0
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 1591
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 1593
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-nez v0, :cond_0

    .line 1594
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1596
    :cond_0
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .param p1, "adjustViewBounds"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 338
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 339
    if-eqz p1, :cond_0

    .line 340
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 342
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1535
    and-int/lit16 p1, p1, 0xff

    .line 1536
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 1537
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 1538
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1539
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1540
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1542
    :cond_0
    return-void
.end method

.method public setBaseline(I)V
    .locals 1
    .param p1, "baseline"    # I

    .line 1393
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    if-eq v0, p1, :cond_0

    .line 1394
    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 1395
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1397
    :cond_0
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .locals 1
    .param p1, "aligned"    # Z

    .line 1408
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_0

    .line 1409
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1410
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1412
    :cond_0
    return-void
.end method

.method public final setColorFilter(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1446
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1447
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1434
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1435
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 1490
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1491
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1492
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 1493
    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1494
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1495
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1497
    :cond_0
    return-void
.end method

.method public setCropToPadding(Z)V
    .locals 1
    .param p1, "cropToPadding"    # Z

    .line 894
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eq v0, p1, :cond_0

    .line 895
    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 896
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 897
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 899
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 1201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 1202
    .local v0, "changed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 1203
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 1204
    return v0
.end method

.method public setImageAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1522
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1523
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 700
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 703
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 705
    :goto_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 561
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 562
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 565
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 566
    .local v0, "oldWidth":I
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 568
    .local v1, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_1

    .line 571
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 573
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 575
    .end local v0    # "oldWidth":I
    .end local v1    # "oldHeight":I
    :cond_2
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 592
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    return-void
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 597
    new-instance v0, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public setImageLevel(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 738
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 739
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 741
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 743
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 858
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    const/4 p1, 0x0

    .line 863
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 864
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 865
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 866
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 867
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 869
    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    .line 471
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 472
    .local v0, "oldWidth":I
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 474
    .local v1, "oldHeight":I
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 476
    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 478
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 480
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_1

    .line 481
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 483
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 484
    return-void
.end method

.method public setImageResourceAsync(I)Ljava/lang/Runnable;
    .locals 5
    .param p1, "resId"    # I

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 491
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 495
    goto :goto_0

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    const/4 p1, 0x0

    .line 497
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v1, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p1}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v1
.end method

.method public setImageState([IZ)V
    .locals 1
    .param p1, "state"    # [I
    .param p2, "merge"    # Z

    .line 716
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    .line 717
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 718
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 720
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 722
    :cond_0
    return-void
.end method

.method public setImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 622
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 625
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 626
    return-void
.end method

.method public setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 653
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 656
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 657
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    .line 524
    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 525
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 527
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 529
    iget v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 530
    .local v0, "oldWidth":I
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 532
    .local v1, "oldHeight":I
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 534
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v2, :cond_2

    .line 535
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 537
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 539
    .end local v0    # "oldWidth":I
    .end local v1    # "oldHeight":I
    :cond_3
    return-void
.end method

.method public setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 543
    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    return-object v1

    .line 544
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    move-object v0, v1

    .line 545
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 547
    const/4 p1, 0x0

    .line 549
    :cond_3
    new-instance v1, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v1
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 417
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 418
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 379
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 380
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 813
    if-eqz p1, :cond_1

    .line 817
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    .line 818
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 820
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 821
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 823
    :cond_0
    return-void

    .line 814
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 726
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 727
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 728
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1601
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1603
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_1

    .line 1604
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1606
    :cond_1
    return-void
.end method

.method public final setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 1463
    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-eq v0, p1, :cond_0

    .line 1464
    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    .line 1465
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1466
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1467
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1469
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 252
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

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
