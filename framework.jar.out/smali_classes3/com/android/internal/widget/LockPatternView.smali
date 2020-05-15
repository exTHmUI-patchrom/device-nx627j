.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;,
        Lcom/android/internal/widget/LockPatternView$SavedState;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$CellState;,
        Lcom/android/internal/widget/LockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static DEBUG:Z = false

.field public static final DEBUG_A11Y:Z = false

.field private static final DRAG_THRESHHOLD:F = 0.0f

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field private static final TAG:Ljava/lang/String; = "LockPatternView"

.field public static final VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field private mAnimatingPeriodStart:J

.field private mAspect:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private final mDotSize:I

.field private final mDotSizeActivated:I

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mErrorColor:I

.field private mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

.field private mFadePattern:Z

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLineFadeStart:[J

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPathWidth:I

.field private final mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private final mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mRegularColor:I

.field private mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mSuccessColor:I

.field private final mTmpInvalidateRect:Landroid/graphics/Rect;

.field private mUseLockPatternDrawable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 928
    const-string v0, "persist.sys.nblog.keyguard_log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/LockPatternView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 282
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 111
    const/4 v1, 0x3

    filled-new-array {v1, v1}, [I

    move-result-object v3

    const-class v4, Z

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 118
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 119
    iput v3, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 122
    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    .line 124
    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 125
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 126
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    .line 131
    const v3, 0x3f19999a    # 0.6f

    iput v3, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    .line 136
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 137
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 138
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 284
    sget-object v3, Lcom/android/internal/R$styleable;->LockPatternView:[I

    const v4, 0x1110066

    const v5, 0x1030499

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 287
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "aspect":Ljava/lang/String;
    const-string v5, "square"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    .line 290
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    .line 291
    :cond_0
    const-string v5, "lock_width"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 292
    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    .line 293
    :cond_1
    const-string v5, "lock_height"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 294
    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    .line 296
    :cond_2
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    .line 299
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternView;->setClickable(Z)V

    .line 302
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 303
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 305
    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    .line 306
    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    .line 307
    const/4 v5, 0x4

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    .line 309
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 310
    .local v5, "pathColor":I
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 314
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050108

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    .line 317
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050109

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105010a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1120105

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    .line 324
    iget-boolean v7, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v7, :cond_3

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080595

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080593

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 329
    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 330
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 332
    filled-new-array {v1, v1}, [I

    move-result-object v2

    const-class v7, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 333
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 334
    move v7, v0

    .local v7, "j":I
    :goto_2
    if-ge v7, v1, :cond_4

    .line 335
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v8, v8, v2

    new-instance v9, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {v9}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    aput-object v9, v8, v7

    .line 336
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v8, v8, v2

    aget-object v8, v8, v7

    iget v9, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/2addr v9, v6

    int-to-float v9, v9

    iput v9, v8, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 337
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v8, v8, v2

    aget-object v8, v8, v7

    iput v2, v8, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 338
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v8, v8, v2

    aget-object v8, v8, v7

    iput v7, v8, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    .line 334
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 333
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 342
    .end local v2    # "i":I
    :cond_5
    const v0, 0x10c000d

    .line 343
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 344
    const v0, 0x10c000e

    .line 345
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 346
    new-instance v0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mAudioManager:Landroid/media/AudioManager;

    .line 349
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 350
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/LockPatternView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .line 68
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LockPatternView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .line 68
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/LockPatternView;I)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/LockPatternView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .line 68
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/LockPatternView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .line 68
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/LockPatternView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .line 68
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/LockPatternView;F)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;
    .param p1, "x1"    # F

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/LockPatternView;F)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;
    .param p1, "x1"    # F

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/LockPatternView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/LockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # J
    .param p5, "x4"    # Landroid/view/animation/Interpolator;
    .param p6, "x5"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p7, "x6"    # Ljava/lang/Runnable;

    .line 68
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/LockPatternView;->startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/LockPatternView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .line 68
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/LockPatternView;)[[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/LockPatternView;I)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v0

    return v0
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .line 742
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 743
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    .line 745
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 747
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyCellAdded()V

    .line 748
    return-void
.end method

.method private calculateLastSegmentAlpha(FFFF)F
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "lastX"    # F
    .param p4, "lastY"    # F

    .line 1229
    sub-float v0, p1, p3

    .line 1230
    .local v0, "diffX":F
    sub-float v1, p2, p4

    .line 1231
    .local v1, "diffY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1232
    .local v2, "dist":F
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float v3, v2, v3

    .line 1233
    .local v3, "frac":F
    const v4, 0x3e99999a    # 0.3f

    sub-float v4, v3, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method private cancelLineAnimations()V
    .locals 6

    .line 1030
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 1031
    move v3, v0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1032
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    .line 1033
    .local v4, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v5, v4, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    .line 1034
    iget-object v5, v4, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1035
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 1036
    iput v5, v4, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 1031
    .end local v4    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1030
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1040
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 815
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    move-result v0

    .line 816
    .local v0, "rowHit":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 817
    return-object v1

    .line 819
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    move-result v2

    .line 820
    .local v2, "columnHit":I
    if-gez v2, :cond_1

    .line 821
    return-object v1

    .line 824
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    .line 825
    return-object v1

    .line 827
    :cond_2
    invoke-static {v0, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    return-object v1
.end method

.method private clearPatternDrawLookup()V
    .locals 8

    .line 614
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 615
    move v3, v0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 616
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v4, v4, v1

    aput-boolean v0, v4, v3

    .line 617
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    add-int v5, v1, v3

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 615
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 614
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 701
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 702
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 705
    const/4 v1, 0x0

    .line 706
    .local v1, "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 707
    .local v2, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 708
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 709
    .local v3, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v6, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int/2addr v5, v6

    .line 710
    .local v5, "dRow":I
    iget v6, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int/2addr v6, v7

    .line 712
    .local v6, "dColumn":I
    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 713
    .local v7, "fillInRow":I
    iget v8, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 715
    .local v8, "fillInColumn":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v4, :cond_1

    .line 716
    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v5, :cond_0

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    add-int v7, v9, v12

    .line 719
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ne v9, v11, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v4, :cond_3

    .line 720
    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v6, :cond_2

    move v10, v4

    nop

    :cond_2
    add-int v8, v9, v10

    .line 723
    :cond_3
    invoke-static {v7, v8}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 726
    .end local v3    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5    # "dRow":I
    .end local v6    # "dColumn":I
    .end local v7    # "fillInRow":I
    .end local v8    # "fillInColumn":I
    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v3, v3, v5

    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v5

    if-nez v3, :cond_5

    .line 728
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 730
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 731
    iget-boolean v3, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz v3, :cond_6

    .line 732
    const/4 v3, 0x3

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/widget/LockPatternView;->performHapticFeedback(II)Z

    .line 736
    :cond_6
    return-object v0

    .line 738
    .end local v1    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v2    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_7
    const/4 v1, 0x0

    return-object v1
.end method

.method private drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "radius"    # F
    .param p5, "partOfPattern"    # Z

    .line 1266
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v2, v2

    int-to-float v3, p2

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v3, v3

    add-int/lit8 v4, p3, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v4, v4

    add-int/lit8 v5, p2, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1271
    .local v0, "dst":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float v1, p4, v1

    .line 1274
    .local v1, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1275
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1276
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1277
    if-eqz p5, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 1280
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1278
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1282
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1283
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFFZF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "radius"    # F
    .param p5, "partOfPattern"    # Z
    .param p6, "alpha"    # F

    .line 1256
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p5}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1257
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1258
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1259
    return-void
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    .line 1075
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .param p1, "row"    # I

    .line 1079
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 6
    .param p1, "x"    # F

    .line 857
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 858
    .local v0, "squareWidth":F
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 860
    .local v1, "hitSize":F
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 861
    .local v2, "offset":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 863
    int-to-float v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    .line 864
    .local v4, "hitLeft":F
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float v5, v4, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 865
    return v3

    .line 861
    .end local v4    # "hitLeft":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 868
    .end local v3    # "i":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private getCurrentColor(Z)I
    .locals 3
    .param p1, "partOfPattern"    # Z

    .line 1237
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_1

    .line 1242
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    return v0

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1247
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    return v0

    .line 1239
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    return v0
.end method

.method private getRowHit(F)I
    .locals 6
    .param p1, "y"    # F

    .line 837
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 838
    .local v0, "squareHeight":F
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    mul-float/2addr v1, v0

    .line 840
    .local v1, "hitSize":F
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v2, v2

    sub-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 841
    .local v2, "offset":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 843
    int-to-float v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    .line 844
    .local v4, "hitTop":F
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_0

    add-float v5, v4, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 845
    return v3

    .line 841
    .end local v4    # "hitTop":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 848
    .end local v3    # "i":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1042
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1044
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1045
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    .line 1046
    .local v2, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v2, :cond_0

    .line 1047
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1048
    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1049
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    goto :goto_0

    .line 1050
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v3, :cond_1

    .line 1051
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1052
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 1054
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1055
    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 1056
    .local v3, "startX":F
    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    .line 1058
    .local v4, "startY":F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1059
    .local v5, "widthOffset":F
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    div-float/2addr v7, v6

    .line 1061
    .local v7, "heightOffset":F
    sub-float v6, v3, v5

    float-to-int v6, v6

    sub-float v8, v4, v7

    float-to-int v8, v8

    add-float v9, v3, v5

    float-to-int v9, v9

    add-float v10, v4, v7

    float-to-int v10, v10

    invoke-virtual {p0, v6, v8, v9, v10}, Lcom/android/internal/widget/LockPatternView;->invalidate(IIII)V

    .line 1064
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v5    # "widthOffset":F
    .end local v7    # "heightOffset":F
    :cond_2
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1065
    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 1072
    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 943
    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v2, v2

    .line 944
    .local v2, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 945
    .local v3, "historySize":I
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 946
    const/4 v4, 0x0

    .line 947
    .local v4, "invalidateNow":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, v3, 0x1

    if-ge v5, v6, :cond_7

    .line 948
    if-ge v5, v3, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 949
    .local v6, "x":F
    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 950
    .local v7, "y":F
    :goto_2
    invoke-direct {v0, v6, v7}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 951
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 952
    .local v9, "patternSize":I
    if-eqz v8, :cond_2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 953
    invoke-direct {v0, v10}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 954
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 957
    :cond_2
    iget v10, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 958
    .local v10, "dx":F
    iget v11, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    sub-float v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 959
    .local v11, "dy":F
    const/4 v12, 0x0

    cmpl-float v13, v10, v12

    if-gtz v13, :cond_3

    cmpl-float v12, v11, v12

    if-lez v12, :cond_4

    .line 960
    :cond_3
    const/4 v4, 0x1

    .line 963
    :cond_4
    iget-boolean v12, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v12, :cond_6

    if-lez v9, :cond_6

    .line 964
    iget-object v12, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 965
    .local v12, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 966
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v14, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v14}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 967
    .local v14, "lastCellCenterX":F
    iget v15, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 970
    .local v15, "lastCellCenterY":F
    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v17, v3

    sub-float v3, v16, v2

    .line 971
    .local v3, "left":F
    .local v17, "historySize":I
    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v18, v4

    add-float v4, v16, v2

    .line 972
    .local v4, "right":F
    .local v18, "invalidateNow":Z
    invoke-static {v15, v7}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v19, v6

    sub-float v6, v16, v2

    .line 973
    .local v6, "top":F
    .local v19, "x":F
    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v20, v7

    add-float v7, v16, v2

    .line 976
    .local v7, "bottom":F
    .local v20, "y":F
    if-eqz v8, :cond_5

    .line 977
    move/from16 v21, v2

    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .end local v2    # "radius":F
    .local v21, "radius":F
    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v2, v2, v16

    .line 978
    .local v2, "width":F
    move/from16 v22, v9

    iget v9, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .end local v9    # "patternSize":I
    .local v22, "patternSize":I
    mul-float v9, v9, v16

    .line 979
    .local v9, "height":F
    move/from16 v23, v10

    iget v10, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .end local v10    # "dx":F
    .local v23, "dx":F
    invoke-direct {v0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 980
    .local v10, "hitCellCenterX":F
    move/from16 v24, v11

    iget v11, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .end local v11    # "dy":F
    .local v24, "dy":F
    invoke-direct {v0, v11}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 982
    .local v11, "hitCellCenterY":F
    move-object/from16 v25, v8

    sub-float v8, v10, v2

    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v25, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 983
    add-float v8, v10, v2

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 984
    sub-float v8, v11, v9

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 985
    add-float v8, v11, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .end local v2    # "width":F
    .end local v9    # "height":F
    .end local v10    # "hitCellCenterX":F
    .end local v11    # "hitCellCenterY":F
    goto :goto_3

    .line 989
    .end local v21    # "radius":F
    .end local v22    # "patternSize":I
    .end local v23    # "dx":F
    .end local v24    # "dy":F
    .end local v25    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v2, "radius":F
    .restart local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v9, "patternSize":I
    .local v10, "dx":F
    .local v11, "dy":F
    :cond_5
    move/from16 v21, v2

    move-object/from16 v25, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    .end local v2    # "radius":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v9    # "patternSize":I
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    .restart local v21    # "radius":F
    .restart local v22    # "patternSize":I
    .restart local v23    # "dx":F
    .restart local v24    # "dy":F
    .restart local v25    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    :goto_3
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 990
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 989
    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/Rect;->union(IIII)V

    .end local v3    # "left":F
    .end local v4    # "right":F
    .end local v6    # "top":F
    .end local v7    # "bottom":F
    .end local v12    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v19    # "x":F
    .end local v20    # "y":F
    .end local v22    # "patternSize":I
    .end local v23    # "dx":F
    .end local v24    # "dy":F
    .end local v25    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    goto :goto_4

    .line 947
    .end local v17    # "historySize":I
    .end local v18    # "invalidateNow":Z
    .end local v21    # "radius":F
    .restart local v2    # "radius":F
    .local v3, "historySize":I
    .local v4, "invalidateNow":Z
    :cond_6
    move/from16 v21, v2

    move/from16 v17, v3

    move/from16 v18, v4

    .end local v2    # "radius":F
    .end local v3    # "historySize":I
    .end local v4    # "invalidateNow":Z
    .restart local v17    # "historySize":I
    .restart local v18    # "invalidateNow":Z
    .restart local v21    # "radius":F
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v2, v21

    goto/16 :goto_0

    .line 993
    .end local v5    # "i":I
    .end local v17    # "historySize":I
    .end local v18    # "invalidateNow":Z
    .end local v21    # "radius":F
    .restart local v2    # "radius":F
    .restart local v3    # "historySize":I
    .restart local v4    # "invalidateNow":Z
    :cond_7
    move/from16 v21, v2

    move/from16 v17, v3

    .end local v2    # "radius":F
    .end local v3    # "historySize":I
    .restart local v17    # "historySize":I
    .restart local v21    # "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 994
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 997
    if-eqz v4, :cond_8

    .line 998
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 999
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 1000
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1002
    :cond_8
    return-void
.end method

.method private handleActionUp()V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1011
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1012
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->cancelLineAnimations()V

    .line 1013
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternDetected()V

    .line 1015
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v0, :cond_0

    .line 1016
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 1017
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1019
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1027
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 930
    sget-boolean v0, Lcom/android/internal/widget/LockPatternView;->DEBUG:Z

    if-nez v0, :cond_0

    const-string v0, "LockPatternView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    :cond_0
    const-string v0, "LockPatternView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 560
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .line 577
    const v0, 0x104030f

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 578
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 581
    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .line 570
    const v0, 0x1040310

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 571
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 574
    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .line 563
    const v0, 0x1040311

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 567
    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 604
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 605
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 606
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 607
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 657
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_0

    .line 666
    move v0, v1

    goto :goto_0

    .line 659
    :cond_0
    move v0, p2

    .line 660
    goto :goto_0

    .line 662
    :cond_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 663
    nop

    .line 668
    :goto_0
    return v0
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1005
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1006
    return-void
.end method

.method private setPatternInProgress(Z)V
    .locals 1
    .param p1, "progress"    # Z

    .line 936
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 937
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 938
    return-void
.end method

.method private startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 10
    .param p1, "cell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .line 751
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v0, v0, v1

    .line 752
    .local v0, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v9, Lcom/android/internal/widget/LockPatternView$4;

    invoke-direct {v9, p0, v0}, Lcom/android/internal/widget/LockPatternView$4;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    const-wide/16 v5, 0x60

    move-object v2, p0

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/widget/LockPatternView;->startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    .line 761
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 762
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v6

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 761
    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternView;->startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    .line 763
    return-void
.end method

.method private startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    move-object v9, p0

    move-object v10, p1

    move/from16 v11, p5

    .line 499
    move/from16 v12, p3

    iput v12, v10, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 500
    iput v11, v10, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 501
    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, p7

    iput v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    .line 503
    iget v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 504
    invoke-direct {v9, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v0

    add-float v0, v0, p4

    .line 503
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    .line 505
    iget v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    invoke-direct {v9, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    .line 506
    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, p6

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    .line 507
    iget-object v0, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 508
    iget-object v0, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 509
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 511
    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 512
    invoke-direct {v9, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v0

    add-float v2, v0, v11

    .line 511
    move-object v0, v9

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 513
    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v2, v0, p7

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 515
    new-instance v8, Lcom/android/internal/widget/LockPatternView$3;

    move-object/from16 v7, p13

    invoke-direct {v8, v9, v10, v7}, Lcom/android/internal/widget/LockPatternView$3;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    move-object v1, v10

    move v2, v12

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView;->startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 526
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 527
    return-void
.end method

.method private startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 16
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 466
    move/from16 v11, p2

    iput v11, v10, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 467
    move/from16 v12, p4

    iput v12, v10, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 468
    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p6

    iput v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 469
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 470
    .local v13, "animator":Landroid/animation/ValueAnimator;
    move-wide/from16 v7, p10

    invoke-virtual {v13, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 471
    move-wide/from16 v5, p8

    invoke-virtual {v13, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 472
    move-object/from16 v14, p12

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    new-instance v4, Lcom/android/internal/widget/LockPatternView$1;

    move-object v0, v4

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v10, v4

    move/from16 v4, p3

    move v5, v12

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView$1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V

    invoke-virtual {v13, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 483
    new-instance v0, Lcom/android/internal/widget/LockPatternView$2;

    move-object/from16 v1, p13

    invoke-direct {v0, v9, v1}, Lcom/android/internal/widget/LockPatternView$2;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 491
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 492
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
    .locals 9
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .line 767
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 768
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v8, Lcom/android/internal/widget/LockPatternView$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternView$5;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 777
    new-instance v1, Lcom/android/internal/widget/LockPatternView$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/LockPatternView$6;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 783
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 784
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 785
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 786
    iput-object v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 787
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p7, "endRunnable"    # Ljava/lang/Runnable;

    .line 791
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 792
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/internal/widget/LockPatternView$7;

    invoke-direct {v1, p0, p6}, Lcom/android/internal/widget/LockPatternView$7;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 799
    if-eqz p7, :cond_0

    .line 800
    new-instance v1, Lcom/android/internal/widget/LockPatternView$8;

    invoke-direct {v1, p0, p7}, Lcom/android/internal/widget/LockPatternView$8;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 807
    :cond_0
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 808
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 809
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 810
    return-void
.end method

.method private startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "endAlpha"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 532
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 534
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 535
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 536
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 537
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 538
    invoke-virtual {v0, p8}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 539
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 540
    return-void
.end method

.method private startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p2, "endValue"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;FJJ",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .line 544
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, p1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 545
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 546
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 547
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 548
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 549
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 550
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .line 587
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 588
    return-void
.end method

.method public disableInput()V
    .locals 1

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 628
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 594
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 595
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 596
    return v0
.end method

.method public enableInput()V
    .locals 1

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 635
    return-void
.end method

.method public getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v7, p0

    .line 1084
    move-object/from16 v8, p1

    iget-object v9, v7, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1085
    .local v9, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1086
    .local v10, "count":I
    iget-object v11, v7, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 1088
    .local v11, "drawLookup":[[Z
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v13, 0x1

    if-ne v0, v1, :cond_3

    .line 1093
    add-int/lit8 v0, v10, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    .line 1094
    .local v0, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v7, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    rem-int/2addr v1, v0

    .line 1096
    .local v1, "spotInCycle":I
    div-int/lit16 v2, v1, 0x2bc

    .line 1098
    .local v2, "numCircles":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 1099
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1100
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1101
    .local v4, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    aget-object v5, v11, v5

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v6

    aput-boolean v13, v5, v6

    .line 1099
    .end local v4    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1106
    .end local v3    # "i":I
    :cond_0
    if-lez v2, :cond_1

    if-ge v2, v10, :cond_1

    move v3, v13

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1109
    .local v3, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 1110
    rem-int/lit16 v4, v1, 0x2bc

    int-to-float v4, v4

    const/high16 v5, 0x442f0000    # 700.0f

    div-float/2addr v4, v5

    .line 1114
    .local v4, "percentageOfNextCircle":F
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1115
    .local v5, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v6, v5, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v7, v6}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v6

    .line 1116
    .local v6, "centerX":F
    iget v14, v5, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v7, v14}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v14

    .line 1118
    .local v14, "centerY":F
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1119
    .local v15, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v12, v15, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 1120
    invoke-direct {v7, v12}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v12

    sub-float/2addr v12, v6

    mul-float/2addr v12, v4

    .line 1121
    .local v12, "dx":F
    iget v13, v15, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 1122
    invoke-direct {v7, v13}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v13

    sub-float/2addr v13, v14

    mul-float/2addr v13, v4

    .line 1123
    .local v13, "dy":F
    move/from16 v18, v0

    add-float v0, v6, v12

    .end local v0    # "oneCycle":I
    .local v18, "oneCycle":I
    iput v0, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1124
    add-float v0, v14, v13

    iput v0, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .end local v4    # "percentageOfNextCircle":F
    .end local v5    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v6    # "centerX":F
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    .end local v14    # "centerY":F
    .end local v15    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    goto :goto_2

    .line 1127
    .end local v18    # "oneCycle":I
    .restart local v0    # "oneCycle":I
    :cond_2
    move/from16 v18, v0

    .end local v0    # "oneCycle":I
    .restart local v18    # "oneCycle":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1130
    .end local v1    # "spotInCycle":I
    .end local v2    # "numCircles":I
    .end local v3    # "needToUpdateInProgressPoint":Z
    .end local v18    # "oneCycle":I
    :cond_3
    iget-object v12, v7, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 1131
    .local v12, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    .line 1134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    const/4 v14, 0x3

    if-ge v13, v14, :cond_7

    .line 1135
    invoke-direct {v7, v13}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 1136
    .local v15, "centerY":F
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_4
    move v6, v0

    .end local v0    # "j":I
    .local v6, "j":I
    if-ge v6, v14, :cond_6

    .line 1137
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v0, v0, v13

    aget-object v5, v0, v6

    .line 1138
    .local v5, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-direct {v7, v6}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v4

    .line 1139
    .local v4, "centerX":F
    iget v3, v5, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 1141
    .local v3, "translationY":F
    iget-boolean v0, v7, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v0, :cond_4

    .line 1142
    iget v2, v5, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v0, v11, v13

    aget-boolean v18, v0, v6

    move-object v0, v7

    move-object v1, v8

    move/from16 v19, v2

    move v2, v13

    move/from16 v20, v3

    move v3, v6

    .end local v3    # "translationY":F
    .local v20, "translationY":F
    move v14, v4

    move/from16 v4, v19

    .end local v4    # "centerX":F
    .local v14, "centerX":F
    move-object/from16 v21, v12

    move-object v12, v5

    move/from16 v5, v18

    .end local v5    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .local v12, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .local v21, "currentPath":Landroid/graphics/Path;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternView;->drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V

    .line 1136
    .end local v6    # "j":I
    .end local v12    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local v14    # "centerX":F
    .end local v20    # "translationY":F
    .local v19, "j":I
    :goto_5
    move/from16 v19, v6

    goto :goto_6

    .line 1144
    .end local v19    # "j":I
    .end local v21    # "currentPath":Landroid/graphics/Path;
    .restart local v3    # "translationY":F
    .restart local v4    # "centerX":F
    .restart local v5    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .restart local v6    # "j":I
    .local v12, "currentPath":Landroid/graphics/Path;
    :cond_4
    move/from16 v20, v3

    move v14, v4

    move-object/from16 v21, v12

    move-object v12, v5

    .end local v3    # "translationY":F
    .end local v4    # "centerX":F
    .end local v5    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .local v12, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .restart local v14    # "centerX":F
    .restart local v20    # "translationY":F
    .restart local v21    # "currentPath":Landroid/graphics/Path;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, v12, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    if-eqz v0, :cond_5

    .line 1145
    move-object v0, v8

    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 1146
    .local v0, "displayListCanvas":Landroid/view/DisplayListCanvas;
    iget-object v1, v12, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v2, v12, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v3, v12, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget-object v4, v12, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 1148
    .end local v0    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    goto :goto_5

    .line 1149
    :cond_5
    float-to-int v0, v14

    int-to-float v2, v0

    float-to-int v0, v15

    int-to-float v0, v0

    add-float v3, v0, v20

    iget v4, v12, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v0, v11, v13

    aget-boolean v5, v0, v6

    iget v1, v12, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    move-object v0, v7

    move/from16 v18, v1

    move-object v1, v8

    move/from16 v19, v6

    move/from16 v6, v18

    .end local v6    # "j":I
    .restart local v19    # "j":I
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZF)V

    .line 1136
    .end local v12    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local v14    # "centerX":F
    .end local v20    # "translationY":F
    :goto_6
    add-int/lit8 v0, v19, 0x1

    .end local v19    # "j":I
    .local v0, "j":I
    move-object/from16 v12, v21

    const/4 v14, 0x3

    goto :goto_4

    .line 1134
    .end local v0    # "j":I
    .end local v15    # "centerY":F
    .end local v21    # "currentPath":Landroid/graphics/Path;
    .local v12, "currentPath":Landroid/graphics/Path;
    :cond_6
    move-object/from16 v21, v12

    .end local v12    # "currentPath":Landroid/graphics/Path;
    .restart local v21    # "currentPath":Landroid/graphics/Path;
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .local v0, "i":I
    goto :goto_3

    .line 1159
    .end local v0    # "i":I
    .end local v21    # "currentPath":Landroid/graphics/Path;
    .restart local v12    # "currentPath":Landroid/graphics/Path;
    :cond_7
    move-object/from16 v21, v12

    .end local v12    # "currentPath":Landroid/graphics/Path;
    .restart local v21    # "currentPath":Landroid/graphics/Path;
    iget-boolean v0, v7, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1161
    .local v0, "drawPath":Z
    if-eqz v0, :cond_10

    .line 1162
    iget-object v2, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-direct {v7, v1}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1164
    const/4 v1, 0x0

    .line 1165
    .local v1, "anyCircles":Z
    const/4 v2, 0x0

    .line 1166
    .local v2, "lastX":F
    const/4 v3, 0x0

    .line 1167
    .local v3, "lastY":F
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1168
    .local v4, "elapsedRealtime":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    move/from16 v6, v16

    .end local v16    # "i":I
    .local v6, "i":I
    if-ge v6, v10, :cond_e

    .line 1169
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1174
    .local v13, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v14, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v14, v11, v14

    iget v15, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v14, v14, v15

    if-nez v14, :cond_8

    .line 1175
    nop

    .line 1215
    move/from16 v22, v0

    move-wide/from16 v24, v4

    move-object/from16 v12, v21

    goto/16 :goto_a

    .line 1177
    :cond_8
    const/4 v1, 0x1

    .line 1179
    iget-object v14, v7, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    aget-wide v14, v14, v6

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_9

    .line 1180
    iget-object v14, v7, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    aput-wide v15, v14, v6

    .line 1183
    :cond_9
    iget v14, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v7, v14}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 1184
    .restart local v14    # "centerX":F
    iget v15, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v7, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 1185
    .restart local v15    # "centerY":F
    if-eqz v6, :cond_d

    .line 1187
    iget-object v12, v7, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    aget-wide v16, v12, v6

    move/from16 v22, v0

    move/from16 v23, v1

    sub-long v0, v4, v16

    .end local v0    # "drawPath":Z
    .end local v1    # "anyCircles":Z
    .local v22, "drawPath":Z
    .local v23, "anyCircles":Z
    long-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 1190
    .local v0, "lineFadeVal":I
    iget-object v1, v7, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v12, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v1, v1, v12

    iget v12, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v1, v1, v12

    .line 1191
    .local v1, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    move-object/from16 v12, v21

    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    .line 1192
    .end local v21    # "currentPath":Landroid/graphics/Path;
    .restart local v12    # "currentPath":Landroid/graphics/Path;
    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1193
    move-wide/from16 v24, v4

    iget v4, v1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .end local v4    # "elapsedRealtime":J
    .local v24, "elapsedRealtime":J
    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_b

    iget v4, v1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    const/16 v16, 0x1

    cmpl-float v4, v4, v16

    if-eqz v4, :cond_b

    .line 1194
    iget v4, v1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    iget v5, v1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1195
    iget-boolean v4, v7, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v4, :cond_a

    .line 1196
    iget-object v4, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    .line 1198
    :cond_a
    const/16 v5, 0xff

    iget-object v4, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    .line 1201
    :cond_b
    const/16 v5, 0xff

    invoke-virtual {v12, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1202
    iget-boolean v4, v7, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v4, :cond_c

    .line 1203
    iget-object v4, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    .line 1205
    :cond_c
    iget-object v4, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1208
    :goto_8
    iget-object v4, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v12, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .end local v0    # "lineFadeVal":I
    .end local v1    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    goto :goto_9

    .line 1210
    .end local v12    # "currentPath":Landroid/graphics/Path;
    .end local v22    # "drawPath":Z
    .end local v23    # "anyCircles":Z
    .end local v24    # "elapsedRealtime":J
    .local v0, "drawPath":Z
    .local v1, "anyCircles":Z
    .restart local v4    # "elapsedRealtime":J
    .restart local v21    # "currentPath":Landroid/graphics/Path;
    :cond_d
    move/from16 v22, v0

    move/from16 v23, v1

    move-wide/from16 v24, v4

    move-object/from16 v12, v21

    .end local v0    # "drawPath":Z
    .end local v1    # "anyCircles":Z
    .end local v4    # "elapsedRealtime":J
    .end local v21    # "currentPath":Landroid/graphics/Path;
    .restart local v12    # "currentPath":Landroid/graphics/Path;
    .restart local v22    # "drawPath":Z
    .restart local v23    # "anyCircles":Z
    .restart local v24    # "elapsedRealtime":J
    :goto_9
    move v2, v14

    .line 1211
    move v3, v15

    .line 1168
    .end local v13    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "centerX":F
    .end local v15    # "centerY":F
    add-int/lit8 v16, v6, 0x1

    .end local v6    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v21, v12

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v4, v24

    goto/16 :goto_7

    .line 1215
    .end local v12    # "currentPath":Landroid/graphics/Path;
    .end local v16    # "i":I
    .end local v22    # "drawPath":Z
    .end local v23    # "anyCircles":Z
    .end local v24    # "elapsedRealtime":J
    .restart local v0    # "drawPath":Z
    .restart local v1    # "anyCircles":Z
    .restart local v4    # "elapsedRealtime":J
    .restart local v21    # "currentPath":Landroid/graphics/Path;
    :cond_e
    move/from16 v22, v0

    move-wide/from16 v24, v4

    move-object/from16 v12, v21

    .end local v0    # "drawPath":Z
    .end local v4    # "elapsedRealtime":J
    .end local v21    # "currentPath":Landroid/graphics/Path;
    .restart local v12    # "currentPath":Landroid/graphics/Path;
    .restart local v22    # "drawPath":Z
    .restart local v24    # "elapsedRealtime":J
    :goto_a
    iget-boolean v0, v7, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v0, :cond_f

    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v4, :cond_11

    :cond_f
    if-eqz v1, :cond_11

    .line 1217
    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    .line 1218
    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1219
    iget v0, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v4, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v12, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1221
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v4, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v5, v7, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-direct {v7, v4, v5, v2, v3}, Lcom/android/internal/widget/LockPatternView;->calculateLastSegmentAlpha(FFFF)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1223
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v12, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .end local v1    # "anyCircles":Z
    .end local v2    # "lastX":F
    .end local v3    # "lastY":F
    .end local v24    # "elapsedRealtime":J
    goto :goto_b

    .line 1226
    .end local v12    # "currentPath":Landroid/graphics/Path;
    .end local v22    # "drawPath":Z
    .restart local v0    # "drawPath":Z
    .restart local v21    # "currentPath":Landroid/graphics/Path;
    :cond_10
    move/from16 v22, v0

    move-object/from16 v12, v21

    .end local v0    # "drawPath":Z
    .end local v21    # "currentPath":Landroid/graphics/Path;
    .restart local v12    # "currentPath":Landroid/graphics/Path;
    .restart local v22    # "drawPath":Z
    :cond_11
    :goto_b
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 873
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 875
    .local v0, "action":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 883
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 877
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 878
    goto :goto_0

    .line 880
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 881
    nop

    .line 886
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 887
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 889
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 673
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 674
    .local v0, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 675
    .local v1, "minimumHeight":I
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 676
    .local v2, "viewWidth":I
    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 678
    .local v3, "viewHeight":I
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 686
    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 683
    :pswitch_1
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 684
    goto :goto_0

    .line 680
    :pswitch_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    move v2, v4

    .line 681
    nop

    .line 690
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setMeasuredDimension(II)V

    .line 691
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1296
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    .line 1297
    .local v0, "ss":Lcom/android/internal/widget/LockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1298
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1300
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1298
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1301
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1302
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 1303
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 1304
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 1305
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .line 1287
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    .line 1288
    .local v8, "superState":Landroid/os/Parcelable;
    new-instance v9, Lcom/android/internal/widget/LockPatternView$SavedState;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1289
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1290
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/LockPatternView$1;)V

    .line 1288
    return-object v9
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 639
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 640
    .local v0, "width":I
    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 643
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    sub-int v1, p2, v1

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingBottom:I

    sub-int/2addr v1, v3

    .line 644
    .local v1, "height":I
    int-to-float v3, v1

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 645
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 647
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 649
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 651
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 894
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 899
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 924
    return v1

    .line 911
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_1

    .line 912
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 913
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 914
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 922
    :cond_1
    return v2

    .line 908
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 909
    return v2

    .line 905
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->handleActionUp()V

    .line 906
    return v2

    .line 901
    :pswitch_3
    const-string v0, "onTouchEvent ACTION_DOWN"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->log(Ljava/lang/String;)V

    .line 902
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 903
    return v2

    .line 895
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->log(Ljava/lang/String;)V

    .line 896
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 2
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 431
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 432
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 439
    .local v0, "first":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 440
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 441
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .end local v0    # "first":Lcom/android/internal/widget/LockPatternView$Cell;
    goto :goto_0

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 444
    return-void
.end method

.method public setFadePattern(Z)V
    .locals 0
    .param p1, "fadePattern"    # Z

    .line 385
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    .line 386
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .line 377
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 378
    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .locals 0
    .param p1, "onPatternListener"    # Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 404
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 405
    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 414
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 416
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 417
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 418
    .local v1, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 419
    .end local v1    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 422
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .line 395
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mEnableHapticFeedback:Z

    .line 396
    return-void
.end method

.method public startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 455
    :cond_0
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 459
    :goto_0
    return-void
.end method
