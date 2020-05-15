.class public Landroid/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;,
        Landroid/widget/RadialTimePickerView$OnValueSelectedListener;,
        Landroid/widget/RadialTimePickerView$PickerType;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ANIM_DURATION_NORMAL:I = 0x1f4

.field private static final ANIM_DURATION_TOUCH:I = 0x3c

.field private static final COS_30:[F

.field private static final DEGREES_FOR_ONE_HOUR:I = 0x1e

.field private static final DEGREES_FOR_ONE_MINUTE:I = 0x6

.field public static final HOURS:I = 0x0

.field private static final HOURS_INNER:I = 0x2

.field private static final HOURS_IN_CIRCLE:I = 0xc

.field private static final HOURS_NUMBERS:[I

.field private static final HOURS_NUMBERS_24:[I

.field public static final MINUTES:I = 0x1

.field private static final MINUTES_IN_CIRCLE:I = 0x3c

.field private static final MINUTES_NUMBERS:[I

.field private static final MISSING_COLOR:I = -0xff01

.field private static final NUM_POSITIONS:I = 0xc

.field private static final PM:I = 0x1

.field private static final SELECTOR_CIRCLE:I = 0x0

.field private static final SELECTOR_DOT:I = 0x1

.field private static final SELECTOR_LINE:I = 0x2

.field private static final SIN_30:[F

.field private static final SNAP_PREFER_30S_MAP:[I

.field private static final TAG:Ljava/lang/String; = "RadialTimePickerView"


# instance fields
.field private final HOURS_TO_MINUTES:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/widget/RadialTimePickerView;",
            ">;"
        }
    .end annotation
.end field

.field private mAmOrPm:I

.field private mCenterDotRadius:I

.field mChangedDuringTouch:Z

.field private mCircleRadius:I

.field private mDisabledAlpha:F

.field private mHalfwayDist:I

.field private final mHours12Texts:[Ljava/lang/String;

.field private mHoursToMinutes:F

.field private mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field private final mInnerHours24Texts:[Ljava/lang/String;

.field private mInnerTextHours:[Ljava/lang/String;

.field private final mInnerTextX:[F

.field private final mInnerTextY:[F

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsOnInnerCircle:Z

.field private mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private mMaxDistForOuterNumber:I

.field private mMinDistForInnerNumber:I

.field private mMinutesText:[Ljava/lang/String;

.field private final mMinutesTexts:[Ljava/lang/String;

.field private final mOuterHours24Texts:[Ljava/lang/String;

.field private mOuterTextHours:[Ljava/lang/String;

.field private final mOuterTextX:[[F

.field private final mOuterTextY:[[F

.field private final mPaint:[Landroid/graphics/Paint;

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintCenter:Landroid/graphics/Paint;

.field private final mPaintSelector:[Landroid/graphics/Paint;

.field private final mSelectionDegrees:[I

.field private mSelectorColor:I

.field private mSelectorDotColor:I

.field private mSelectorDotRadius:I

.field private final mSelectorPath:Landroid/graphics/Path;

.field private mSelectorRadius:I

.field private mSelectorStroke:I

.field private mShowHours:Z

.field private final mTextColor:[Landroid/content/res/ColorStateList;

.field private final mTextInset:[I

.field private final mTextSize:[I

.field private final mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 86
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 87
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 88
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 93
    const/16 v1, 0x169

    new-array v1, v1, [I

    sput-object v1, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 96
    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    .line 97
    new-array v1, v0, [F

    sput-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    .line 104
    invoke-static {}, Landroid/widget/RadialTimePickerView;->preparePrefer30sMap()V

    .line 106
    const-wide v1, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 107
    .local v1, "increment":D
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 108
    .local v3, "angle":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 109
    sget-object v6, Landroid/widget/RadialTimePickerView;->COS_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    .line 110
    sget-object v6, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    .line 111
    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    add-double/2addr v3, v6

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "increment":D
    .end local v3    # "angle":D
    .end local v5    # "i":I
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 317
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 320
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 329
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v0, Landroid/widget/RadialTimePickerView$1;

    const-string v1, "hoursToMinutes"

    invoke-direct {v0, p0, v1}, Landroid/widget/RadialTimePickerView$1;-><init>(Landroid/widget/RadialTimePickerView;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    .line 129
    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 130
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 131
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 132
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 134
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Paint;

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 135
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 136
    const/4 v2, 0x3

    new-array v3, v2, [Landroid/graphics/Paint;

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 137
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 141
    new-array v3, v2, [Landroid/content/res/ColorStateList;

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 142
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    .line 143
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    .line 145
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 146
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 148
    new-array v2, v0, [F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 149
    new-array v2, v0, [F

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 151
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 155
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 195
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 959
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 331
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 334
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 335
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010033

    invoke-virtual {v5, v6, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 336
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 338
    const-string/jumbo v5, "sans-serif"

    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 340
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    .line 341
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 342
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 344
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v2

    .line 345
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 346
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 348
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 350
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v3

    .line 351
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 353
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v2

    .line 354
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 356
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    aput-object v6, v5, v1

    .line 357
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 358
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    aget-object v5, v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 360
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 362
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 363
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x10501cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 364
    const v6, 0x10501cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    .line 365
    const v6, 0x10501cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    .line 366
    const v6, 0x10501c3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 368
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const v7, 0x10501d2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v6, v3

    .line 369
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v2

    .line 370
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const v7, 0x10501d1

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    .line 372
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const v7, 0x10501d0

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v6, v3

    .line 373
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v2

    .line 374
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const v7, 0x10501cf

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v6, v1

    .line 376
    iput-boolean v2, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 377
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 378
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 379
    iput v3, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 382
    new-instance v1, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-direct {v1, p0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Landroid/widget/RadialTimePickerView;)V

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 383
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {p0, v1}, Landroid/widget/RadialTimePickerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 385
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-virtual {p0, v2}, Landroid/widget/RadialTimePickerView;->setImportantForAccessibility(I)V

    .line 389
    :cond_0
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initHoursAndMinutesText()V

    .line 390
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 393
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 394
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 395
    .local v6, "currentHour":I
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 397
    .local v0, "currentMinute":I
    invoke-direct {p0, v6, v3, v3}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 398
    invoke-direct {p0, v0, v3}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 400
    invoke-virtual {p0, v2}, Landroid/widget/RadialTimePickerView;->setHapticFeedbackEnabled(Z)V

    .line 401
    return-void
.end method

.method static synthetic access$000(Landroid/widget/RadialTimePickerView;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return v0
.end method

.method static synthetic access$002(Landroid/widget/RadialTimePickerView;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # F

    .line 61
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    return p1
.end method

.method static synthetic access$100(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .line 61
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/RadialTimePickerView;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .line 61
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForHour(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getDegreesForMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RadialTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .line 61
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RadialTimePickerView;FFZ)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 61
    invoke-static {p0, p1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/RadialTimePickerView;FF)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/RadialTimePickerView;IZ)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RadialTimePickerView;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/RadialTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;

    .line 61
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/RadialTimePickerView;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/RadialTimePickerView;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v0

    return v0
.end method

.method private animatePicker(ZJ)V
    .locals 5
    .param p1, "hoursToMinutes"    # Z
    .param p2, "duration"    # J

    .line 701
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 702
    .local v0, "target":F
    :goto_0
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 704
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 706
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 710
    :cond_1
    return-void

    .line 713
    :cond_2
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 714
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 715
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 716
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 717
    return-void
.end method

.method private static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "radius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "x"    # [F
    .param p6, "y"    # [F

    .line 880
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 881
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 883
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 884
    sget-object v1, Landroid/widget/RadialTimePickerView;->COS_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p2, v1

    aput v1, p5, v0

    .line 885
    sget-object v1, Landroid/widget/RadialTimePickerView;->SIN_30:[F

    aget v1, v1, v0

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    aput v1, p6, v0

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private calculatePositionsHours()V
    .locals 12

    .line 849
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 852
    .local v0, "numbersRadius":F
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v1, v2

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v1, v2

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v1, v2

    move v4, v0

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 856
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_0

    .line 857
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-int/2addr v1, v3

    .line 858
    .local v1, "innerNumbersRadius":I
    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v5, v3, v2

    int-to-float v6, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v7, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v8, v2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v2, v2, v4

    int-to-float v9, v2

    iget-object v10, p0, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v11, p0, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    invoke-static/range {v5 .. v11}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 861
    .end local v1    # "innerNumbersRadius":I
    :cond_0
    return-void
.end method

.method private calculatePositionsMinutes()V
    .locals 10

    .line 865
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 868
    .local v0, "numbersRadius":F
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v3, v1, v2

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v5, v1

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v6, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    aget v1, v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v8, v1, v2

    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v9, v1, v2

    move v4, v0

    invoke-static/range {v3 .. v9}, Landroid/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 870
    return-void
.end method

.method private drawCenter(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alphaMod"    # F

    .line 782
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 783
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 784
    return-void
.end method

.method private drawCircleBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 720
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 721
    return-void
.end method

.method private drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .line 724
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 725
    .local v0, "hoursAlpha":I
    if-lez v0, :cond_0

    .line 728
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 729
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 730
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 731
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 735
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 736
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 737
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 738
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 740
    :cond_0
    return-void
.end method

.method private drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "hoursAlpha"    # I
    .param p3, "showActivated"    # Z

    move-object/from16 v13, p0

    .line 744
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v14, 0x0

    aget v0, v0, v14

    int-to-float v2, v0

    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v14

    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v14

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v14

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    const/4 v15, 0x1

    if-eqz p3, :cond_0

    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-nez v0, :cond_0

    move v10, v15

    goto :goto_0

    :cond_0
    move v10, v14

    :goto_0
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 749
    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_2

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    iget-object v6, v13, Landroid/widget/RadialTimePickerView;->mInnerTextX:[F

    iget-object v7, v13, Landroid/widget/RadialTimePickerView;->mInnerTextY:[F

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v14

    if-eqz p3, :cond_1

    iget-boolean v0, v13, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v0, :cond_1

    move v10, v15

    goto :goto_1

    :cond_1
    move v10, v14

    :goto_1
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v14

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 754
    :cond_2
    return-void
.end method

.method private drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;
    .param p3, "alphaMod"    # F

    .line 757
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 758
    .local v0, "minutesAlpha":I
    if-lez v0, :cond_0

    .line 761
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 762
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 763
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 764
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 768
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 769
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 770
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 771
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 773
    :cond_0
    return-void
.end method

.method private drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "minutesAlpha"    # I
    .param p3, "showActivated"    # Z

    move-object v13, p0

    .line 776
    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v2, v0

    iget-object v3, v13, Landroid/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v4, v0, v1

    iget-object v5, v13, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextX:[[F

    aget-object v6, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mOuterTextY:[[F

    aget-object v7, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    aget-object v8, v0, v1

    iget-object v0, v13, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v11, v0, v1

    move-object v0, v13

    move-object v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Landroid/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 779
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectorPath"    # Landroid/graphics/Path;

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 792
    move-object/from16 v8, p2

    iget-boolean v1, v0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v9, v1

    .line 793
    .local v9, "hoursIndex":I
    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v10, v1, v9

    .line 794
    .local v10, "hoursInset":I
    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v4, v9, 0x2

    aget v11, v1, v4

    .line 795
    .local v11, "hoursAngleDeg":I
    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v4, v9, 0x2

    aget v1, v1, v4

    rem-int/lit8 v1, v1, 0x1e

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v12, v1

    .line 797
    .local v12, "hoursDotScale":F
    const/4 v13, 0x1

    .line 798
    .local v13, "minutesIndex":I
    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v6, 0x1

    aget v14, v1, v6

    .line 799
    .local v14, "minutesInset":I
    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v15, v1, v6

    .line 800
    .local v15, "minutesAngleDeg":I
    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v1, v1, v6

    rem-int/lit8 v1, v1, 0x1e

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 803
    .local v4, "minutesDotScale":F
    :goto_2
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 804
    .local v1, "selRadius":I
    iget v3, v0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    int-to-float v3, v3

    int-to-float v6, v10

    int-to-float v5, v14

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 805
    invoke-static {v6, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    sub-float v20, v3, v2

    .line 806
    .local v20, "selLength":F
    int-to-float v2, v11

    int-to-float v3, v15

    iget v5, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 807
    invoke-static {v2, v3, v5}, Landroid/util/MathUtils;->lerpDeg(FFF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 808
    .local v5, "selAngleRad":D
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .end local v9    # "hoursIndex":I
    .end local v10    # "hoursInset":I
    .local v21, "hoursIndex":I
    .local v22, "hoursInset":I
    double-to-float v3, v9

    mul-float v3, v3, v20

    add-float v9, v2, v3

    .line 809
    .local v9, "selCenterX":F
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v2, v2

    move/from16 v23, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .end local v11    # "hoursAngleDeg":I
    .local v23, "hoursAngleDeg":I
    double-to-float v3, v10

    mul-float v3, v3, v20

    sub-float v10, v2, v3

    .line 812
    .local v10, "selCenterY":F
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v3, 0x0

    aget-object v11, v2, v3

    .line 813
    .local v11, "paint":Landroid/graphics/Paint;
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 814
    int-to-float v2, v1

    invoke-virtual {v7, v9, v10, v2, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 817
    if-eqz v8, :cond_3

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 819
    int-to-float v2, v1

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v9, v10, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 823
    :cond_3
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    invoke-static {v12, v4, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v19

    .line 824
    .local v19, "dotScale":F
    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-lez v2, :cond_4

    .line 825
    iget-object v2, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 826
    .local v2, "dotPaint":Landroid/graphics/Paint;
    iget v3, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 827
    iget v3, v0, Landroid/widget/RadialTimePickerView;->mSelectorDotRadius:I

    int-to-float v3, v3

    mul-float v3, v3, v19

    invoke-virtual {v7, v9, v10, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 832
    .end local v2    # "dotPaint":Landroid/graphics/Paint;
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    .line 833
    .local v17, "sin":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 834
    .local v24, "cos":D
    int-to-float v2, v1

    sub-float v3, v20, v2

    .line 835
    .local v3, "lineLength":F
    iget v2, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    move/from16 v26, v1

    iget v1, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    .end local v1    # "selRadius":I
    .local v26, "selRadius":I
    move/from16 v27, v4

    move-wide/from16 v28, v5

    int-to-double v4, v1

    .end local v4    # "minutesDotScale":F
    .end local v5    # "selAngleRad":D
    .local v27, "minutesDotScale":F
    .local v28, "selAngleRad":D
    mul-double v4, v4, v17

    double-to-int v1, v4

    add-int v30, v2, v1

    .line 836
    .local v30, "centerX":I
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    iget v2, v0, Landroid/widget/RadialTimePickerView;->mCenterDotRadius:I

    int-to-double v4, v2

    mul-double v4, v4, v24

    double-to-int v2, v4

    sub-int v31, v1, v2

    .line 837
    .local v31, "centerY":I
    float-to-double v1, v3

    mul-double v1, v1, v17

    double-to-int v1, v1

    add-int v1, v30, v1

    int-to-float v6, v1

    .line 838
    .local v6, "linePointX":F
    float-to-double v1, v3

    mul-double v1, v1, v24

    double-to-int v1, v1

    sub-int v1, v31, v1

    int-to-float v5, v1

    .line 841
    .local v5, "linePointY":F
    iget-object v1, v0, Landroid/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    const/4 v2, 0x2

    aget-object v4, v1, v2

    .line 842
    .local v4, "linePaint":Landroid/graphics/Paint;
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 843
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mSelectorStroke:I

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 844
    iget v1, v0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v1

    iget v1, v0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v1, v1

    move/from16 v16, v26

    move/from16 v26, v1

    move-object v1, v7

    .end local v26    # "selRadius":I
    .local v16, "selRadius":I
    move/from16 v32, v3

    move/from16 v3, v26

    .end local v3    # "lineLength":F
    .local v32, "lineLength":F
    move/from16 v26, v27

    move-object/from16 v27, v4

    move v4, v6

    .end local v4    # "linePaint":Landroid/graphics/Paint;
    .local v26, "minutesDotScale":F
    .local v27, "linePaint":Landroid/graphics/Paint;
    move/from16 v33, v5

    .end local v5    # "linePointY":F
    .local v33, "linePointY":F
    move/from16 v34, v6

    move-object/from16 v6, v27

    .end local v6    # "linePointX":F
    .local v34, "linePointX":F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 845
    return-void
.end method

.method private drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "textColor"    # Landroid/content/res/ColorStateList;
    .param p5, "texts"    # [Ljava/lang/String;
    .param p6, "textX"    # [F
    .param p7, "textY"    # [F
    .param p8, "paint"    # Landroid/graphics/Paint;
    .param p9, "alpha"    # I
    .param p10, "showActivated"    # Z
    .param p11, "activatedDegrees"    # I
    .param p12, "activatedOnly"    # Z

    move-object/from16 v0, p8

    .line 895
    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 896
    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 899
    move/from16 v3, p11

    int-to-float v4, v3

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v4, v5

    .line 900
    .local v4, "activatedIndex":F
    float-to-int v5, v4

    .line 901
    .local v5, "activatedFloor":I
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/16 v7, 0xc

    rem-int/2addr v6, v7

    .line 903
    .local v6, "activatedCeil":I
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_4

    .line 904
    if-eq v5, v9, :cond_1

    if-ne v6, v9, :cond_0

    goto :goto_1

    :cond_0
    move v10, v8

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v10, 0x1

    .line 905
    .local v10, "activated":Z
    :goto_2
    if-eqz p12, :cond_2

    if-nez v10, :cond_2

    .line 906
    nop

    .line 903
    move-object v7, p0

    move-object/from16 v13, p4

    move/from16 v8, p9

    move v14, v4

    move-object/from16 v4, p1

    goto :goto_4

    .line 909
    :cond_2
    const/16 v11, 0x8

    .line 910
    if-eqz p10, :cond_3

    if-eqz v10, :cond_3

    const/16 v12, 0x20

    goto :goto_3

    :cond_3
    move v12, v8

    :goto_3
    or-int/2addr v11, v12

    .line 911
    .local v11, "stateMask":I
    invoke-static {v11}, Landroid/util/StateSet;->get(I)[I

    move-result-object v12

    move-object/from16 v13, p4

    invoke-virtual {v13, v12, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v12

    .line 912
    .local v12, "color":I
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 913
    move-object v7, p0

    move/from16 v8, p9

    invoke-direct {v7, v12, v8}, Landroid/widget/RadialTimePickerView;->getMultipliedAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 915
    aget-object v2, p5, v9

    aget v1, p6, v9

    aget v3, p7, v9

    move v14, v4

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 903
    .end local v4    # "activatedIndex":F
    .end local v10    # "activated":Z
    .end local v11    # "stateMask":I
    .end local v12    # "color":I
    .local v14, "activatedIndex":F
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move v4, v14

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p11

    const/16 v7, 0xc

    const/4 v8, 0x0

    goto :goto_0

    .line 917
    .end local v9    # "i":I
    .end local v14    # "activatedIndex":F
    .restart local v4    # "activatedIndex":F
    :cond_4
    move-object v7, p0

    move-object/from16 v13, p4

    move/from16 v8, p9

    move v14, v4

    move-object/from16 v4, p1

    .end local v4    # "activatedIndex":F
    .restart local v14    # "activatedIndex":F
    return-void
.end method

.method private getDegreesForHour(I)I
    .locals 2
    .param p1, "hour"    # I

    .line 547
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    .line 548
    if-lt p1, v1, :cond_1

    .line 549
    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    .line 551
    :cond_0
    if-ne p1, v1, :cond_1

    .line 552
    const/4 p1, 0x0

    .line 554
    :cond_1
    :goto_0
    mul-int/lit8 v0, p1, 0x1e

    return v0
.end method

.method private getDegreesForMinute(I)I
    .locals 1
    .param p1, "minute"    # I

    .line 588
    mul-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getDegreesFromXY(FFZ)I
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "constrainOutside"    # Z

    .line 923
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_0

    .line 924
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 925
    .local v0, "innerBound":I
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .local v1, "outerBound":I
    goto :goto_0

    .line 927
    .end local v0    # "innerBound":I
    .end local v1    # "outerBound":I
    :cond_0
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    .line 928
    .local v0, "index":I
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    .line 929
    .local v1, "center":I
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int v2, v1, v2

    .line 930
    .local v2, "innerBound":I
    iget v3, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v1, v3

    .end local v0    # "index":I
    .end local v1    # "center":I
    move v0, v2

    .line 933
    .end local v2    # "innerBound":I
    .local v0, "innerBound":I
    .local v1, "outerBound":I
    :goto_0
    iget v2, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    float-to-double v2, v2

    .line 934
    .local v2, "dX":D
    iget v4, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    float-to-double v4, v4

    .line 935
    .local v4, "dY":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 936
    .local v6, "distFromCenter":D
    int-to-double v8, v0

    cmpg-double v8, v6, v8

    if-ltz v8, :cond_3

    if-eqz p3, :cond_1

    int-to-double v8, v1

    cmpl-double v8, v6, v8

    if-lez v8, :cond_1

    goto :goto_1

    .line 941
    :cond_1
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    .line 942
    .local v8, "degrees":I
    if-gez v8, :cond_2

    .line 943
    add-int/lit16 v9, v8, 0x168

    return v9

    .line 945
    :cond_2
    return v8

    .line 937
    .end local v8    # "degrees":I
    :cond_3
    :goto_1
    const/4 v8, -0x1

    return v8
.end method

.method private getHourForDegrees(IZ)I
    .locals 3
    .param p1, "degrees"    # I
    .param p2, "innerCircle"    # Z

    .line 525
    div-int/lit8 v0, p1, 0x1e

    rem-int/lit8 v0, v0, 0xc

    .line 526
    .local v0, "hour":I
    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v1, :cond_1

    .line 529
    if-nez p2, :cond_0

    if-nez v0, :cond_0

    .line 531
    const/16 v0, 0xc

    goto :goto_0

    .line 532
    :cond_0
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 534
    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 536
    :cond_1
    iget v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 537
    add-int/lit8 v0, v0, 0xc

    .line 539
    :cond_2
    :goto_0
    return v0
.end method

.method private getInnerCircleForHour(I)Z
    .locals 1
    .param p1, "hour"    # I

    .line 561
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getInnerCircleFromXY(FF)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 950
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-eqz v0, :cond_1

    .line 951
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v2, v0

    .line 952
    .local v2, "dX":D
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    float-to-double v4, v0

    .line 953
    .local v4, "dY":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 954
    .local v6, "distFromCenter":D
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 956
    .end local v2    # "dX":D
    .end local v4    # "dY":D
    .end local v6    # "distFromCenter":D
    :cond_1
    return v1
.end method

.method private getMinuteForDegrees(I)I
    .locals 1
    .param p1, "degrees"    # I

    .line 584
    div-int/lit8 v0, p1, 0x6

    return v0
.end method

.method private getMultipliedAlpha(II)I
    .locals 6
    .param p1, "argb"    # I
    .param p2, "alpha"    # I

    .line 787
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleTouchInput(FFZZ)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "autoAdvance"    # Z

    .line 996
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    move-result v0

    .line 997
    .local v0, "isOnInnerCircle":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v2

    .line 998
    .local v2, "degrees":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 999
    return v1

    .line 1003
    :cond_0
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const-wide/16 v4, 0x3c

    invoke-direct {p0, v3, v4, v5}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    .line 1009
    iget-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 1010
    invoke-static {v2, v1}, Landroid/widget/RadialTimePickerView;->snapOnly30s(II)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    .line 1011
    .local v3, "snapDegrees":I
    iget-boolean v5, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-ne v5, v0, :cond_2

    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v1

    if-eq v5, v3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    .line 1013
    .local v5, "valueChanged":Z
    :goto_1
    iput-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 1014
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v1

    .line 1015
    const/4 v6, 0x0

    .line 1016
    .local v6, "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v3

    .line 1017
    .local v3, "newValue":I
    goto :goto_3

    .line 1018
    .end local v3    # "newValue":I
    .end local v5    # "valueChanged":Z
    .end local v6    # "type":I
    :cond_3
    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->snapPrefer30s(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    .line 1019
    .local v3, "snapDegrees":I
    iget-object v5, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aget v5, v5, v4

    if-eq v5, v3, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    .line 1020
    .restart local v5    # "valueChanged":Z
    :goto_2
    iget-object v6, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    aput v3, v6, v4

    .line 1021
    const/4 v6, 0x1

    .line 1022
    .restart local v6    # "type":I
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v3

    .line 1025
    .local v3, "newValue":I
    :goto_3
    if-nez v5, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_5

    goto :goto_4

    .line 1039
    :cond_5
    return v1

    .line 1027
    :cond_6
    :goto_4
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v1, :cond_7

    .line 1028
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v1, v6, v3, p4}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 1032
    :cond_7
    if-nez v5, :cond_8

    if-eqz p3, :cond_9

    .line 1033
    :cond_8
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/RadialTimePickerView;->performHapticFeedback(I)Z

    .line 1034
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1036
    :cond_9
    return v4
.end method

.method private initData()V
    .locals 1

    .line 633
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 635
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    goto :goto_0

    .line 637
    :cond_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 638
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 641
    :goto_0
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 642
    return-void
.end method

.method private initHoursAndMinutesText()V
    .locals 7

    .line 624
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 625
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 626
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    const-string v3, "%02d"

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 627
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Landroid/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 628
    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    const-string v3, "%02d"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Landroid/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static preparePrefer30sMap()V
    .locals 5

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "snappedOutputDegrees":I
    const/4 v1, 0x1

    .line 247
    .local v1, "count":I
    const/16 v2, 0x8

    .line 249
    .local v2, "expectedCount":I
    const/4 v3, 0x0

    .local v3, "degrees":I
    :goto_0
    const/16 v4, 0x169

    if-ge v3, v4, :cond_3

    .line 251
    sget-object v4, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aput v0, v4, v3

    .line 254
    if-ne v1, v2, :cond_2

    .line 255
    add-int/lit8 v0, v0, 0x6

    .line 256
    const/16 v4, 0x168

    if-ne v0, v4, :cond_0

    .line 257
    const/4 v2, 0x7

    goto :goto_1

    .line 258
    :cond_0
    rem-int/lit8 v4, v0, 0x1e

    if-nez v4, :cond_1

    .line 259
    const/16 v2, 0xe

    goto :goto_1

    .line 261
    :cond_1
    const/4 v2, 0x4

    .line 263
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    .line 265
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 249
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v3    # "degrees":I
    :cond_3
    return-void
.end method

.method private setCurrentHourInternal(IZZ)V
    .locals 5
    .param p1, "hour"    # I
    .param p2, "callback"    # Z
    .param p3, "autoAdvance"    # Z

    .line 494
    rem-int/lit8 v0, p1, 0xc

    mul-int/lit8 v0, v0, 0x1e

    .line 495
    .local v0, "degrees":I
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 498
    if-eqz p1, :cond_1

    rem-int/lit8 v1, p1, 0x18

    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 499
    .local v1, "amOrPm":I
    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->getInnerCircleForHour(I)Z

    move-result v3

    .line 500
    .local v3, "isOnInnerCircle":Z
    iget v4, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-ne v4, v1, :cond_2

    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    if-eq v4, v3, :cond_3

    .line 501
    :cond_2
    iput v1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 502
    iput-boolean v3, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 504
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 505
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 508
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 510
    if-eqz p2, :cond_4

    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v4, :cond_4

    .line 511
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    invoke-interface {v4, v2, p1, p3}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 513
    :cond_4
    return-void
.end method

.method private setCurrentMinuteInternal(IZ)V
    .locals 3
    .param p1, "minute"    # I
    .param p2, "callback"    # Z

    .line 569
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    rem-int/lit8 v1, p1, 0x3c

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 571
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 573
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/widget/RadialTimePickerView$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 576
    :cond_0
    return-void
.end method

.method private showPicker(ZZ)V
    .locals 2
    .param p1, "hours"    # Z
    .param p2, "animate"    # Z

    .line 678
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    if-ne v0, p1, :cond_0

    .line 679
    return-void

    .line 682
    :cond_0
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    .line 684
    if-eqz p2, :cond_1

    .line 685
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->animatePicker(ZJ)V

    goto :goto_1

    .line 688
    :cond_1
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 692
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 695
    :goto_1
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 696
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 697
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 698
    return-void
.end method

.method private static snapOnly30s(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .line 294
    const/16 v0, 0x1e

    .line 295
    .local v0, "stepSize":I
    div-int/lit8 v1, p0, 0x1e

    mul-int/lit8 v1, v1, 0x1e

    .line 296
    .local v1, "floor":I
    add-int/lit8 v2, v1, 0x1e

    .line 297
    .local v2, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 298
    move p0, v2

    goto :goto_0

    .line 299
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 300
    if-ne p0, v1, :cond_1

    .line 301
    add-int/lit8 v1, v1, -0x1e

    .line 303
    :cond_1
    move p0, v1

    goto :goto_0

    .line 305
    :cond_2
    sub-int v3, p0, v1

    sub-int v4, v2, p0

    if-ge v3, v4, :cond_3

    .line 306
    move p0, v1

    goto :goto_0

    .line 308
    :cond_3
    move p0, v2

    .line 311
    :goto_0
    return p0
.end method

.method private static snapPrefer30s(I)I
    .locals 1
    .param p0, "degrees"    # I

    .line 278
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    if-nez v0, :cond_0

    .line 279
    const/4 v0, -0x1

    return v0

    .line 281
    :cond_0
    sget-object v0, Landroid/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 404
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 405
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 408
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 410
    .local v2, "numbersTextColor":Landroid/content/res/ColorStateList;
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 412
    .local v3, "numbersInnerTextColor":Landroid/content/res/ColorStateList;
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const v5, -0xff01

    if-nez v2, :cond_0

    .line 413
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 414
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v6, 0x2

    if-nez v3, :cond_1

    .line 415
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    aput-object v8, v4, v6

    .line 416
    iget-object v4, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    const/4 v6, 0x1

    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    aput-object v8, v4, v6

    .line 419
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 422
    .local v4, "selectorColors":Landroid/content/res/ColorStateList;
    const/16 v6, 0x28

    if-eqz v4, :cond_2

    .line 423
    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v5

    .line 425
    .local v5, "stateSetEnabledActivated":[I
    invoke-virtual {v4, v5, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    .line 427
    .local v5, "selectorActivatedColor":I
    goto :goto_2

    .line 428
    .end local v5    # "selectorActivatedColor":I
    :cond_2
    nop

    .line 431
    .restart local v5    # "selectorActivatedColor":I
    :goto_2
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    invoke-static {v6}, Landroid/util/StateSet;->get(I)[I

    move-result-object v6

    .line 436
    .local v6, "stateSetActivated":[I
    iput v5, p0, Landroid/widget/RadialTimePickerView;->mSelectorColor:I

    .line 437
    iget-object v8, p0, Landroid/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    invoke-virtual {v8, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    iput v7, p0, Landroid/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 439
    iget-object v7, p0, Landroid/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    const/4 v8, 0x4

    const v9, 0x1060164

    .line 440
    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 439
    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 443
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1045
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    const/4 v0, 0x1

    return v0

    .line 1048
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAmOrPm()I
    .locals 1

    .line 611
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .line 521
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-boolean v1, p0, Landroid/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentItemShowing()I
    .locals 1

    .line 469
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mShowHours:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentMinute()I
    .locals 2

    .line 580
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mSelectionDegrees:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView;->getMinuteForDegrees(I)I

    move-result v0

    return v0
.end method

.method public initialize(IIZ)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .line 446
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eq v0, p3, :cond_0

    .line 447
    iput-boolean p3, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 448
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->initData()V

    .line 451
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 452
    invoke-direct {p0, p2, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 453
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 666
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 668
    .local v0, "alphaMod":F
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView;->drawCircleBackground(Landroid/graphics/Canvas;)V

    .line 670
    iget-object v1, p0, Landroid/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 671
    .local v1, "selectorPath":Landroid/graphics/Path;
    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView;->drawSelector(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 672
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawHours(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 673
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/RadialTimePickerView;->drawMinutes(Landroid/graphics/Canvas;Landroid/graphics/Path;F)V

    .line 674
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->drawCenter(Landroid/graphics/Canvas;F)V

    .line 675
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 646
    if-nez p1, :cond_0

    .line 647
    return-void

    .line 650
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    .line 651
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    .line 652
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mXCenter:I

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mYCenter:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    .line 654
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v1

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 655
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/RadialTimePickerView;->mSelectorRadius:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 656
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mCircleRadius:I

    iget-object v2, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v2, v2, v3

    iget-object v3, p0, Landroid/widget/RadialTimePickerView;->mTextInset:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 658
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsHours()V

    .line 659
    invoke-direct {p0}, Landroid/widget/RadialTimePickerView;->calculatePositionsMinutes()V

    .line 661
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 662
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1058
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    const/4 v0, 0x0

    return-object v0

    .line 1061
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    move-result v0

    .line 1062
    .local v0, "degrees":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1063
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    .line 1065
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 963
    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 964
    return v1

    .line 967
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 968
    .local v0, "action":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_4

    .line 971
    :cond_1
    const/4 v2, 0x0

    .line 972
    .local v2, "forceSelection":Z
    const/4 v3, 0x0

    .line 974
    .local v3, "autoAdvance":Z
    if-nez v0, :cond_2

    .line 976
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    goto :goto_0

    .line 977
    :cond_2
    if-ne v0, v1, :cond_3

    .line 978
    const/4 v3, 0x1

    .line 982
    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    if-nez v4, :cond_3

    .line 983
    const/4 v2, 0x1

    .line 987
    :cond_3
    :goto_0
    iget-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 987
    invoke-direct {p0, v5, v6, v2, v3}, Landroid/widget/RadialTimePickerView;->handleTouchInput(FFZZ)Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Landroid/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 991
    .end local v2    # "forceSelection":Z
    .end local v3    # "autoAdvance":Z
    :cond_4
    return v1
.end method

.method public setAmOrPm(I)Z
    .locals 1
    .param p1, "amOrPm"    # I

    .line 600
    iget v0, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/RadialTimePickerView;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    iput p1, p0, Landroid/widget/RadialTimePickerView;->mAmOrPm:I

    .line 605
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 606
    iget-object v0, p0, Landroid/widget/RadialTimePickerView;->mTouchHelper:Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->invalidateRoot()V

    .line 607
    const/4 v0, 0x1

    return v0

    .line 601
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentHour(I)V
    .locals 2
    .param p1, "hour"    # I

    .line 482
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RadialTimePickerView;->setCurrentHourInternal(IZZ)V

    .line 483
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "animate"    # Z

    .line 456
    packed-switch p1, :pswitch_data_0

    .line 464
    const-string v0, "RadialTimePickerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClockView does not support showing item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showMinutes(Z)V

    .line 462
    goto :goto_0

    .line 458
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/widget/RadialTimePickerView;->showHours(Z)V

    .line 459
    nop

    .line 466
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .line 565
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 566
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0
    .param p1, "inputEnabled"    # Z

    .line 1052
    iput-boolean p1, p0, Landroid/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 1053
    invoke-virtual {p0}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 1054
    return-void
.end method

.method public setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 473
    iput-object p1, p0, Landroid/widget/RadialTimePickerView;->mListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 474
    return-void
.end method

.method public showHours(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 615
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 616
    return-void
.end method

.method public showMinutes(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView;->showPicker(ZZ)V

    .line 620
    return-void
.end method
